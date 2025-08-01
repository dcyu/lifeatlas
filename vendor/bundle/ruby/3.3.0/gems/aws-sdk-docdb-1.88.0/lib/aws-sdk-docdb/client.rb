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
require 'aws-sdk-core/plugins/protocols/query'
require 'aws-sdk-docdb/plugins/cross_region_copying'

module Aws::DocDB
  # An API client for DocDB.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DocDB::Client.new(
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

    @identifier = :docdb

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
    add_plugin(Aws::Plugins::Protocols::Query)
    add_plugin(Aws::DocDB::Plugins::CrossRegionCopying)
    add_plugin(Aws::DocDB::Plugins::Endpoints)

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
    #   @option options [Aws::DocDB::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::DocDB::EndpointParameters`.
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

    # Adds a source identifier to an existing event notification
    # subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the Amazon DocumentDB event notification subscription that
    #   you want to add a source identifier to.
    #
    # @option params [required, String] :source_identifier
    #   The identifier of the event source to be added:
    #
    #   * If the source type is an instance, a `DBInstanceIdentifier` must be
    #     provided.
    #
    #   * If the source type is a security group, a `DBSecurityGroupName` must
    #     be provided.
    #
    #   * If the source type is a parameter group, a `DBParameterGroupName`
    #     must be provided.
    #
    #   * If the source type is a snapshot, a `DBSnapshotIdentifier` must be
    #     provided.
    #
    # @return [Types::AddSourceIdentifierToSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddSourceIdentifierToSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_source_identifier_to_subscription({
    #     subscription_name: "String", # required
    #     source_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/AddSourceIdentifierToSubscription AWS API Documentation
    #
    # @overload add_source_identifier_to_subscription(params = {})
    # @param [Hash] params ({})
    def add_source_identifier_to_subscription(params = {}, options = {})
      req = build_request(:add_source_identifier_to_subscription, params)
      req.send_request(options)
    end

    # Adds metadata tags to an Amazon DocumentDB resource. You can use these
    # tags with cost allocation reporting to track costs that are associated
    # with Amazon DocumentDB resources or in a `Condition` statement in an
    # Identity and Access Management (IAM) policy for Amazon DocumentDB.
    #
    # @option params [required, String] :resource_name
    #   The Amazon DocumentDB resource that the tags are added to. This value
    #   is an Amazon Resource Name .
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the Amazon DocumentDB resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_name: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Applies a pending maintenance action to a resource (for example, to an
    # Amazon DocumentDB instance).
    #
    # @option params [required, String] :resource_identifier
    #   The Amazon Resource Name (ARN) of the resource that the pending
    #   maintenance action applies to.
    #
    # @option params [required, String] :apply_action
    #   The pending maintenance action to apply to this resource.
    #
    #   Valid values: `system-update`, `db-upgrade`
    #
    # @option params [required, String] :opt_in_type
    #   A value that specifies the type of opt-in request or undoes an opt-in
    #   request. An opt-in request of type `immediate` can't be undone.
    #
    #   Valid values:
    #
    #   * `immediate` - Apply the maintenance action immediately.
    #
    #   * `next-maintenance` - Apply the maintenance action during the next
    #     maintenance window for the resource.
    #
    #   * `undo-opt-in` - Cancel any existing `next-maintenance` opt-in
    #     requests.
    #
    # @return [Types::ApplyPendingMaintenanceActionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplyPendingMaintenanceActionResult#resource_pending_maintenance_actions #resource_pending_maintenance_actions} => Types::ResourcePendingMaintenanceActions
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_pending_maintenance_action({
    #     resource_identifier: "String", # required
    #     apply_action: "String", # required
    #     opt_in_type: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_pending_maintenance_actions.resource_identifier #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details #=> Array
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].action #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.resource_pending_maintenance_actions.pending_maintenance_action_details[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ApplyPendingMaintenanceAction AWS API Documentation
    #
    # @overload apply_pending_maintenance_action(params = {})
    # @param [Hash] params ({})
    def apply_pending_maintenance_action(params = {}, options = {})
      req = build_request(:apply_pending_maintenance_action, params)
      req.send_request(options)
    end

    # Copies the specified cluster parameter group.
    #
    # @option params [required, String] :source_db_cluster_parameter_group_identifier
    #   The identifier or Amazon Resource Name (ARN) for the source cluster
    #   parameter group.
    #
    #   Constraints:
    #
    #   * Must specify a valid cluster parameter group.
    #
    #   * If the source cluster parameter group is in the same Amazon Web
    #     Services Region as the copy, specify a valid parameter group
    #     identifier; for example, `my-db-cluster-param-group`, or a valid
    #     ARN.
    #
    #   * If the source parameter group is in a different Amazon Web Services
    #     Region than the copy, specify a valid cluster parameter group ARN;
    #     for example,
    #     `arn:aws:rds:us-east-1:123456789012:sample-cluster:sample-parameter-group`.
    #
    # @option params [required, String] :target_db_cluster_parameter_group_identifier
    #   The identifier for the copied cluster parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank.
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-param-group1`
    #
    # @option params [required, String] :target_db_cluster_parameter_group_description
    #   A description for the copied cluster parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags that are to be assigned to the parameter group.
    #
    # @return [Types::CopyDBClusterParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBClusterParameterGroupResult#db_cluster_parameter_group #db_cluster_parameter_group} => Types::DBClusterParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_cluster_parameter_group({
    #     source_db_cluster_parameter_group_identifier: "String", # required
    #     target_db_cluster_parameter_group_identifier: "String", # required
    #     target_db_cluster_parameter_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group.db_cluster_parameter_group_name #=> String
    #   resp.db_cluster_parameter_group.db_parameter_group_family #=> String
    #   resp.db_cluster_parameter_group.description #=> String
    #   resp.db_cluster_parameter_group.db_cluster_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CopyDBClusterParameterGroup AWS API Documentation
    #
    # @overload copy_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def copy_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:copy_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Copies a snapshot of a cluster.
    #
    # To copy a cluster snapshot from a shared manual cluster snapshot,
    # `SourceDBClusterSnapshotIdentifier` must be the Amazon Resource Name
    # (ARN) of the shared cluster snapshot. You can only copy a shared DB
    # cluster snapshot, whether encrypted or not, in the same Amazon Web
    # Services Region.
    #
    # To cancel the copy operation after it is in progress, delete the
    # target cluster snapshot identified by
    # `TargetDBClusterSnapshotIdentifier` while that cluster snapshot is in
    # the *copying* status.
    #
    # @option params [required, String] :source_db_cluster_snapshot_identifier
    #   The identifier of the cluster snapshot to copy. This parameter is not
    #   case sensitive.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the *available* state.
    #
    #   * If the source snapshot is in the same Amazon Web Services Region as
    #     the copy, specify a valid snapshot identifier.
    #
    #   * If the source snapshot is in a different Amazon Web Services Region
    #     than the copy, specify a valid cluster snapshot ARN.
    #
    #   Example: `my-cluster-snapshot1`
    #
    # @option params [required, String] :target_db_cluster_snapshot_identifier
    #   The identifier of the new cluster snapshot to create from the source
    #   cluster snapshot. This parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot2`
    #
    # @option params [String] :kms_key_id
    #   The KMS key ID for an encrypted cluster snapshot. The KMS key ID is
    #   the Amazon Resource Name (ARN), KMS key identifier, or the KMS key
    #   alias for the KMS encryption key.
    #
    #   If you copy an encrypted cluster snapshot from your Amazon Web
    #   Services account, you can specify a value for `KmsKeyId` to encrypt
    #   the copy with a new KMS encryption key. If you don't specify a value
    #   for `KmsKeyId`, then the copy of the cluster snapshot is encrypted
    #   with the same KMS key as the source cluster snapshot.
    #
    #   If you copy an encrypted cluster snapshot that is shared from another
    #   Amazon Web Services account, then you must specify a value for
    #   `KmsKeyId`.
    #
    #   To copy an encrypted cluster snapshot to another Amazon Web Services
    #   Region, set `KmsKeyId` to the KMS key ID that you want to use to
    #   encrypt the copy of the cluster snapshot in the destination Region.
    #   KMS encryption keys are specific to the Amazon Web Services Region
    #   that they are created in, and you can't use encryption keys from one
    #   Amazon Web Services Region in another Amazon Web Services Region.
    #
    #   If you copy an unencrypted cluster snapshot and specify a value for
    #   the `KmsKeyId` parameter, an error is returned.
    #
    # @option params [String] :pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for
    #   the`CopyDBClusterSnapshot` API action in the Amazon Web Services
    #   Region that contains the source cluster snapshot to copy. You must use
    #   the `PreSignedUrl` parameter when copying a cluster snapshot from
    #   another Amazon Web Services Region.
    #
    #   If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a pre-signed URL that is a valid request for the
    #   operation that can be executed in the source Amazon Web Services
    #   Region.
    #
    #   The presigned URL must be a valid request for the
    #   `CopyDBClusterSnapshot` API action that can be executed in the source
    #   Amazon Web Services Region that contains the cluster snapshot to be
    #   copied. The presigned URL request must contain the following parameter
    #   values:
    #
    #   * `SourceRegion` - The ID of the region that contains the snapshot to
    #     be copied.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The identifier for the the
    #     encrypted cluster snapshot to be copied. This identifier must be in
    #     the Amazon Resource Name (ARN) format for the source Amazon Web
    #     Services Region. For example, if you are copying an encrypted
    #     cluster snapshot from the us-east-1 Amazon Web Services Region, then
    #     your `SourceDBClusterSnapshotIdentifier` looks something like the
    #     following:
    #     `arn:aws:rds:us-east-1:12345678012:sample-cluster:sample-cluster-snapshot`.
    #
    #   * `TargetDBClusterSnapshotIdentifier` - The identifier for the new
    #     cluster snapshot to be created. This parameter isn't case
    #     sensitive.
    #
    # @option params [Boolean] :copy_tags
    #   Set to `true` to copy all tags from the source cluster snapshot to the
    #   target cluster snapshot, and otherwise `false`. The default is
    #   `false`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the cluster snapshot.
    #
    # @option params [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #
    # @return [Types::CopyDBClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyDBClusterSnapshotResult#db_cluster_snapshot #db_cluster_snapshot} => Types::DBClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_db_cluster_snapshot({
    #     source_db_cluster_snapshot_identifier: "String", # required
    #     target_db_cluster_snapshot_identifier: "String", # required
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     copy_tags: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     source_region: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot.availability_zones #=> Array
    #   resp.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.db_cluster_snapshot.engine #=> String
    #   resp.db_cluster_snapshot.status #=> String
    #   resp.db_cluster_snapshot.port #=> Integer
    #   resp.db_cluster_snapshot.vpc_id #=> String
    #   resp.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.db_cluster_snapshot.master_username #=> String
    #   resp.db_cluster_snapshot.engine_version #=> String
    #   resp.db_cluster_snapshot.snapshot_type #=> String
    #   resp.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.db_cluster_snapshot.kms_key_id #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.storage_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CopyDBClusterSnapshot AWS API Documentation
    #
    # @overload copy_db_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def copy_db_cluster_snapshot(params = {}, options = {})
      req = build_request(:copy_db_cluster_snapshot, params)
      req.send_request(options)
    end

    # Creates a new Amazon DocumentDB cluster.
    #
    # @option params [Array<String>] :availability_zones
    #   A list of Amazon EC2 Availability Zones that instances in the cluster
    #   can be created in.
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. You must
    #   specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35.
    #
    #   ^
    #
    # @option params [required, String] :db_cluster_identifier
    #   The cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster`
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   The name of the cluster parameter group to associate with this
    #   cluster.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this cluster.
    #
    # @option params [String] :db_subnet_group_name
    #   A subnet group to associate with this cluster.
    #
    #   Constraints: Must match the name of an existing `DBSubnetGroup`. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [required, String] :engine
    #   The name of the database engine to be used for this cluster.
    #
    #   Valid values: `docdb`
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to use. The
    #   `--engine-version` will default to the latest major engine version.
    #   For production workloads, we recommend explicitly declaring this
    #   parameter with the intended major engine version.
    #
    # @option params [Integer] :port
    #   The port number on which the instances in the cluster accept
    #   connections.
    #
    # @option params [String] :master_username
    #   The name of the master user for the cluster.
    #
    #   Constraints:
    #
    #   * Must be from 1 to 63 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #
    # @option params [String] :master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except forward slash (/), double quote
    #   ("), or the "at" symbol (@).
    #
    #   Constraints: Must contain from 8 to 100 characters.
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the cluster.
    #
    # @option params [Boolean] :storage_encrypted
    #   Specifies whether the cluster is encrypted.
    #
    # @option params [String] :kms_key_id
    #   The KMS key identifier for an encrypted cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a cluster using the same Amazon
    #   Web Services account that owns the KMS encryption key that is used to
    #   encrypt the new cluster, you can use the KMS key alias instead of the
    #   ARN for the KMS encryption key.
    #
    #   If an encryption key is not specified in `KmsKeyId`:
    #
    #   * If the `StorageEncrypted` parameter is `true`, Amazon DocumentDB
    #     uses your default encryption key.
    #
    #   ^
    #
    #   KMS creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Regions.
    #
    # @option params [String] :pre_signed_url
    #   Not currently supported.
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   A list of log types that need to be enabled for exporting to Amazon
    #   CloudWatch Logs. You can enable audit logs or profiler logs. For more
    #   information, see [ Auditing Amazon DocumentDB Events][1] and [
    #   Profiling Amazon DocumentDB Operations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html
    #   [2]: https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html
    #
    # @option params [Boolean] :deletion_protection
    #   Specifies whether this cluster can be deleted. If `DeletionProtection`
    #   is enabled, the cluster cannot be deleted unless it is modified and
    #   `DeletionProtection` is disabled. `DeletionProtection` protects
    #   clusters from being accidentally deleted.
    #
    # @option params [String] :global_cluster_identifier
    #   The cluster identifier of the new global cluster.
    #
    # @option params [String] :storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   For information on storage types for Amazon DocumentDB clusters, see
    #   Cluster storage configurations in the *Amazon DocumentDB Developer
    #   Guide*.
    #
    #   Valid values for storage type - `standard | iopt1`
    #
    #   Default value is `standard `
    #
    #   <note markdown="1"> When you create a DocumentDB DB cluster with the storage type set to
    #   `iopt1`, the storage type is returned in the response. The storage
    #   type isn't returned when you set it to `standard`.
    #
    #    </note>
    #
    # @option params [Boolean] :manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager.
    #
    #   Constraint: You can't manage the master user password with Amazon Web
    #   Services Secrets Manager if `MasterUserPassword` is specified.
    #
    # @option params [String] :master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that is
    #   automatically generated and managed in Amazon Web Services Secrets
    #   Manager. This setting is valid only if the master user password is
    #   managed by Amazon DocumentDB in Amazon Web Services Secrets Manager
    #   for the DB cluster.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   If you don't specify `MasterUserSecretKmsKeyId`, then the
    #   `aws/secretsmanager` KMS key is used to encrypt the secret. If the
    #   secret is in a different Amazon Web Services account, then you can't
    #   use the `aws/secretsmanager` KMS key to encrypt the secret, and you
    #   must use a customer managed KMS key.
    #
    #   There is a default KMS key for your Amazon Web Services account. Your
    #   Amazon Web Services account has a different default KMS key for each
    #   Amazon Web Services Region.
    #
    # @option params [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    #
    # @return [Types::CreateDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster({
    #     availability_zones: ["String"],
    #     backup_retention_period: 1,
    #     db_cluster_identifier: "String", # required
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     db_subnet_group_name: "String",
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     master_username: "String",
    #     master_user_password: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     enable_cloudwatch_logs_exports: ["String"],
    #     deletion_protection: false,
    #     global_cluster_identifier: "GlobalClusterIdentifier",
    #     storage_type: "String",
    #     manage_master_user_password: false,
    #     master_user_secret_kms_key_id: "String",
    #     source_region: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.deletion_protection #=> Boolean
    #   resp.db_cluster.storage_type #=> String
    #   resp.db_cluster.master_user_secret.secret_arn #=> String
    #   resp.db_cluster.master_user_secret.secret_status #=> String
    #   resp.db_cluster.master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBCluster AWS API Documentation
    #
    # @overload create_db_cluster(params = {})
    # @param [Hash] params ({})
    def create_db_cluster(params = {}, options = {})
      req = build_request(:create_db_cluster, params)
      req.send_request(options)
    end

    # Creates a new cluster parameter group.
    #
    # Parameters in a cluster parameter group apply to all of the instances
    # in a cluster.
    #
    # A cluster parameter group is initially created with the default
    # parameters for the database engine used by instances in the cluster.
    # In Amazon DocumentDB, you cannot make modifications directly to the
    # `default.docdb3.6` cluster parameter group. If your Amazon DocumentDB
    # cluster is using the default cluster parameter group and you want to
    # modify a value in it, you must first [ create a new parameter
    # group][1] or [ copy an existing parameter group][2], modify it, and
    # then apply the modified parameter group to your cluster. For the new
    # cluster parameter group and associated settings to take effect, you
    # must then reboot the instances in the cluster without failover. For
    # more information, see [ Modifying Amazon DocumentDB Cluster Parameter
    # Groups][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html
    # [2]: https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html
    # [3]: https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of the cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must not match the name of an existing `DBClusterParameterGroup`.
    #
    #   ^
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #
    # @option params [required, String] :db_parameter_group_family
    #   The cluster parameter group family name.
    #
    # @option params [required, String] :description
    #   The description for the cluster parameter group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the cluster parameter group.
    #
    # @return [Types::CreateDBClusterParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBClusterParameterGroupResult#db_cluster_parameter_group #db_cluster_parameter_group} => Types::DBClusterParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #     db_parameter_group_family: "String", # required
    #     description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group.db_cluster_parameter_group_name #=> String
    #   resp.db_cluster_parameter_group.db_parameter_group_family #=> String
    #   resp.db_cluster_parameter_group.description #=> String
    #   resp.db_cluster_parameter_group.db_cluster_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterParameterGroup AWS API Documentation
    #
    # @overload create_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:create_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Creates a snapshot of a cluster.
    #
    # @option params [required, String] :db_cluster_snapshot_identifier
    #   The identifier of the cluster snapshot. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot1`
    #
    # @option params [required, String] :db_cluster_identifier
    #   The identifier of the cluster to create a snapshot for. This parameter
    #   is not case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #
    #   Example: `my-cluster`
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the cluster snapshot.
    #
    # @return [Types::CreateDBClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBClusterSnapshotResult#db_cluster_snapshot #db_cluster_snapshot} => Types::DBClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_cluster_snapshot({
    #     db_cluster_snapshot_identifier: "String", # required
    #     db_cluster_identifier: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot.availability_zones #=> Array
    #   resp.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.db_cluster_snapshot.engine #=> String
    #   resp.db_cluster_snapshot.status #=> String
    #   resp.db_cluster_snapshot.port #=> Integer
    #   resp.db_cluster_snapshot.vpc_id #=> String
    #   resp.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.db_cluster_snapshot.master_username #=> String
    #   resp.db_cluster_snapshot.engine_version #=> String
    #   resp.db_cluster_snapshot.snapshot_type #=> String
    #   resp.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.db_cluster_snapshot.kms_key_id #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.storage_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterSnapshot AWS API Documentation
    #
    # @overload create_db_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def create_db_cluster_snapshot(params = {}, options = {})
      req = build_request(:create_db_cluster_snapshot, params)
      req.send_request(options)
    end

    # Creates a new instance.
    #
    # @option params [required, String] :db_instance_identifier
    #   The instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #
    # @option params [required, String] :db_instance_class
    #   The compute and memory capacity of the instance; for example,
    #   `db.r5.large`.
    #
    # @option params [required, String] :engine
    #   The name of the database engine to be used for this instance.
    #
    #   Valid value: `docdb`
    #
    # @option params [String] :availability_zone
    #   The Amazon EC2 Availability Zone that the instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   Amazon Web Services Region.
    #
    #   Example: `us-east-1d`
    #
    # @option params [String] :preferred_maintenance_window
    #   The time range each week during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB
    #   does not perform minor version upgrades regardless of the value set.
    #
    #   Default: `false`
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the instance. You can assign up to 10 tags
    #   to an instance.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The identifier of the cluster that the instance will belong to.
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy tags from the DB instance to
    #   snapshots of the DB instance. By default, tags are not copied.
    #
    # @option params [Integer] :promotion_tier
    #   A value that specifies the order in which an Amazon DocumentDB replica
    #   is promoted to the primary instance after a failure of the existing
    #   primary instance.
    #
    #   Default: 1
    #
    #   Valid values: 0-15
    #
    # @option params [Boolean] :enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for the
    #   DB Instance. For more information, see [Using Amazon Performance
    #   Insights][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html
    #
    # @option params [String] :performance_insights_kms_key_id
    #   The KMS key identifier for encryption of Performance Insights data.
    #
    #   The KMS key identifier is the key ARN, key ID, alias ARN, or alias
    #   name for the KMS key.
    #
    #   If you do not specify a value for PerformanceInsightsKMSKeyId, then
    #   Amazon DocumentDB uses your default KMS key. There is a default KMS
    #   key for your Amazon Web Services account. Your Amazon Web Services
    #   account has a different default KMS key for each Amazon Web Services
    #   region.
    #
    # @option params [String] :ca_certificate_identifier
    #   The CA certificate identifier to use for the DB instance's server
    #   certificate.
    #
    #   For more information, see [Updating Your Amazon DocumentDB TLS
    #   Certificates][1] and [ Encrypting Data in Transit][2] in the *Amazon
    #   DocumentDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html
    #   [2]: https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html
    #
    # @return [Types::CreateDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_instance({
    #     db_instance_identifier: "String", # required
    #     db_instance_class: "String", # required
    #     engine: "String", # required
    #     availability_zone: "String",
    #     preferred_maintenance_window: "String",
    #     auto_minor_version_upgrade: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     db_cluster_identifier: "String", # required
    #     copy_tags_to_snapshot: false,
    #     promotion_tier: 1,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     ca_certificate_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_instance.db_instance_identifier #=> String
    #   resp.db_instance.db_instance_class #=> String
    #   resp.db_instance.engine #=> String
    #   resp.db_instance.db_instance_status #=> String
    #   resp.db_instance.endpoint.address #=> String
    #   resp.db_instance.endpoint.port #=> Integer
    #   resp.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.db_instance.instance_create_time #=> Time
    #   resp.db_instance.preferred_backup_window #=> String
    #   resp.db_instance.backup_retention_period #=> Integer
    #   resp.db_instance.vpc_security_groups #=> Array
    #   resp.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instance.vpc_security_groups[0].status #=> String
    #   resp.db_instance.availability_zone #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.db_instance.db_subnet_group.subnets #=> Array
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instance.preferred_maintenance_window #=> String
    #   resp.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.db_instance.pending_modified_values.port #=> Integer
    #   resp.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.db_instance.pending_modified_values.engine_version #=> String
    #   resp.db_instance.pending_modified_values.license_model #=> String
    #   resp.db_instance.pending_modified_values.iops #=> Integer
    #   resp.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instance.pending_modified_values.storage_type #=> String
    #   resp.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instance.latest_restorable_time #=> Time
    #   resp.db_instance.engine_version #=> String
    #   resp.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.db_instance.publicly_accessible #=> Boolean
    #   resp.db_instance.status_infos #=> Array
    #   resp.db_instance.status_infos[0].status_type #=> String
    #   resp.db_instance.status_infos[0].normal #=> Boolean
    #   resp.db_instance.status_infos[0].status #=> String
    #   resp.db_instance.status_infos[0].message #=> String
    #   resp.db_instance.db_cluster_identifier #=> String
    #   resp.db_instance.storage_encrypted #=> Boolean
    #   resp.db_instance.kms_key_id #=> String
    #   resp.db_instance.dbi_resource_id #=> String
    #   resp.db_instance.ca_certificate_identifier #=> String
    #   resp.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.db_instance.promotion_tier #=> Integer
    #   resp.db_instance.db_instance_arn #=> String
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.certificate_details.ca_identifier #=> String
    #   resp.db_instance.certificate_details.valid_till #=> Time
    #   resp.db_instance.performance_insights_enabled #=> Boolean
    #   resp.db_instance.performance_insights_kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBInstance AWS API Documentation
    #
    # @overload create_db_instance(params = {})
    # @param [Hash] params ({})
    def create_db_instance(params = {}, options = {})
      req = build_request(:create_db_instance, params)
      req.send_request(options)
    end

    # Creates a new subnet group. subnet groups must contain at least one
    # subnet in at least two Availability Zones in the Amazon Web Services
    # Region.
    #
    # @option params [required, String] :db_subnet_group_name
    #   The name for the subnet group. This value is stored as a lowercase
    #   string.
    #
    #   Constraints: Must contain no more than 255 letters, numbers, periods,
    #   underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [required, String] :db_subnet_group_description
    #   The description for the subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The Amazon EC2 subnet IDs for the subnet group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the subnet group.
    #
    # @return [Types::CreateDBSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDBSubnetGroupResult#db_subnet_group #db_subnet_group} => Types::DBSubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_db_subnet_group({
    #     db_subnet_group_name: "String", # required
    #     db_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_subnet_group.vpc_id #=> String
    #   resp.db_subnet_group.subnet_group_status #=> String
    #   resp.db_subnet_group.subnets #=> Array
    #   resp.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_subnet_group.db_subnet_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBSubnetGroup AWS API Documentation
    #
    # @overload create_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_db_subnet_group(params = {}, options = {})
      req = build_request(:create_db_subnet_group, params)
      req.send_request(options)
    end

    # Creates an Amazon DocumentDB event notification subscription. This
    # action requires a topic Amazon Resource Name (ARN) created by using
    # the Amazon DocumentDB console, the Amazon SNS console, or the Amazon
    # SNS API. To obtain an ARN with Amazon SNS, you must create a topic in
    # Amazon SNS and subscribe to the topic. The ARN is displayed in the
    # Amazon SNS console.
    #
    # You can specify the type of source (`SourceType`) that you want to be
    # notified of. You can also provide a list of Amazon DocumentDB sources
    # (`SourceIds`) that trigger the events, and you can provide a list of
    # event categories (`EventCategories`) for events that you want to be
    # notified of. For example, you can specify `SourceType = db-instance`,
    # `SourceIds = mydbinstance1, mydbinstance2` and `EventCategories =
    # Availability, Backup`.
    #
    # If you specify both the `SourceType` and `SourceIds` (such as
    # `SourceType = db-instance` and `SourceIdentifier = myDBInstance1`),
    # you are notified of all the `db-instance` events for the specified
    # source. If you specify a `SourceType` but do not specify a
    # `SourceIdentifier`, you receive notice of the events for that source
    # type for all your Amazon DocumentDB sources. If you do not specify
    # either the `SourceType` or the `SourceIdentifier`, you are notified of
    # events generated from all Amazon DocumentDB sources belonging to your
    # customer account.
    #
    # @option params [required, String] :subscription_name
    #   The name of the subscription.
    #
    #   Constraints: The name must be fewer than 255 characters.
    #
    # @option params [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. Amazon SNS creates the ARN when you create a topic and
    #   subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of source that is generating the events. For example, if you
    #   want to be notified of events generated by an instance, you would set
    #   this parameter to `db-instance`. If this value is not specified, all
    #   events are returned.
    #
    #   Valid values: `db-instance`, `db-cluster`, `db-parameter-group`,
    #   `db-security-group`, `db-cluster-snapshot`
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a `SourceType` that you want to
    #   subscribe to.
    #
    # @option params [Array<String>] :source_ids
    #   The list of identifiers of the event sources for which events are
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain only
    #   ASCII letters, digits, and hyphens; it can't end with a hyphen or
    #   contain two consecutive hyphens.
    #
    #   Constraints:
    #
    #   * If `SourceIds` are provided, `SourceType` must also be provided.
    #
    #   * If the source type is an instance, a `DBInstanceIdentifier` must be
    #     provided.
    #
    #   * If the source type is a security group, a `DBSecurityGroupName` must
    #     be provided.
    #
    #   * If the source type is a parameter group, a `DBParameterGroupName`
    #     must be provided.
    #
    #   * If the source type is a snapshot, a `DBSnapshotIdentifier` must be
    #     provided.
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to `true` to activate the subscription, set to
    #   `false` to create the subscription but not active it.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the event subscription.
    #
    # @return [Types::CreateEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     event_categories: ["String"],
    #     source_ids: ["String"],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateEventSubscription AWS API Documentation
    #
    # @overload create_event_subscription(params = {})
    # @param [Hash] params ({})
    def create_event_subscription(params = {}, options = {})
      req = build_request(:create_event_subscription, params)
      req.send_request(options)
    end

    # Creates an Amazon DocumentDB global cluster that can span multiple
    # multiple Amazon Web Services Regions. The global cluster contains one
    # primary cluster with read-write capability, and up-to give read-only
    # secondary clusters. Global clusters uses storage-based fast
    # replication across regions with latencies less than one second, using
    # dedicated infrastructure with no impact to your workload’s
    # performance.
    #
    #
    #
    # You can create a global cluster that is initially empty, and then add
    # a primary and a secondary to it. Or you can specify an existing
    # cluster during the create operation, and this cluster becomes the
    # primary of the global cluster.
    #
    # <note markdown="1"> This action only applies to Amazon DocumentDB clusters.
    #
    #  </note>
    #
    # @option params [required, String] :global_cluster_identifier
    #   The cluster identifier of the new global cluster.
    #
    # @option params [String] :source_db_cluster_identifier
    #   The Amazon Resource Name (ARN) to use as the primary cluster of the
    #   global cluster. This parameter is optional.
    #
    # @option params [String] :engine
    #   The name of the database engine to be used for this cluster.
    #
    # @option params [String] :engine_version
    #   The engine version of the global cluster.
    #
    # @option params [Boolean] :deletion_protection
    #   The deletion protection setting for the new global cluster. The global
    #   cluster can't be deleted when deletion protection is enabled.
    #
    # @option params [String] :database_name
    #   The name for your database of up to 64 alpha-numeric characters. If
    #   you do not provide a name, Amazon DocumentDB will not create a
    #   database in the global cluster you are creating.
    #
    # @option params [Boolean] :storage_encrypted
    #   The storage encryption setting for the new global cluster.
    #
    # @return [Types::CreateGlobalClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlobalClusterResult#global_cluster #global_cluster} => Types::GlobalCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_cluster({
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     source_db_cluster_identifier: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     deletion_protection: false,
    #     database_name: "String",
    #     storage_encrypted: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.global_cluster.global_cluster_identifier #=> String
    #   resp.global_cluster.global_cluster_resource_id #=> String
    #   resp.global_cluster.global_cluster_arn #=> String
    #   resp.global_cluster.status #=> String
    #   resp.global_cluster.engine #=> String
    #   resp.global_cluster.engine_version #=> String
    #   resp.global_cluster.database_name #=> String
    #   resp.global_cluster.storage_encrypted #=> Boolean
    #   resp.global_cluster.deletion_protection #=> Boolean
    #   resp.global_cluster.global_cluster_members #=> Array
    #   resp.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.global_cluster.global_cluster_members[0].readers #=> Array
    #   resp.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateGlobalCluster AWS API Documentation
    #
    # @overload create_global_cluster(params = {})
    # @param [Hash] params ({})
    def create_global_cluster(params = {}, options = {})
      req = build_request(:create_global_cluster, params)
      req.send_request(options)
    end

    # Deletes a previously provisioned cluster. When you delete a cluster,
    # all automated backups for that cluster are deleted and can't be
    # recovered. Manual DB cluster snapshots of the specified cluster are
    # not deleted.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The cluster identifier for the cluster to be deleted. This parameter
    #   isn't case sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing `DBClusterIdentifier`.
    #
    #   ^
    #
    # @option params [Boolean] :skip_final_snapshot
    #   Determines whether a final cluster snapshot is created before the
    #   cluster is deleted. If `true` is specified, no cluster snapshot is
    #   created. If `false` is specified, a cluster snapshot is created before
    #   the DB cluster is deleted.
    #
    #   <note markdown="1"> If `SkipFinalSnapshot` is `false`, you must specify a
    #   `FinalDBSnapshotIdentifier` parameter.
    #
    #    </note>
    #
    #   Default: `false`
    #
    # @option params [String] :final_db_snapshot_identifier
    #   The cluster snapshot identifier of the new cluster snapshot created
    #   when `SkipFinalSnapshot` is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the `SkipFinalShapshot`
    #   parameter to `true` results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be from 1 to 255 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @return [Types::DeleteDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster({
    #     db_cluster_identifier: "String", # required
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.deletion_protection #=> Boolean
    #   resp.db_cluster.storage_type #=> String
    #   resp.db_cluster.master_user_secret.secret_arn #=> String
    #   resp.db_cluster.master_user_secret.secret_status #=> String
    #   resp.db_cluster.master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBCluster AWS API Documentation
    #
    # @overload delete_db_cluster(params = {})
    # @param [Hash] params ({})
    def delete_db_cluster(params = {}, options = {})
      req = build_request(:delete_db_cluster, params)
      req.send_request(options)
    end

    # Deletes a specified cluster parameter group. The cluster parameter
    # group to be deleted can't be associated with any clusters.
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of the cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing cluster parameter group.
    #
    #   * You can't delete a default cluster parameter group.
    #
    #   * Cannot be associated with any clusters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterParameterGroup AWS API Documentation
    #
    # @overload delete_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def delete_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:delete_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Deletes a cluster snapshot. If the snapshot is being copied, the copy
    # operation is terminated.
    #
    # <note markdown="1"> The cluster snapshot must be in the `available` state to be deleted.
    #
    #  </note>
    #
    # @option params [required, String] :db_cluster_snapshot_identifier
    #   The identifier of the cluster snapshot to delete.
    #
    #   Constraints: Must be the name of an existing cluster snapshot in the
    #   `available` state.
    #
    # @return [Types::DeleteDBClusterSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDBClusterSnapshotResult#db_cluster_snapshot #db_cluster_snapshot} => Types::DBClusterSnapshot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_cluster_snapshot({
    #     db_cluster_snapshot_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot.availability_zones #=> Array
    #   resp.db_cluster_snapshot.availability_zones[0] #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot.db_cluster_identifier #=> String
    #   resp.db_cluster_snapshot.snapshot_create_time #=> Time
    #   resp.db_cluster_snapshot.engine #=> String
    #   resp.db_cluster_snapshot.status #=> String
    #   resp.db_cluster_snapshot.port #=> Integer
    #   resp.db_cluster_snapshot.vpc_id #=> String
    #   resp.db_cluster_snapshot.cluster_create_time #=> Time
    #   resp.db_cluster_snapshot.master_username #=> String
    #   resp.db_cluster_snapshot.engine_version #=> String
    #   resp.db_cluster_snapshot.snapshot_type #=> String
    #   resp.db_cluster_snapshot.percent_progress #=> Integer
    #   resp.db_cluster_snapshot.storage_encrypted #=> Boolean
    #   resp.db_cluster_snapshot.kms_key_id #=> String
    #   resp.db_cluster_snapshot.db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.source_db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshot.storage_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterSnapshot AWS API Documentation
    #
    # @overload delete_db_cluster_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_db_cluster_snapshot(params = {}, options = {})
      req = build_request(:delete_db_cluster_snapshot, params)
      req.send_request(options)
    end

    # Deletes a previously provisioned instance.
    #
    # @option params [required, String] :db_instance_identifier
    #   The instance identifier for the instance to be deleted. This parameter
    #   isn't case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing instance.
    #
    #   ^
    #
    # @return [Types::DeleteDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_instance({
    #     db_instance_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_instance.db_instance_identifier #=> String
    #   resp.db_instance.db_instance_class #=> String
    #   resp.db_instance.engine #=> String
    #   resp.db_instance.db_instance_status #=> String
    #   resp.db_instance.endpoint.address #=> String
    #   resp.db_instance.endpoint.port #=> Integer
    #   resp.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.db_instance.instance_create_time #=> Time
    #   resp.db_instance.preferred_backup_window #=> String
    #   resp.db_instance.backup_retention_period #=> Integer
    #   resp.db_instance.vpc_security_groups #=> Array
    #   resp.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instance.vpc_security_groups[0].status #=> String
    #   resp.db_instance.availability_zone #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.db_instance.db_subnet_group.subnets #=> Array
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instance.preferred_maintenance_window #=> String
    #   resp.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.db_instance.pending_modified_values.port #=> Integer
    #   resp.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.db_instance.pending_modified_values.engine_version #=> String
    #   resp.db_instance.pending_modified_values.license_model #=> String
    #   resp.db_instance.pending_modified_values.iops #=> Integer
    #   resp.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instance.pending_modified_values.storage_type #=> String
    #   resp.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instance.latest_restorable_time #=> Time
    #   resp.db_instance.engine_version #=> String
    #   resp.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.db_instance.publicly_accessible #=> Boolean
    #   resp.db_instance.status_infos #=> Array
    #   resp.db_instance.status_infos[0].status_type #=> String
    #   resp.db_instance.status_infos[0].normal #=> Boolean
    #   resp.db_instance.status_infos[0].status #=> String
    #   resp.db_instance.status_infos[0].message #=> String
    #   resp.db_instance.db_cluster_identifier #=> String
    #   resp.db_instance.storage_encrypted #=> Boolean
    #   resp.db_instance.kms_key_id #=> String
    #   resp.db_instance.dbi_resource_id #=> String
    #   resp.db_instance.ca_certificate_identifier #=> String
    #   resp.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.db_instance.promotion_tier #=> Integer
    #   resp.db_instance.db_instance_arn #=> String
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.certificate_details.ca_identifier #=> String
    #   resp.db_instance.certificate_details.valid_till #=> Time
    #   resp.db_instance.performance_insights_enabled #=> Boolean
    #   resp.db_instance.performance_insights_kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBInstance AWS API Documentation
    #
    # @overload delete_db_instance(params = {})
    # @param [Hash] params ({})
    def delete_db_instance(params = {}, options = {})
      req = build_request(:delete_db_instance, params)
      req.send_request(options)
    end

    # Deletes a subnet group.
    #
    # <note markdown="1"> The specified database subnet group must not be associated with any DB
    # instances.
    #
    #  </note>
    #
    # @option params [required, String] :db_subnet_group_name
    #   The name of the database subnet group to delete.
    #
    #   <note markdown="1"> You can't delete the default subnet group.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   Must match the name of an existing `DBSubnetGroup`. Must not be
    #   default.
    #
    #   Example: `mySubnetgroup`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_db_subnet_group({
    #     db_subnet_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBSubnetGroup AWS API Documentation
    #
    # @overload delete_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_db_subnet_group(params = {}, options = {})
      req = build_request(:delete_db_subnet_group, params)
      req.send_request(options)
    end

    # Deletes an Amazon DocumentDB event notification subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the Amazon DocumentDB event notification subscription that
    #   you want to delete.
    #
    # @return [Types::DeleteEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_subscription({
    #     subscription_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteEventSubscription AWS API Documentation
    #
    # @overload delete_event_subscription(params = {})
    # @param [Hash] params ({})
    def delete_event_subscription(params = {}, options = {})
      req = build_request(:delete_event_subscription, params)
      req.send_request(options)
    end

    # Deletes a global cluster. The primary and secondary clusters must
    # already be detached or deleted before attempting to delete a global
    # cluster.
    #
    # <note markdown="1"> This action only applies to Amazon DocumentDB clusters.
    #
    #  </note>
    #
    # @option params [required, String] :global_cluster_identifier
    #   The cluster identifier of the global cluster being deleted.
    #
    # @return [Types::DeleteGlobalClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGlobalClusterResult#global_cluster #global_cluster} => Types::GlobalCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_global_cluster({
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.global_cluster.global_cluster_identifier #=> String
    #   resp.global_cluster.global_cluster_resource_id #=> String
    #   resp.global_cluster.global_cluster_arn #=> String
    #   resp.global_cluster.status #=> String
    #   resp.global_cluster.engine #=> String
    #   resp.global_cluster.engine_version #=> String
    #   resp.global_cluster.database_name #=> String
    #   resp.global_cluster.storage_encrypted #=> Boolean
    #   resp.global_cluster.deletion_protection #=> Boolean
    #   resp.global_cluster.global_cluster_members #=> Array
    #   resp.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.global_cluster.global_cluster_members[0].readers #=> Array
    #   resp.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteGlobalCluster AWS API Documentation
    #
    # @overload delete_global_cluster(params = {})
    # @param [Hash] params ({})
    def delete_global_cluster(params = {}, options = {})
      req = build_request(:delete_global_cluster, params)
      req.send_request(options)
    end

    # Returns a list of certificate authority (CA) certificates provided by
    # Amazon DocumentDB for this Amazon Web Services account.
    #
    # @option params [String] :certificate_identifier
    #   The user-supplied certificate identifier. If this parameter is
    #   specified, information for only the specified certificate is returned.
    #   If this parameter is omitted, a list of up to `MaxRecords`
    #   certificates is returned. This parameter is not case sensitive.
    #
    #   Constraints
    #
    #   * Must match an existing `CertificateIdentifier`.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints:
    #
    #   * Minimum: 20
    #
    #   * Maximum: 100
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeCertificates` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::CertificateMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CertificateMessage#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::CertificateMessage#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificates({
    #     certificate_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_identifier #=> String
    #   resp.certificates[0].certificate_type #=> String
    #   resp.certificates[0].thumbprint #=> String
    #   resp.certificates[0].valid_from #=> Time
    #   resp.certificates[0].valid_till #=> Time
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeCertificates AWS API Documentation
    #
    # @overload describe_certificates(params = {})
    # @param [Hash] params ({})
    def describe_certificates(params = {}, options = {})
      req = build_request(:describe_certificates, params)
      req.send_request(options)
    end

    # Returns a list of `DBClusterParameterGroup` descriptions. If a
    # `DBClusterParameterGroupName` parameter is specified, the list
    # contains only the description of the specified cluster parameter
    # group.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   The name of a specific cluster parameter group to return details for.
    #
    #   Constraints:
    #
    #   * If provided, must match the name of an existing
    #     `DBClusterParameterGroup`.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DBClusterParameterGroupsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterParameterGroupsMessage#marker #marker} => String
    #   * {Types::DBClusterParameterGroupsMessage#db_cluster_parameter_groups #db_cluster_parameter_groups} => Array&lt;Types::DBClusterParameterGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_parameter_groups({
    #     db_cluster_parameter_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_cluster_parameter_groups #=> Array
    #   resp.db_cluster_parameter_groups[0].db_cluster_parameter_group_name #=> String
    #   resp.db_cluster_parameter_groups[0].db_parameter_group_family #=> String
    #   resp.db_cluster_parameter_groups[0].description #=> String
    #   resp.db_cluster_parameter_groups[0].db_cluster_parameter_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterParameterGroups AWS API Documentation
    #
    # @overload describe_db_cluster_parameter_groups(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_parameter_groups(params = {}, options = {})
      req = build_request(:describe_db_cluster_parameter_groups, params)
      req.send_request(options)
    end

    # Returns the detailed parameter list for a particular cluster parameter
    # group.
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of a specific cluster parameter group to return parameter
    #   details for.
    #
    #   Constraints:
    #
    #   * If provided, must match the name of an existing
    #     `DBClusterParameterGroup`.
    #
    #   ^
    #
    # @option params [String] :source
    #   A value that indicates to return only parameters for a specific
    #   source. Parameter sources can be `engine`, `service`, or `customer`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DBClusterParameterGroupDetails] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterParameterGroupDetails#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::DBClusterParameterGroupDetails#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_parameters({
    #     db_cluster_parameter_group_name: "String", # required
    #     source: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_name #=> String
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].source #=> String
    #   resp.parameters[0].apply_type #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].is_modifiable #=> Boolean
    #   resp.parameters[0].minimum_engine_version #=> String
    #   resp.parameters[0].apply_method #=> String, one of "immediate", "pending-reboot"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterParameters AWS API Documentation
    #
    # @overload describe_db_cluster_parameters(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_parameters(params = {}, options = {})
      req = build_request(:describe_db_cluster_parameters, params)
      req.send_request(options)
    end

    # Returns a list of cluster snapshot attribute names and values for a
    # manual DB cluster snapshot.
    #
    # When you share snapshots with other Amazon Web Services accounts,
    # `DescribeDBClusterSnapshotAttributes` returns the `restore` attribute
    # and a list of IDs for the Amazon Web Services accounts that are
    # authorized to copy or restore the manual cluster snapshot. If `all` is
    # included in the list of values for the `restore` attribute, then the
    # manual cluster snapshot is public and can be copied or restored by all
    # Amazon Web Services accounts.
    #
    # @option params [required, String] :db_cluster_snapshot_identifier
    #   The identifier for the cluster snapshot to describe the attributes
    #   for.
    #
    # @return [Types::DescribeDBClusterSnapshotAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDBClusterSnapshotAttributesResult#db_cluster_snapshot_attributes_result #db_cluster_snapshot_attributes_result} => Types::DBClusterSnapshotAttributesResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_snapshot_attributes({
    #     db_cluster_snapshot_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes #=> Array
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_name #=> String
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values #=> Array
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterSnapshotAttributes AWS API Documentation
    #
    # @overload describe_db_cluster_snapshot_attributes(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_snapshot_attributes(params = {}, options = {})
      req = build_request(:describe_db_cluster_snapshot_attributes, params)
      req.send_request(options)
    end

    # Returns information about cluster snapshots. This API operation
    # supports pagination.
    #
    # @option params [String] :db_cluster_identifier
    #   The ID of the cluster to retrieve the list of cluster snapshots for.
    #   This parameter can't be used with the `DBClusterSnapshotIdentifier`
    #   parameter. This parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * If provided, must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #
    # @option params [String] :db_cluster_snapshot_identifier
    #   A specific cluster snapshot identifier to describe. This parameter
    #   can't be used with the `DBClusterIdentifier` parameter. This value is
    #   stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * If provided, must match the identifier of an existing
    #     `DBClusterSnapshot`.
    #
    #   * If this identifier is for an automated snapshot, the `SnapshotType`
    #     parameter must also be specified.
    #
    # @option params [String] :snapshot_type
    #   The type of cluster snapshots to be returned. You can specify one of
    #   the following values:
    #
    #   * `automated` - Return all cluster snapshots that Amazon DocumentDB
    #     has automatically created for your Amazon Web Services account.
    #
    #   * `manual` - Return all cluster snapshots that you have manually
    #     created for your Amazon Web Services account.
    #
    #   * `shared` - Return all manual cluster snapshots that have been shared
    #     to your Amazon Web Services account.
    #
    #   * `public` - Return all cluster snapshots that have been marked as
    #     public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated and
    #   manual cluster snapshots are returned. You can include shared cluster
    #   snapshots with these results by setting the `IncludeShared` parameter
    #   to `true`. You can include public cluster snapshots with these results
    #   by setting the`IncludePublic` parameter to `true`.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The `IncludePublic`
    #   parameter doesn't apply when `SnapshotType` is set to `shared`. The
    #   `IncludeShared` parameter doesn't apply when `SnapshotType` is set to
    #   `public`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @option params [Boolean] :include_shared
    #   Set to `true` to include shared manual cluster snapshots from other
    #   Amazon Web Services accounts that this Amazon Web Services account has
    #   been given permission to copy or restore, and otherwise `false`. The
    #   default is `false`.
    #
    # @option params [Boolean] :include_public
    #   Set to `true` to include manual cluster snapshots that are public and
    #   can be copied or restored by any Amazon Web Services account, and
    #   otherwise `false`. The default is `false`.
    #
    # @return [Types::DBClusterSnapshotMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterSnapshotMessage#marker #marker} => String
    #   * {Types::DBClusterSnapshotMessage#db_cluster_snapshots #db_cluster_snapshots} => Array&lt;Types::DBClusterSnapshot&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_cluster_snapshots({
    #     db_cluster_identifier: "String",
    #     db_cluster_snapshot_identifier: "String",
    #     snapshot_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #     include_shared: false,
    #     include_public: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_cluster_snapshots #=> Array
    #   resp.db_cluster_snapshots[0].availability_zones #=> Array
    #   resp.db_cluster_snapshots[0].availability_zones[0] #=> String
    #   resp.db_cluster_snapshots[0].db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshots[0].db_cluster_identifier #=> String
    #   resp.db_cluster_snapshots[0].snapshot_create_time #=> Time
    #   resp.db_cluster_snapshots[0].engine #=> String
    #   resp.db_cluster_snapshots[0].status #=> String
    #   resp.db_cluster_snapshots[0].port #=> Integer
    #   resp.db_cluster_snapshots[0].vpc_id #=> String
    #   resp.db_cluster_snapshots[0].cluster_create_time #=> Time
    #   resp.db_cluster_snapshots[0].master_username #=> String
    #   resp.db_cluster_snapshots[0].engine_version #=> String
    #   resp.db_cluster_snapshots[0].snapshot_type #=> String
    #   resp.db_cluster_snapshots[0].percent_progress #=> Integer
    #   resp.db_cluster_snapshots[0].storage_encrypted #=> Boolean
    #   resp.db_cluster_snapshots[0].kms_key_id #=> String
    #   resp.db_cluster_snapshots[0].db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshots[0].source_db_cluster_snapshot_arn #=> String
    #   resp.db_cluster_snapshots[0].storage_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterSnapshots AWS API Documentation
    #
    # @overload describe_db_cluster_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_db_cluster_snapshots(params = {}, options = {})
      req = build_request(:describe_db_cluster_snapshots, params)
      req.send_request(options)
    end

    # Returns information about provisioned Amazon DocumentDB clusters. This
    # API operation supports pagination. For certain management features
    # such as cluster and instance lifecycle management, Amazon DocumentDB
    # leverages operational technology that is shared with Amazon RDS and
    # Amazon Neptune. Use the `filterName=engine,Values=docdb` filter
    # parameter to return only Amazon DocumentDB clusters.
    #
    # @option params [String] :db_cluster_identifier
    #   The user-provided cluster identifier. If this parameter is specified,
    #   information from only the specific cluster is returned. This parameter
    #   isn't case sensitive.
    #
    #   Constraints:
    #
    #   * If provided, must match an existing `DBClusterIdentifier`.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter that specifies one or more clusters to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts cluster identifiers and cluster Amazon
    #     Resource Names (ARNs). The results list only includes information
    #     about the clusters identified by these ARNs.
    #
    #   ^
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DBClusterMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterMessage#marker #marker} => String
    #   * {Types::DBClusterMessage#db_clusters #db_clusters} => Array&lt;Types::DBCluster&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_clusters({
    #     db_cluster_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_clusters #=> Array
    #   resp.db_clusters[0].availability_zones #=> Array
    #   resp.db_clusters[0].availability_zones[0] #=> String
    #   resp.db_clusters[0].backup_retention_period #=> Integer
    #   resp.db_clusters[0].db_cluster_identifier #=> String
    #   resp.db_clusters[0].db_cluster_parameter_group #=> String
    #   resp.db_clusters[0].db_subnet_group #=> String
    #   resp.db_clusters[0].status #=> String
    #   resp.db_clusters[0].percent_progress #=> String
    #   resp.db_clusters[0].earliest_restorable_time #=> Time
    #   resp.db_clusters[0].endpoint #=> String
    #   resp.db_clusters[0].reader_endpoint #=> String
    #   resp.db_clusters[0].multi_az #=> Boolean
    #   resp.db_clusters[0].engine #=> String
    #   resp.db_clusters[0].engine_version #=> String
    #   resp.db_clusters[0].latest_restorable_time #=> Time
    #   resp.db_clusters[0].port #=> Integer
    #   resp.db_clusters[0].master_username #=> String
    #   resp.db_clusters[0].preferred_backup_window #=> String
    #   resp.db_clusters[0].preferred_maintenance_window #=> String
    #   resp.db_clusters[0].replication_source_identifier #=> String
    #   resp.db_clusters[0].read_replica_identifiers #=> Array
    #   resp.db_clusters[0].read_replica_identifiers[0] #=> String
    #   resp.db_clusters[0].db_cluster_members #=> Array
    #   resp.db_clusters[0].db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_clusters[0].db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_clusters[0].db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_clusters[0].db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_clusters[0].vpc_security_groups #=> Array
    #   resp.db_clusters[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_clusters[0].vpc_security_groups[0].status #=> String
    #   resp.db_clusters[0].hosted_zone_id #=> String
    #   resp.db_clusters[0].storage_encrypted #=> Boolean
    #   resp.db_clusters[0].kms_key_id #=> String
    #   resp.db_clusters[0].db_cluster_resource_id #=> String
    #   resp.db_clusters[0].db_cluster_arn #=> String
    #   resp.db_clusters[0].associated_roles #=> Array
    #   resp.db_clusters[0].associated_roles[0].role_arn #=> String
    #   resp.db_clusters[0].associated_roles[0].status #=> String
    #   resp.db_clusters[0].clone_group_id #=> String
    #   resp.db_clusters[0].cluster_create_time #=> Time
    #   resp.db_clusters[0].enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_clusters[0].enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_clusters[0].deletion_protection #=> Boolean
    #   resp.db_clusters[0].storage_type #=> String
    #   resp.db_clusters[0].master_user_secret.secret_arn #=> String
    #   resp.db_clusters[0].master_user_secret.secret_status #=> String
    #   resp.db_clusters[0].master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusters AWS API Documentation
    #
    # @overload describe_db_clusters(params = {})
    # @param [Hash] params ({})
    def describe_db_clusters(params = {}, options = {})
      req = build_request(:describe_db_clusters, params)
      req.send_request(options)
    end

    # Returns a list of the available engines.
    #
    # @option params [String] :engine
    #   The database engine to return.
    #
    # @option params [String] :engine_version
    #   The database engine version to return.
    #
    #   Example: `3.6.0`
    #
    # @option params [String] :db_parameter_group_family
    #   The name of a specific parameter group family to return details for.
    #
    #   Constraints:
    #
    #   * If provided, must match an existing `DBParameterGroupFamily`.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @option params [Boolean] :default_only
    #   Indicates that only the default version of the specified engine or
    #   engine and major version combination is returned.
    #
    # @option params [Boolean] :list_supported_character_sets
    #   If this parameter is specified and the requested engine supports the
    #   `CharacterSetName` parameter for `CreateDBInstance`, the response
    #   includes a list of supported character sets for each engine version.
    #
    # @option params [Boolean] :list_supported_timezones
    #   If this parameter is specified and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    #
    # @return [Types::DBEngineVersionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBEngineVersionMessage#marker #marker} => String
    #   * {Types::DBEngineVersionMessage#db_engine_versions #db_engine_versions} => Array&lt;Types::DBEngineVersion&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_engine_versions({
    #     engine: "String",
    #     engine_version: "String",
    #     db_parameter_group_family: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #     default_only: false,
    #     list_supported_character_sets: false,
    #     list_supported_timezones: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_engine_versions #=> Array
    #   resp.db_engine_versions[0].engine #=> String
    #   resp.db_engine_versions[0].engine_version #=> String
    #   resp.db_engine_versions[0].db_parameter_group_family #=> String
    #   resp.db_engine_versions[0].db_engine_description #=> String
    #   resp.db_engine_versions[0].db_engine_version_description #=> String
    #   resp.db_engine_versions[0].valid_upgrade_target #=> Array
    #   resp.db_engine_versions[0].valid_upgrade_target[0].engine #=> String
    #   resp.db_engine_versions[0].valid_upgrade_target[0].engine_version #=> String
    #   resp.db_engine_versions[0].valid_upgrade_target[0].description #=> String
    #   resp.db_engine_versions[0].valid_upgrade_target[0].auto_upgrade #=> Boolean
    #   resp.db_engine_versions[0].valid_upgrade_target[0].is_major_version_upgrade #=> Boolean
    #   resp.db_engine_versions[0].exportable_log_types #=> Array
    #   resp.db_engine_versions[0].exportable_log_types[0] #=> String
    #   resp.db_engine_versions[0].supports_log_exports_to_cloudwatch_logs #=> Boolean
    #   resp.db_engine_versions[0].supported_ca_certificate_identifiers #=> Array
    #   resp.db_engine_versions[0].supported_ca_certificate_identifiers[0] #=> String
    #   resp.db_engine_versions[0].supports_certificate_rotation_without_restart #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBEngineVersions AWS API Documentation
    #
    # @overload describe_db_engine_versions(params = {})
    # @param [Hash] params ({})
    def describe_db_engine_versions(params = {}, options = {})
      req = build_request(:describe_db_engine_versions, params)
      req.send_request(options)
    end

    # Returns information about provisioned Amazon DocumentDB instances.
    # This API supports pagination.
    #
    # @option params [String] :db_instance_identifier
    #   The user-provided instance identifier. If this parameter is specified,
    #   information from only the specific instance is returned. This
    #   parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * If provided, must match the identifier of an existing `DBInstance`.
    #
    #   ^
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter that specifies one or more instances to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts cluster identifiers and cluster Amazon
    #     Resource Names (ARNs). The results list includes only the
    #     information about the instances that are associated with the
    #     clusters that are identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts instance identifiers and instance ARNs.
    #     The results list includes only the information about the instances
    #     that are identified by these ARNs.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DBInstanceMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBInstanceMessage#marker #marker} => String
    #   * {Types::DBInstanceMessage#db_instances #db_instances} => Array&lt;Types::DBInstance&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_instances({
    #     db_instance_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_instances #=> Array
    #   resp.db_instances[0].db_instance_identifier #=> String
    #   resp.db_instances[0].db_instance_class #=> String
    #   resp.db_instances[0].engine #=> String
    #   resp.db_instances[0].db_instance_status #=> String
    #   resp.db_instances[0].endpoint.address #=> String
    #   resp.db_instances[0].endpoint.port #=> Integer
    #   resp.db_instances[0].endpoint.hosted_zone_id #=> String
    #   resp.db_instances[0].instance_create_time #=> Time
    #   resp.db_instances[0].preferred_backup_window #=> String
    #   resp.db_instances[0].backup_retention_period #=> Integer
    #   resp.db_instances[0].vpc_security_groups #=> Array
    #   resp.db_instances[0].vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instances[0].vpc_security_groups[0].status #=> String
    #   resp.db_instances[0].availability_zone #=> String
    #   resp.db_instances[0].db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instances[0].db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instances[0].db_subnet_group.vpc_id #=> String
    #   resp.db_instances[0].db_subnet_group.subnet_group_status #=> String
    #   resp.db_instances[0].db_subnet_group.subnets #=> Array
    #   resp.db_instances[0].db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instances[0].db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instances[0].db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instances[0].db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instances[0].preferred_maintenance_window #=> String
    #   resp.db_instances[0].pending_modified_values.db_instance_class #=> String
    #   resp.db_instances[0].pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instances[0].pending_modified_values.master_user_password #=> String
    #   resp.db_instances[0].pending_modified_values.port #=> Integer
    #   resp.db_instances[0].pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instances[0].pending_modified_values.multi_az #=> Boolean
    #   resp.db_instances[0].pending_modified_values.engine_version #=> String
    #   resp.db_instances[0].pending_modified_values.license_model #=> String
    #   resp.db_instances[0].pending_modified_values.iops #=> Integer
    #   resp.db_instances[0].pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instances[0].pending_modified_values.storage_type #=> String
    #   resp.db_instances[0].pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instances[0].pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instances[0].pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instances[0].latest_restorable_time #=> Time
    #   resp.db_instances[0].engine_version #=> String
    #   resp.db_instances[0].auto_minor_version_upgrade #=> Boolean
    #   resp.db_instances[0].publicly_accessible #=> Boolean
    #   resp.db_instances[0].status_infos #=> Array
    #   resp.db_instances[0].status_infos[0].status_type #=> String
    #   resp.db_instances[0].status_infos[0].normal #=> Boolean
    #   resp.db_instances[0].status_infos[0].status #=> String
    #   resp.db_instances[0].status_infos[0].message #=> String
    #   resp.db_instances[0].db_cluster_identifier #=> String
    #   resp.db_instances[0].storage_encrypted #=> Boolean
    #   resp.db_instances[0].kms_key_id #=> String
    #   resp.db_instances[0].dbi_resource_id #=> String
    #   resp.db_instances[0].ca_certificate_identifier #=> String
    #   resp.db_instances[0].copy_tags_to_snapshot #=> Boolean
    #   resp.db_instances[0].promotion_tier #=> Integer
    #   resp.db_instances[0].db_instance_arn #=> String
    #   resp.db_instances[0].enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instances[0].enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instances[0].certificate_details.ca_identifier #=> String
    #   resp.db_instances[0].certificate_details.valid_till #=> Time
    #   resp.db_instances[0].performance_insights_enabled #=> Boolean
    #   resp.db_instances[0].performance_insights_kms_key_id #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * db_instance_available
    #   * db_instance_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBInstances AWS API Documentation
    #
    # @overload describe_db_instances(params = {})
    # @param [Hash] params ({})
    def describe_db_instances(params = {}, options = {})
      req = build_request(:describe_db_instances, params)
      req.send_request(options)
    end

    # Returns a list of `DBSubnetGroup` descriptions. If a
    # `DBSubnetGroupName` is specified, the list will contain only the
    # descriptions of the specified `DBSubnetGroup`.
    #
    # @option params [String] :db_subnet_group_name
    #   The name of the subnet group to return details for.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DBSubnetGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBSubnetGroupMessage#marker #marker} => String
    #   * {Types::DBSubnetGroupMessage#db_subnet_groups #db_subnet_groups} => Array&lt;Types::DBSubnetGroup&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_db_subnet_groups({
    #     db_subnet_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.db_subnet_groups #=> Array
    #   resp.db_subnet_groups[0].db_subnet_group_name #=> String
    #   resp.db_subnet_groups[0].db_subnet_group_description #=> String
    #   resp.db_subnet_groups[0].vpc_id #=> String
    #   resp.db_subnet_groups[0].subnet_group_status #=> String
    #   resp.db_subnet_groups[0].subnets #=> Array
    #   resp.db_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.db_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_subnet_groups[0].subnets[0].subnet_status #=> String
    #   resp.db_subnet_groups[0].db_subnet_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBSubnetGroups AWS API Documentation
    #
    # @overload describe_db_subnet_groups(params = {})
    # @param [Hash] params ({})
    def describe_db_subnet_groups(params = {}, options = {})
      req = build_request(:describe_db_subnet_groups, params)
      req.send_request(options)
    end

    # Returns the default engine and system parameter information for the
    # cluster database engine.
    #
    # @option params [required, String] :db_parameter_group_family
    #   The name of the cluster parameter group family to return the engine
    #   parameter information for.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEngineDefaultClusterParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEngineDefaultClusterParametersResult#engine_defaults #engine_defaults} => Types::EngineDefaults
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_default_cluster_parameters({
    #     db_parameter_group_family: "String", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.engine_defaults.db_parameter_group_family #=> String
    #   resp.engine_defaults.marker #=> String
    #   resp.engine_defaults.parameters #=> Array
    #   resp.engine_defaults.parameters[0].parameter_name #=> String
    #   resp.engine_defaults.parameters[0].parameter_value #=> String
    #   resp.engine_defaults.parameters[0].description #=> String
    #   resp.engine_defaults.parameters[0].source #=> String
    #   resp.engine_defaults.parameters[0].apply_type #=> String
    #   resp.engine_defaults.parameters[0].data_type #=> String
    #   resp.engine_defaults.parameters[0].allowed_values #=> String
    #   resp.engine_defaults.parameters[0].is_modifiable #=> Boolean
    #   resp.engine_defaults.parameters[0].minimum_engine_version #=> String
    #   resp.engine_defaults.parameters[0].apply_method #=> String, one of "immediate", "pending-reboot"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeEngineDefaultClusterParameters AWS API Documentation
    #
    # @overload describe_engine_default_cluster_parameters(params = {})
    # @param [Hash] params ({})
    def describe_engine_default_cluster_parameters(params = {}, options = {})
      req = build_request(:describe_engine_default_cluster_parameters, params)
      req.send_request(options)
    end

    # Displays a list of categories for all event source types, or, if
    # specified, for a specified source type.
    #
    # @option params [String] :source_type
    #   The type of source that is generating the events.
    #
    #   Valid values: `db-instance`, `db-parameter-group`, `db-security-group`
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @return [Types::EventCategoriesMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventCategoriesMessage#event_categories_map_list #event_categories_map_list} => Array&lt;Types::EventCategoriesMap&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_categories({
    #     source_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.event_categories_map_list #=> Array
    #   resp.event_categories_map_list[0].source_type #=> String
    #   resp.event_categories_map_list[0].event_categories #=> Array
    #   resp.event_categories_map_list[0].event_categories[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeEventCategories AWS API Documentation
    #
    # @overload describe_event_categories(params = {})
    # @param [Hash] params ({})
    def describe_event_categories(params = {}, options = {})
      req = build_request(:describe_event_categories, params)
      req.send_request(options)
    end

    # Lists all the subscription descriptions for a customer account. The
    # description for a subscription includes `SubscriptionName`,
    # `SNSTopicARN`, `CustomerID`, `SourceType`, `SourceID`, `CreationTime`,
    # and `Status`.
    #
    # If you specify a `SubscriptionName`, lists the description for that
    # subscription.
    #
    # @option params [String] :subscription_name
    #   The name of the Amazon DocumentDB event notification subscription that
    #   you want to describe.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::EventSubscriptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventSubscriptionsMessage#marker #marker} => String
    #   * {Types::EventSubscriptionsMessage#event_subscriptions_list #event_subscriptions_list} => Array&lt;Types::EventSubscription&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_subscriptions({
    #     subscription_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.event_subscriptions_list #=> Array
    #   resp.event_subscriptions_list[0].customer_aws_id #=> String
    #   resp.event_subscriptions_list[0].cust_subscription_id #=> String
    #   resp.event_subscriptions_list[0].sns_topic_arn #=> String
    #   resp.event_subscriptions_list[0].status #=> String
    #   resp.event_subscriptions_list[0].subscription_creation_time #=> String
    #   resp.event_subscriptions_list[0].source_type #=> String
    #   resp.event_subscriptions_list[0].source_ids_list #=> Array
    #   resp.event_subscriptions_list[0].source_ids_list[0] #=> String
    #   resp.event_subscriptions_list[0].event_categories_list #=> Array
    #   resp.event_subscriptions_list[0].event_categories_list[0] #=> String
    #   resp.event_subscriptions_list[0].enabled #=> Boolean
    #   resp.event_subscriptions_list[0].event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeEventSubscriptions AWS API Documentation
    #
    # @overload describe_event_subscriptions(params = {})
    # @param [Hash] params ({})
    def describe_event_subscriptions(params = {}, options = {})
      req = build_request(:describe_event_subscriptions, params)
      req.send_request(options)
    end

    # Returns events related to instances, security groups, snapshots, and
    # DB parameter groups for the past 14 days. You can obtain events
    # specific to a particular DB instance, security group, snapshot, or
    # parameter group by providing the name as a parameter. By default, the
    # events of the past hour are returned.
    #
    # @option params [String] :source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, then all sources are included in the response.
    #
    #   Constraints:
    #
    #   * If `SourceIdentifier` is provided, `SourceType` must also be
    #     provided.
    #
    #   * If the source type is `DBInstance`, a `DBInstanceIdentifier` must be
    #     provided.
    #
    #   * If the source type is `DBSecurityGroup`, a `DBSecurityGroupName`
    #     must be provided.
    #
    #   * If the source type is `DBParameterGroup`, a `DBParameterGroupName`
    #     must be provided.
    #
    #   * If the source type is `DBSnapshot`, a `DBSnapshotIdentifier` must be
    #     provided.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :source_type
    #   The event source to retrieve events for. If no value is specified, all
    #   events are returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format.
    #
    #   Example: 2009-07-08T18:00Z
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format.
    #
    #   Example: 2009-07-08T18:00Z
    #
    # @option params [Integer] :duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories that trigger notifications for an event
    #   notification subscription.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::EventsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventsMessage#marker #marker} => String
    #   * {Types::EventsMessage#events #events} => Array&lt;Types::Event&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     source_identifier: "String",
    #     source_type: "db-instance", # accepts db-instance, db-parameter-group, db-security-group, db-snapshot, db-cluster, db-cluster-snapshot
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.events #=> Array
    #   resp.events[0].source_identifier #=> String
    #   resp.events[0].source_type #=> String, one of "db-instance", "db-parameter-group", "db-security-group", "db-snapshot", "db-cluster", "db-cluster-snapshot"
    #   resp.events[0].message #=> String
    #   resp.events[0].event_categories #=> Array
    #   resp.events[0].event_categories[0] #=> String
    #   resp.events[0].date #=> Time
    #   resp.events[0].source_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns information about Amazon DocumentDB global clusters. This API
    # supports pagination.
    #
    # <note markdown="1"> This action only applies to Amazon DocumentDB clusters.
    #
    #  </note>
    #
    # @option params [String] :global_cluster_identifier
    #   The user-supplied cluster identifier. If this parameter is specified,
    #   information from only the specific cluster is returned. This parameter
    #   isn't case-sensitive.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter that specifies one or more global DB clusters to describe.
    #
    #   Supported filters: `db-cluster-id` accepts cluster identifiers and
    #   cluster Amazon Resource Names (ARNs). The results list will only
    #   include information about the clusters identified by these ARNs.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that you can
    #   retrieve the remaining results.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous
    #   `DescribeGlobalClusters` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #
    # @return [Types::GlobalClustersMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GlobalClustersMessage#marker #marker} => String
    #   * {Types::GlobalClustersMessage#global_clusters #global_clusters} => Array&lt;Types::GlobalCluster&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_clusters({
    #     global_cluster_identifier: "GlobalClusterIdentifier",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.global_clusters #=> Array
    #   resp.global_clusters[0].global_cluster_identifier #=> String
    #   resp.global_clusters[0].global_cluster_resource_id #=> String
    #   resp.global_clusters[0].global_cluster_arn #=> String
    #   resp.global_clusters[0].status #=> String
    #   resp.global_clusters[0].engine #=> String
    #   resp.global_clusters[0].engine_version #=> String
    #   resp.global_clusters[0].database_name #=> String
    #   resp.global_clusters[0].storage_encrypted #=> Boolean
    #   resp.global_clusters[0].deletion_protection #=> Boolean
    #   resp.global_clusters[0].global_cluster_members #=> Array
    #   resp.global_clusters[0].global_cluster_members[0].db_cluster_arn #=> String
    #   resp.global_clusters[0].global_cluster_members[0].readers #=> Array
    #   resp.global_clusters[0].global_cluster_members[0].readers[0] #=> String
    #   resp.global_clusters[0].global_cluster_members[0].is_writer #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeGlobalClusters AWS API Documentation
    #
    # @overload describe_global_clusters(params = {})
    # @param [Hash] params ({})
    def describe_global_clusters(params = {}, options = {})
      req = build_request(:describe_global_clusters, params)
      req.send_request(options)
    end

    # Returns a list of orderable instance options for the specified engine.
    #
    # @option params [required, String] :engine
    #   The name of the engine to retrieve instance options for.
    #
    # @option params [String] :engine_version
    #   The engine version filter value. Specify this parameter to show only
    #   the available offerings that match the specified engine version.
    #
    # @option params [String] :db_instance_class
    #   The instance class filter value. Specify this parameter to show only
    #   the available offerings that match the specified instance class.
    #
    # @option params [String] :license_model
    #   The license model filter value. Specify this parameter to show only
    #   the available offerings that match the specified license model.
    #
    # @option params [Boolean] :vpc
    #   The virtual private cloud (VPC) filter value. Specify this parameter
    #   to show only the available VPC or non-VPC offerings.
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @return [Types::OrderableDBInstanceOptionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OrderableDBInstanceOptionsMessage#orderable_db_instance_options #orderable_db_instance_options} => Array&lt;Types::OrderableDBInstanceOption&gt;
    #   * {Types::OrderableDBInstanceOptionsMessage#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_orderable_db_instance_options({
    #     engine: "String", # required
    #     engine_version: "String",
    #     db_instance_class: "String",
    #     license_model: "String",
    #     vpc: false,
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.orderable_db_instance_options #=> Array
    #   resp.orderable_db_instance_options[0].engine #=> String
    #   resp.orderable_db_instance_options[0].engine_version #=> String
    #   resp.orderable_db_instance_options[0].db_instance_class #=> String
    #   resp.orderable_db_instance_options[0].license_model #=> String
    #   resp.orderable_db_instance_options[0].availability_zones #=> Array
    #   resp.orderable_db_instance_options[0].availability_zones[0].name #=> String
    #   resp.orderable_db_instance_options[0].vpc #=> Boolean
    #   resp.orderable_db_instance_options[0].storage_type #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeOrderableDBInstanceOptions AWS API Documentation
    #
    # @overload describe_orderable_db_instance_options(params = {})
    # @param [Hash] params ({})
    def describe_orderable_db_instance_options(params = {}, options = {})
      req = build_request(:describe_orderable_db_instance_options, params)
      req.send_request(options)
    end

    # Returns a list of resources (for example, instances) that have at
    # least one pending maintenance action.
    #
    # @option params [String] :resource_identifier
    #   The ARN of a resource to return pending maintenance actions for.
    #
    # @option params [Array<Types::Filter>] :filters
    #   A filter that specifies one or more resources to return pending
    #   maintenance actions for.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts cluster identifiers and cluster Amazon
    #     Resource Names (ARNs). The results list includes only pending
    #     maintenance actions for the clusters identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts instance identifiers and instance ARNs.
    #     The results list includes only pending maintenance actions for the
    #     DB instances identified by these ARNs.
    #
    # @option params [String] :marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond the
    #   marker, up to the value specified by `MaxRecords`.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #
    # @return [Types::PendingMaintenanceActionsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PendingMaintenanceActionsMessage#pending_maintenance_actions #pending_maintenance_actions} => Array&lt;Types::ResourcePendingMaintenanceActions&gt;
    #   * {Types::PendingMaintenanceActionsMessage#marker #marker} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pending_maintenance_actions({
    #     resource_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     marker: "String",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pending_maintenance_actions #=> Array
    #   resp.pending_maintenance_actions[0].resource_identifier #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details #=> Array
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].action #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].auto_applied_after_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].forced_apply_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].opt_in_status #=> String
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].current_apply_date #=> Time
    #   resp.pending_maintenance_actions[0].pending_maintenance_action_details[0].description #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribePendingMaintenanceActions AWS API Documentation
    #
    # @overload describe_pending_maintenance_actions(params = {})
    # @param [Hash] params ({})
    def describe_pending_maintenance_actions(params = {}, options = {})
      req = build_request(:describe_pending_maintenance_actions, params)
      req.send_request(options)
    end

    # Forces a failover for a cluster.
    #
    # A failover for a cluster promotes one of the Amazon DocumentDB
    # replicas (read-only instances) in the cluster to be the primary
    # instance (the cluster writer).
    #
    # If the primary instance fails, Amazon DocumentDB automatically fails
    # over to an Amazon DocumentDB replica, if one exists. You can force a
    # failover when you want to simulate a failure of a primary instance for
    # testing.
    #
    # @option params [String] :db_cluster_identifier
    #   A cluster identifier to force a failover for. This parameter is not
    #   case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #
    # @option params [String] :target_db_instance_identifier
    #   The name of the instance to promote to the primary instance.
    #
    #   You must specify the instance identifier for an Amazon DocumentDB
    #   replica in the cluster. For example, `mydbcluster-replica1`.
    #
    # @return [Types::FailoverDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FailoverDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_db_cluster({
    #     db_cluster_identifier: "String",
    #     target_db_instance_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.deletion_protection #=> Boolean
    #   resp.db_cluster.storage_type #=> String
    #   resp.db_cluster.master_user_secret.secret_arn #=> String
    #   resp.db_cluster.master_user_secret.secret_status #=> String
    #   resp.db_cluster.master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/FailoverDBCluster AWS API Documentation
    #
    # @overload failover_db_cluster(params = {})
    # @param [Hash] params ({})
    def failover_db_cluster(params = {}, options = {})
      req = build_request(:failover_db_cluster, params)
      req.send_request(options)
    end

    # Promotes the specified secondary DB cluster to be the primary DB
    # cluster in the global cluster when failing over a global cluster
    # occurs.
    #
    # Use this operation to respond to an unplanned event, such as a
    # regional disaster in the primary region. Failing over can result in a
    # loss of write transaction data that wasn't replicated to the chosen
    # secondary before the failover event occurred. However, the recovery
    # process that promotes a DB instance on the chosen seconday DB cluster
    # to be the primary writer DB instance guarantees that the data is in a
    # transactionally consistent state.
    #
    # @option params [required, String] :global_cluster_identifier
    #   The identifier of the Amazon DocumentDB global cluster to apply this
    #   operation. The identifier is the unique key assigned by the user when
    #   the cluster is created. In other words, it's the name of the global
    #   cluster.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing global cluster.
    #
    #   * Minimum length of 1. Maximum length of 255.
    #
    #   Pattern: `[A-Za-z][0-9A-Za-z-:._]*`
    #
    # @option params [required, String] :target_db_cluster_identifier
    #   The identifier of the secondary Amazon DocumentDB cluster that you
    #   want to promote to the primary for the global cluster. Use the Amazon
    #   Resource Name (ARN) for the identifier so that Amazon DocumentDB can
    #   locate the cluster in its Amazon Web Services region.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing secondary cluster.
    #
    #   * Minimum length of 1. Maximum length of 255.
    #
    #   Pattern: `[A-Za-z][0-9A-Za-z-:._]*`
    #
    # @option params [Boolean] :allow_data_loss
    #   Specifies whether to allow data loss for this global cluster
    #   operation. Allowing data loss triggers a global failover operation.
    #
    #   If you don't specify `AllowDataLoss`, the global cluster operation
    #   defaults to a switchover.
    #
    #   Constraints:
    #
    #   * Can't be specified together with the `Switchover` parameter.
    #
    #   ^
    #
    # @option params [Boolean] :switchover
    #   Specifies whether to switch over this global database cluster.
    #
    #   Constraints:
    #
    #   * Can't be specified together with the `AllowDataLoss` parameter.
    #
    #   ^
    #
    # @return [Types::FailoverGlobalClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::FailoverGlobalClusterResult#global_cluster #global_cluster} => Types::GlobalCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.failover_global_cluster({
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     target_db_cluster_identifier: "DBClusterIdentifier", # required
    #     allow_data_loss: false,
    #     switchover: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.global_cluster.global_cluster_identifier #=> String
    #   resp.global_cluster.global_cluster_resource_id #=> String
    #   resp.global_cluster.global_cluster_arn #=> String
    #   resp.global_cluster.status #=> String
    #   resp.global_cluster.engine #=> String
    #   resp.global_cluster.engine_version #=> String
    #   resp.global_cluster.database_name #=> String
    #   resp.global_cluster.storage_encrypted #=> Boolean
    #   resp.global_cluster.deletion_protection #=> Boolean
    #   resp.global_cluster.global_cluster_members #=> Array
    #   resp.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.global_cluster.global_cluster_members[0].readers #=> Array
    #   resp.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/FailoverGlobalCluster AWS API Documentation
    #
    # @overload failover_global_cluster(params = {})
    # @param [Hash] params ({})
    def failover_global_cluster(params = {}, options = {})
      req = build_request(:failover_global_cluster, params)
      req.send_request(options)
    end

    # Lists all tags on an Amazon DocumentDB resource.
    #
    # @option params [required, String] :resource_name
    #   The Amazon DocumentDB resource with tags to be listed. This value is
    #   an Amazon Resource Name (ARN).
    #
    # @option params [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    #
    # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagListMessage#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_name: "String", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Modifies a setting for an Amazon DocumentDB cluster. You can change
    # one or more database configuration parameters by specifying these
    # parameters and the new values in the request.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The cluster identifier for the cluster that is being modified. This
    #   parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #
    # @option params [String] :new_db_cluster_identifier
    #   The new cluster identifier for the cluster when renaming a cluster.
    #   This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster2`
    #
    # @option params [Boolean] :apply_immediately
    #   A value that specifies whether the changes in this request and any
    #   pending changes are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the
    #   cluster. If this parameter is set to `false`, changes to the cluster
    #   are applied during the next maintenance window.
    #
    #   The `ApplyImmediately` parameter affects only the
    #   `NewDBClusterIdentifier` and `MasterUserPassword` values. If you set
    #   this parameter value to `false`, the changes to the
    #   `NewDBClusterIdentifier` and `MasterUserPassword` values are applied
    #   during the next maintenance window. All other changes are applied
    #   immediately, regardless of the value of the `ApplyImmediately`
    #   parameter.
    #
    #   Default: `false`
    #
    # @option params [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. You must
    #   specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35.
    #
    #   ^
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   The name of the cluster parameter group to use for the cluster.
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of virtual private cloud (VPC) security groups that the cluster
    #   will belong to.
    #
    # @option params [Integer] :port
    #   The port number on which the cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The same port as the original cluster.
    #
    # @option params [String] :master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except forward slash (/), double quote
    #   ("), or the "at" symbol (@).
    #
    #   Constraints: Must contain from 8 to 100 characters.
    #
    # @option params [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    # @option params [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to Amazon CloudWatch Logs for a specific instance or cluster. The
    #   `EnableLogTypes` and `DisableLogTypes` arrays determine which logs are
    #   exported (or not exported) to CloudWatch Logs.
    #
    # @option params [String] :engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless `ApplyImmediately`
    #   is enabled.
    #
    #   To list all of the available engine versions for Amazon DocumentDB use
    #   the following command:
    #
    #   `aws docdb describe-db-engine-versions --engine docdb --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    # @option params [Boolean] :allow_major_version_upgrade
    #   A value that indicates whether major version upgrades are allowed.
    #
    #   Constraints: You must allow major version upgrades when specifying a
    #   value for the `EngineVersion` parameter that is a different major
    #   version than the DB cluster's current version.
    #
    # @option params [Boolean] :deletion_protection
    #   Specifies whether this cluster can be deleted. If `DeletionProtection`
    #   is enabled, the cluster cannot be deleted unless it is modified and
    #   `DeletionProtection` is disabled. `DeletionProtection` protects
    #   clusters from being accidentally deleted.
    #
    # @option params [String] :storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   For information on storage types for Amazon DocumentDB clusters, see
    #   Cluster storage configurations in the *Amazon DocumentDB Developer
    #   Guide*.
    #
    #   Valid values for storage type - `standard | iopt1`
    #
    #   Default value is `standard `
    #
    # @option params [Boolean] :manage_master_user_password
    #   Specifies whether to manage the master user password with Amazon Web
    #   Services Secrets Manager. If the cluster doesn't manage the master
    #   user password with Amazon Web Services Secrets Manager, you can turn
    #   on this management. In this case, you can't specify
    #   `MasterUserPassword`. If the cluster already manages the master user
    #   password with Amazon Web Services Secrets Manager, and you specify
    #   that the master user password is not managed with Amazon Web Services
    #   Secrets Manager, then you must specify `MasterUserPassword`. In this
    #   case, Amazon DocumentDB deletes the secret and uses the new password
    #   for the master user specified by `MasterUserPassword`.
    #
    # @option params [String] :master_user_secret_kms_key_id
    #   The Amazon Web Services KMS key identifier to encrypt a secret that is
    #   automatically generated and managed in Amazon Web Services Secrets
    #   Manager.
    #
    #   This setting is valid only if both of the following conditions are
    #   met:
    #
    #   * The cluster doesn't manage the master user password in Amazon Web
    #     Services Secrets Manager. If the cluster already manages the master
    #     user password in Amazon Web Services Secrets Manager, you can't
    #     change the KMS key that is used to encrypt the secret.
    #
    #   * You are enabling `ManageMasterUserPassword` to manage the master
    #     user password in Amazon Web Services Secrets Manager. If you are
    #     turning on `ManageMasterUserPassword` and don't specify
    #     `MasterUserSecretKmsKeyId`, then the `aws/secretsmanager` KMS key is
    #     used to encrypt the secret. If the secret is in a different Amazon
    #     Web Services account, then you can't use the `aws/secretsmanager`
    #     KMS key to encrypt the secret, and you must use a customer managed
    #     KMS key.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   There is a default KMS key for your Amazon Web Services account. Your
    #   Amazon Web Services account has a different default KMS key for each
    #   Amazon Web Services Region.
    #
    # @option params [Boolean] :rotate_master_user_password
    #   Specifies whether to rotate the secret managed by Amazon Web Services
    #   Secrets Manager for the master user password.
    #
    #   This setting is valid only if the master user password is managed by
    #   Amazon DocumentDB in Amazon Web Services Secrets Manager for the
    #   cluster. The secret value contains the updated password.
    #
    #   Constraint: You must apply the change immediately when rotating the
    #   master user password.
    #
    # @return [Types::ModifyDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster({
    #     db_cluster_identifier: "String", # required
    #     new_db_cluster_identifier: "String",
    #     apply_immediately: false,
    #     backup_retention_period: 1,
    #     db_cluster_parameter_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     port: 1,
    #     master_user_password: "String",
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"],
    #     },
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     deletion_protection: false,
    #     storage_type: "String",
    #     manage_master_user_password: false,
    #     master_user_secret_kms_key_id: "String",
    #     rotate_master_user_password: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.deletion_protection #=> Boolean
    #   resp.db_cluster.storage_type #=> String
    #   resp.db_cluster.master_user_secret.secret_arn #=> String
    #   resp.db_cluster.master_user_secret.secret_status #=> String
    #   resp.db_cluster.master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBCluster AWS API Documentation
    #
    # @overload modify_db_cluster(params = {})
    # @param [Hash] params ({})
    def modify_db_cluster(params = {}, options = {})
      req = build_request(:modify_db_cluster, params)
      req.send_request(options)
    end

    # Modifies the parameters of a cluster parameter group. To modify more
    # than one parameter, submit a list of the following: `ParameterName`,
    # `ParameterValue`, and `ApplyMethod`. A maximum of 20 parameters can be
    # modified in a single request.
    #
    # <note markdown="1"> Changes to dynamic parameters are applied immediately. Changes to
    # static parameters require a reboot or maintenance window before the
    # change can take effect.
    #
    #  </note>
    #
    # After you create a cluster parameter group, you should wait at least 5
    # minutes before creating your first cluster that uses that cluster
    # parameter group as the default parameter group. This allows Amazon
    # DocumentDB to fully complete the create action before the parameter
    # group is used as the default for a new cluster. This step is
    # especially important for parameters that are critical when creating
    # the default database for a cluster, such as the character set for the
    # default database defined by the `character_set_database` parameter.
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of the cluster parameter group to modify.
    #
    # @option params [required, Array<Types::Parameter>] :parameters
    #   A list of parameters in the cluster parameter group to modify.
    #
    # @return [Types::DBClusterParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterParameterGroupNameMessage#db_cluster_parameter_group_name #db_cluster_parameter_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #     parameters: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterParameterGroup AWS API Documentation
    #
    # @overload modify_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def modify_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:modify_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Adds an attribute and values to, or removes an attribute and values
    # from, a manual cluster snapshot.
    #
    # To share a manual cluster snapshot with other Amazon Web Services
    # accounts, specify `restore` as the `AttributeName`, and use the
    # `ValuesToAdd` parameter to add a list of IDs of the Amazon Web
    # Services accounts that are authorized to restore the manual cluster
    # snapshot. Use the value `all` to make the manual cluster snapshot
    # public, which means that it can be copied or restored by all Amazon
    # Web Services accounts. Do not add the `all` value for any manual
    # cluster snapshots that contain private information that you don't
    # want available to all Amazon Web Services accounts. If a manual
    # cluster snapshot is encrypted, it can be shared, but only by
    # specifying a list of authorized Amazon Web Services account IDs for
    # the `ValuesToAdd` parameter. You can't use `all` as a value for that
    # parameter in this case.
    #
    # @option params [required, String] :db_cluster_snapshot_identifier
    #   The identifier for the cluster snapshot to modify the attributes for.
    #
    # @option params [required, String] :attribute_name
    #   The name of the cluster snapshot attribute to modify.
    #
    #   To manage authorization for other Amazon Web Services accounts to copy
    #   or restore a manual cluster snapshot, set this value to `restore`.
    #
    # @option params [Array<String>] :values_to_add
    #   A list of cluster snapshot attributes to add to the attribute
    #   specified by `AttributeName`.
    #
    #   To authorize other Amazon Web Services accounts to copy or restore a
    #   manual cluster snapshot, set this list to include one or more Amazon
    #   Web Services account IDs. To make the manual cluster snapshot
    #   restorable by any Amazon Web Services account, set it to `all`. Do not
    #   add the `all` value for any manual cluster snapshots that contain
    #   private information that you don't want to be available to all Amazon
    #   Web Services accounts.
    #
    # @option params [Array<String>] :values_to_remove
    #   A list of cluster snapshot attributes to remove from the attribute
    #   specified by `AttributeName`.
    #
    #   To remove authorization for other Amazon Web Services accounts to copy
    #   or restore a manual cluster snapshot, set this list to include one or
    #   more Amazon Web Services account identifiers. To remove authorization
    #   for any Amazon Web Services account to copy or restore the cluster
    #   snapshot, set it to `all` . If you specify `all`, an Amazon Web
    #   Services account whose account ID is explicitly added to the `restore`
    #   attribute can still copy or restore a manual cluster snapshot.
    #
    # @return [Types::ModifyDBClusterSnapshotAttributeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBClusterSnapshotAttributeResult#db_cluster_snapshot_attributes_result #db_cluster_snapshot_attributes_result} => Types::DBClusterSnapshotAttributesResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_cluster_snapshot_attribute({
    #     db_cluster_snapshot_identifier: "String", # required
    #     attribute_name: "String", # required
    #     values_to_add: ["String"],
    #     values_to_remove: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_identifier #=> String
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes #=> Array
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_name #=> String
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values #=> Array
    #   resp.db_cluster_snapshot_attributes_result.db_cluster_snapshot_attributes[0].attribute_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterSnapshotAttribute AWS API Documentation
    #
    # @overload modify_db_cluster_snapshot_attribute(params = {})
    # @param [Hash] params ({})
    def modify_db_cluster_snapshot_attribute(params = {}, options = {})
      req = build_request(:modify_db_cluster_snapshot_attribute, params)
      req.send_request(options)
    end

    # Modifies settings for an instance. You can change one or more database
    # configuration parameters by specifying these parameters and the new
    # values in the request.
    #
    # @option params [required, String] :db_instance_identifier
    #   The instance identifier. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBInstance`.
    #
    #   ^
    #
    # @option params [String] :db_instance_class
    #   The new compute and memory capacity of the instance; for example,
    #   `db.r5.large`. Not all instance classes are available in all Amazon
    #   Web Services Regions.
    #
    #   If you modify the instance class, an outage occurs during the change.
    #   The change is applied during the next maintenance window, unless
    #   `ApplyImmediately` is specified as `true` for this request.
    #
    #   Default: Uses existing setting.
    #
    # @option params [Boolean] :apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the
    #   instance.
    #
    #   If this parameter is set to `false`, changes to the instance are
    #   applied during the next maintenance window. Some parameter changes can
    #   cause an outage and are applied on the next reboot.
    #
    #   Default: `false`
    #
    # @option params [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter
    #   doesn't result in an outage except in the following situation, and
    #   the change is asynchronously applied as soon as possible. If there are
    #   pending actions that cause a reboot, and the maintenance window is
    #   changed to include the current time, changing this parameter causes a
    #   reboot of the instance. If you are moving this window to the current
    #   time, there must be at least 30 minutes between the current time and
    #   end of the window to ensure that pending changes are applied.
    #
    #   Default: Uses existing setting.
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Must be at least 30 minutes.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB
    #   does not perform minor version upgrades regardless of the value set.
    #
    # @option params [String] :new_db_instance_identifier
    #   The new instance identifier for the instance when renaming an
    #   instance. When you change the instance identifier, an instance reboot
    #   occurs immediately if you set `Apply Immediately` to `true`. It occurs
    #   during the next maintenance window if you set `Apply Immediately` to
    #   `false`. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #
    # @option params [String] :ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   instance.
    #
    # @option params [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the DB instance
    #   to snapshots of the DB instance. By default, tags are not copied.
    #
    # @option params [Integer] :promotion_tier
    #   A value that specifies the order in which an Amazon DocumentDB replica
    #   is promoted to the primary instance after a failure of the existing
    #   primary instance.
    #
    #   Default: 1
    #
    #   Valid values: 0-15
    #
    # @option params [Boolean] :enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for the
    #   DB Instance. For more information, see [Using Amazon Performance
    #   Insights][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html
    #
    # @option params [String] :performance_insights_kms_key_id
    #   The KMS key identifier for encryption of Performance Insights data.
    #
    #   The KMS key identifier is the key ARN, key ID, alias ARN, or alias
    #   name for the KMS key.
    #
    #   If you do not specify a value for PerformanceInsightsKMSKeyId, then
    #   Amazon DocumentDB uses your default KMS key. There is a default KMS
    #   key for your Amazon Web Services account. Your Amazon Web Services
    #   account has a different default KMS key for each Amazon Web Services
    #   region.
    #
    # @option params [Boolean] :certificate_rotation_restart
    #   Specifies whether the DB instance is restarted when you rotate your
    #   SSL/TLS certificate.
    #
    #   By default, the DB instance is restarted when you rotate your SSL/TLS
    #   certificate. The certificate is not updated until the DB instance is
    #   restarted.
    #
    #   Set this parameter only if you are *not* using SSL/TLS to connect to
    #   the DB instance.
    #
    #   If you are using SSL/TLS to connect to the DB instance, see [Updating
    #   Your Amazon DocumentDB TLS Certificates][1] and [ Encrypting Data in
    #   Transit][2] in the *Amazon DocumentDB Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html
    #   [2]: https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html
    #
    # @return [Types::ModifyDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_instance({
    #     db_instance_identifier: "String", # required
    #     db_instance_class: "String",
    #     apply_immediately: false,
    #     preferred_maintenance_window: "String",
    #     auto_minor_version_upgrade: false,
    #     new_db_instance_identifier: "String",
    #     ca_certificate_identifier: "String",
    #     copy_tags_to_snapshot: false,
    #     promotion_tier: 1,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     certificate_rotation_restart: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.db_instance.db_instance_identifier #=> String
    #   resp.db_instance.db_instance_class #=> String
    #   resp.db_instance.engine #=> String
    #   resp.db_instance.db_instance_status #=> String
    #   resp.db_instance.endpoint.address #=> String
    #   resp.db_instance.endpoint.port #=> Integer
    #   resp.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.db_instance.instance_create_time #=> Time
    #   resp.db_instance.preferred_backup_window #=> String
    #   resp.db_instance.backup_retention_period #=> Integer
    #   resp.db_instance.vpc_security_groups #=> Array
    #   resp.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instance.vpc_security_groups[0].status #=> String
    #   resp.db_instance.availability_zone #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.db_instance.db_subnet_group.subnets #=> Array
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instance.preferred_maintenance_window #=> String
    #   resp.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.db_instance.pending_modified_values.port #=> Integer
    #   resp.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.db_instance.pending_modified_values.engine_version #=> String
    #   resp.db_instance.pending_modified_values.license_model #=> String
    #   resp.db_instance.pending_modified_values.iops #=> Integer
    #   resp.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instance.pending_modified_values.storage_type #=> String
    #   resp.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instance.latest_restorable_time #=> Time
    #   resp.db_instance.engine_version #=> String
    #   resp.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.db_instance.publicly_accessible #=> Boolean
    #   resp.db_instance.status_infos #=> Array
    #   resp.db_instance.status_infos[0].status_type #=> String
    #   resp.db_instance.status_infos[0].normal #=> Boolean
    #   resp.db_instance.status_infos[0].status #=> String
    #   resp.db_instance.status_infos[0].message #=> String
    #   resp.db_instance.db_cluster_identifier #=> String
    #   resp.db_instance.storage_encrypted #=> Boolean
    #   resp.db_instance.kms_key_id #=> String
    #   resp.db_instance.dbi_resource_id #=> String
    #   resp.db_instance.ca_certificate_identifier #=> String
    #   resp.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.db_instance.promotion_tier #=> Integer
    #   resp.db_instance.db_instance_arn #=> String
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.certificate_details.ca_identifier #=> String
    #   resp.db_instance.certificate_details.valid_till #=> Time
    #   resp.db_instance.performance_insights_enabled #=> Boolean
    #   resp.db_instance.performance_insights_kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBInstance AWS API Documentation
    #
    # @overload modify_db_instance(params = {})
    # @param [Hash] params ({})
    def modify_db_instance(params = {}, options = {})
      req = build_request(:modify_db_instance, params)
      req.send_request(options)
    end

    # Modifies an existing subnet group. subnet groups must contain at least
    # one subnet in at least two Availability Zones in the Amazon Web
    # Services Region.
    #
    # @option params [required, String] :db_subnet_group_name
    #   The name for the subnet group. This value is stored as a lowercase
    #   string. You can't modify the default subnet group.
    #
    #   Constraints: Must match the name of an existing `DBSubnetGroup`. Must
    #   not be default.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [String] :db_subnet_group_description
    #   The description for the subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The Amazon EC2 subnet IDs for the subnet group.
    #
    # @return [Types::ModifyDBSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyDBSubnetGroupResult#db_subnet_group #db_subnet_group} => Types::DBSubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_db_subnet_group({
    #     db_subnet_group_name: "String", # required
    #     db_subnet_group_description: "String",
    #     subnet_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_subnet_group.vpc_id #=> String
    #   resp.db_subnet_group.subnet_group_status #=> String
    #   resp.db_subnet_group.subnets #=> Array
    #   resp.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_subnet_group.db_subnet_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBSubnetGroup AWS API Documentation
    #
    # @overload modify_db_subnet_group(params = {})
    # @param [Hash] params ({})
    def modify_db_subnet_group(params = {}, options = {})
      req = build_request(:modify_db_subnet_group, params)
      req.send_request(options)
    end

    # Modifies an existing Amazon DocumentDB event notification
    # subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the Amazon DocumentDB event notification subscription.
    #
    # @option params [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a topic
    #   and subscribe to it.
    #
    # @option params [String] :source_type
    #   The type of source that is generating the events. For example, if you
    #   want to be notified of events generated by an instance, set this
    #   parameter to `db-instance`. If this value is not specified, all events
    #   are returned.
    #
    #   Valid values: `db-instance`, `db-parameter-group`, `db-security-group`
    #
    # @option params [Array<String>] :event_categories
    #   A list of event categories for a `SourceType` that you want to
    #   subscribe to.
    #
    # @option params [Boolean] :enabled
    #   A Boolean value; set to `true` to activate the subscription.
    #
    # @return [Types::ModifyEventSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyEventSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_event_subscription({
    #     subscription_name: "String", # required
    #     sns_topic_arn: "String",
    #     source_type: "String",
    #     event_categories: ["String"],
    #     enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyEventSubscription AWS API Documentation
    #
    # @overload modify_event_subscription(params = {})
    # @param [Hash] params ({})
    def modify_event_subscription(params = {}, options = {})
      req = build_request(:modify_event_subscription, params)
      req.send_request(options)
    end

    # Modify a setting for an Amazon DocumentDB global cluster. You can
    # change one or more configuration parameters (for example: deletion
    # protection), or the global cluster identifier by specifying these
    # parameters and the new values in the request.
    #
    # <note markdown="1"> This action only applies to Amazon DocumentDB clusters.
    #
    #  </note>
    #
    # @option params [required, String] :global_cluster_identifier
    #   The identifier for the global cluster being modified. This parameter
    #   isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing global cluster.
    #
    #   ^
    #
    # @option params [String] :new_global_cluster_identifier
    #   The new identifier for a global cluster when you modify a global
    #   cluster. This value is stored as a lowercase string.
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #     The first character must be a letter
    #
    #     Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-cluster2`
    #
    # @option params [Boolean] :deletion_protection
    #   Indicates if the global cluster has deletion protection enabled. The
    #   global cluster can't be deleted when deletion protection is enabled.
    #
    # @return [Types::ModifyGlobalClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyGlobalClusterResult#global_cluster #global_cluster} => Types::GlobalCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_global_cluster({
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     new_global_cluster_identifier: "GlobalClusterIdentifier",
    #     deletion_protection: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.global_cluster.global_cluster_identifier #=> String
    #   resp.global_cluster.global_cluster_resource_id #=> String
    #   resp.global_cluster.global_cluster_arn #=> String
    #   resp.global_cluster.status #=> String
    #   resp.global_cluster.engine #=> String
    #   resp.global_cluster.engine_version #=> String
    #   resp.global_cluster.database_name #=> String
    #   resp.global_cluster.storage_encrypted #=> Boolean
    #   resp.global_cluster.deletion_protection #=> Boolean
    #   resp.global_cluster.global_cluster_members #=> Array
    #   resp.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.global_cluster.global_cluster_members[0].readers #=> Array
    #   resp.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyGlobalCluster AWS API Documentation
    #
    # @overload modify_global_cluster(params = {})
    # @param [Hash] params ({})
    def modify_global_cluster(params = {}, options = {})
      req = build_request(:modify_global_cluster, params)
      req.send_request(options)
    end

    # You might need to reboot your instance, usually for maintenance
    # reasons. For example, if you make certain changes, or if you change
    # the cluster parameter group that is associated with the instance, you
    # must reboot the instance for the changes to take effect.
    #
    # Rebooting an instance restarts the database engine service. Rebooting
    # an instance results in a momentary outage, during which the instance
    # status is set to *rebooting*.
    #
    # @option params [required, String] :db_instance_identifier
    #   The instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBInstance`.
    #
    #   ^
    #
    # @option params [Boolean] :force_failover
    #   When `true`, the reboot is conducted through a Multi-AZ failover.
    #
    #   Constraint: You can't specify `true` if the instance is not
    #   configured for Multi-AZ.
    #
    # @return [Types::RebootDBInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootDBInstanceResult#db_instance #db_instance} => Types::DBInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_db_instance({
    #     db_instance_identifier: "String", # required
    #     force_failover: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.db_instance.db_instance_identifier #=> String
    #   resp.db_instance.db_instance_class #=> String
    #   resp.db_instance.engine #=> String
    #   resp.db_instance.db_instance_status #=> String
    #   resp.db_instance.endpoint.address #=> String
    #   resp.db_instance.endpoint.port #=> Integer
    #   resp.db_instance.endpoint.hosted_zone_id #=> String
    #   resp.db_instance.instance_create_time #=> Time
    #   resp.db_instance.preferred_backup_window #=> String
    #   resp.db_instance.backup_retention_period #=> Integer
    #   resp.db_instance.vpc_security_groups #=> Array
    #   resp.db_instance.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_instance.vpc_security_groups[0].status #=> String
    #   resp.db_instance.availability_zone #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_name #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_description #=> String
    #   resp.db_instance.db_subnet_group.vpc_id #=> String
    #   resp.db_instance.db_subnet_group.subnet_group_status #=> String
    #   resp.db_instance.db_subnet_group.subnets #=> Array
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #   resp.db_instance.db_subnet_group.subnets[0].subnet_status #=> String
    #   resp.db_instance.db_subnet_group.db_subnet_group_arn #=> String
    #   resp.db_instance.preferred_maintenance_window #=> String
    #   resp.db_instance.pending_modified_values.db_instance_class #=> String
    #   resp.db_instance.pending_modified_values.allocated_storage #=> Integer
    #   resp.db_instance.pending_modified_values.master_user_password #=> String
    #   resp.db_instance.pending_modified_values.port #=> Integer
    #   resp.db_instance.pending_modified_values.backup_retention_period #=> Integer
    #   resp.db_instance.pending_modified_values.multi_az #=> Boolean
    #   resp.db_instance.pending_modified_values.engine_version #=> String
    #   resp.db_instance.pending_modified_values.license_model #=> String
    #   resp.db_instance.pending_modified_values.iops #=> Integer
    #   resp.db_instance.pending_modified_values.db_instance_identifier #=> String
    #   resp.db_instance.pending_modified_values.storage_type #=> String
    #   resp.db_instance.pending_modified_values.ca_certificate_identifier #=> String
    #   resp.db_instance.pending_modified_values.db_subnet_group_name #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_enable[0] #=> String
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable #=> Array
    #   resp.db_instance.pending_modified_values.pending_cloudwatch_logs_exports.log_types_to_disable[0] #=> String
    #   resp.db_instance.latest_restorable_time #=> Time
    #   resp.db_instance.engine_version #=> String
    #   resp.db_instance.auto_minor_version_upgrade #=> Boolean
    #   resp.db_instance.publicly_accessible #=> Boolean
    #   resp.db_instance.status_infos #=> Array
    #   resp.db_instance.status_infos[0].status_type #=> String
    #   resp.db_instance.status_infos[0].normal #=> Boolean
    #   resp.db_instance.status_infos[0].status #=> String
    #   resp.db_instance.status_infos[0].message #=> String
    #   resp.db_instance.db_cluster_identifier #=> String
    #   resp.db_instance.storage_encrypted #=> Boolean
    #   resp.db_instance.kms_key_id #=> String
    #   resp.db_instance.dbi_resource_id #=> String
    #   resp.db_instance.ca_certificate_identifier #=> String
    #   resp.db_instance.copy_tags_to_snapshot #=> Boolean
    #   resp.db_instance.promotion_tier #=> Integer
    #   resp.db_instance.db_instance_arn #=> String
    #   resp.db_instance.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_instance.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_instance.certificate_details.ca_identifier #=> String
    #   resp.db_instance.certificate_details.valid_till #=> Time
    #   resp.db_instance.performance_insights_enabled #=> Boolean
    #   resp.db_instance.performance_insights_kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RebootDBInstance AWS API Documentation
    #
    # @overload reboot_db_instance(params = {})
    # @param [Hash] params ({})
    def reboot_db_instance(params = {}, options = {})
      req = build_request(:reboot_db_instance, params)
      req.send_request(options)
    end

    # Detaches an Amazon DocumentDB secondary cluster from a global cluster.
    # The cluster becomes a standalone cluster with read-write capability
    # instead of being read-only and receiving data from a primary in a
    # different region.
    #
    # <note markdown="1"> This action only applies to Amazon DocumentDB clusters.
    #
    #  </note>
    #
    # @option params [required, String] :global_cluster_identifier
    #   The cluster identifier to detach from the Amazon DocumentDB global
    #   cluster.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The Amazon Resource Name (ARN) identifying the cluster that was
    #   detached from the Amazon DocumentDB global cluster.
    #
    # @return [Types::RemoveFromGlobalClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveFromGlobalClusterResult#global_cluster #global_cluster} => Types::GlobalCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_from_global_cluster({
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     db_cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.global_cluster.global_cluster_identifier #=> String
    #   resp.global_cluster.global_cluster_resource_id #=> String
    #   resp.global_cluster.global_cluster_arn #=> String
    #   resp.global_cluster.status #=> String
    #   resp.global_cluster.engine #=> String
    #   resp.global_cluster.engine_version #=> String
    #   resp.global_cluster.database_name #=> String
    #   resp.global_cluster.storage_encrypted #=> Boolean
    #   resp.global_cluster.deletion_protection #=> Boolean
    #   resp.global_cluster.global_cluster_members #=> Array
    #   resp.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.global_cluster.global_cluster_members[0].readers #=> Array
    #   resp.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RemoveFromGlobalCluster AWS API Documentation
    #
    # @overload remove_from_global_cluster(params = {})
    # @param [Hash] params ({})
    def remove_from_global_cluster(params = {}, options = {})
      req = build_request(:remove_from_global_cluster, params)
      req.send_request(options)
    end

    # Removes a source identifier from an existing Amazon DocumentDB event
    # notification subscription.
    #
    # @option params [required, String] :subscription_name
    #   The name of the Amazon DocumentDB event notification subscription that
    #   you want to remove a source identifier from.
    #
    # @option params [required, String] :source_identifier
    #   The source identifier to be removed from the subscription, such as the
    #   instance identifier for an instance, or the name of a security group.
    #
    # @return [Types::RemoveSourceIdentifierFromSubscriptionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveSourceIdentifierFromSubscriptionResult#event_subscription #event_subscription} => Types::EventSubscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_source_identifier_from_subscription({
    #     subscription_name: "String", # required
    #     source_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_subscription.customer_aws_id #=> String
    #   resp.event_subscription.cust_subscription_id #=> String
    #   resp.event_subscription.sns_topic_arn #=> String
    #   resp.event_subscription.status #=> String
    #   resp.event_subscription.subscription_creation_time #=> String
    #   resp.event_subscription.source_type #=> String
    #   resp.event_subscription.source_ids_list #=> Array
    #   resp.event_subscription.source_ids_list[0] #=> String
    #   resp.event_subscription.event_categories_list #=> Array
    #   resp.event_subscription.event_categories_list[0] #=> String
    #   resp.event_subscription.enabled #=> Boolean
    #   resp.event_subscription.event_subscription_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RemoveSourceIdentifierFromSubscription AWS API Documentation
    #
    # @overload remove_source_identifier_from_subscription(params = {})
    # @param [Hash] params ({})
    def remove_source_identifier_from_subscription(params = {}, options = {})
      req = build_request(:remove_source_identifier_from_subscription, params)
      req.send_request(options)
    end

    # Removes metadata tags from an Amazon DocumentDB resource.
    #
    # @option params [required, String] :resource_name
    #   The Amazon DocumentDB resource that the tags are removed from. This
    #   value is an Amazon Resource Name (ARN).
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key (name) of the tag to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Modifies the parameters of a cluster parameter group to the default
    # value. To reset specific parameters, submit a list of the following:
    # `ParameterName` and `ApplyMethod`. To reset the entire cluster
    # parameter group, specify the `DBClusterParameterGroupName` and
    # `ResetAllParameters` parameters.
    #
    # When you reset the entire group, dynamic parameters are updated
    # immediately and static parameters are set to `pending-reboot` to take
    # effect on the next DB instance reboot.
    #
    # @option params [required, String] :db_cluster_parameter_group_name
    #   The name of the cluster parameter group to reset.
    #
    # @option params [Boolean] :reset_all_parameters
    #   A value that is set to `true` to reset all parameters in the cluster
    #   parameter group to their default values, and `false` otherwise. You
    #   can't use this parameter if there is a list of parameter names
    #   specified for the `Parameters` parameter.
    #
    # @option params [Array<Types::Parameter>] :parameters
    #   A list of parameter names in the cluster parameter group to reset to
    #   the default values. You can't use this parameter if the
    #   `ResetAllParameters` parameter is set to `true`.
    #
    # @return [Types::DBClusterParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DBClusterParameterGroupNameMessage#db_cluster_parameter_group_name #db_cluster_parameter_group_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_db_cluster_parameter_group({
    #     db_cluster_parameter_group_name: "String", # required
    #     reset_all_parameters: false,
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ResetDBClusterParameterGroup AWS API Documentation
    #
    # @overload reset_db_cluster_parameter_group(params = {})
    # @param [Hash] params ({})
    def reset_db_cluster_parameter_group(params = {}, options = {})
      req = build_request(:reset_db_cluster_parameter_group, params)
      req.send_request(options)
    end

    # Creates a new cluster from a snapshot or cluster snapshot.
    #
    # If a snapshot is specified, the target cluster is created from the
    # source DB snapshot with a default configuration and default security
    # group.
    #
    # If a cluster snapshot is specified, the target cluster is created from
    # the source cluster restore point with the same configuration as the
    # original source DB cluster, except that the new cluster is created
    # with the default security group.
    #
    # @option params [Array<String>] :availability_zones
    #   Provides the list of Amazon EC2 Availability Zones that instances in
    #   the restored DB cluster can be created in.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the cluster to create from the snapshot or cluster
    #   snapshot. This parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-snapshot-id`
    #
    # @option params [required, String] :snapshot_identifier
    #   The identifier for the snapshot or cluster snapshot to restore from.
    #
    #   You can use either the name or the Amazon Resource Name (ARN) to
    #   specify a cluster snapshot. However, you can use only the ARN to
    #   specify a snapshot.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing snapshot.
    #
    #   ^
    #
    # @option params [required, String] :engine
    #   The database engine to use for the new cluster.
    #
    #   Default: The same as source.
    #
    #   Constraint: Must be compatible with the engine of the source.
    #
    # @option params [String] :engine_version
    #   The version of the database engine to use for the new cluster.
    #
    # @option params [Integer] :port
    #   The port number on which the new cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The same port as the original cluster.
    #
    # @option params [String] :db_subnet_group_name
    #   The name of the subnet group to use for the new cluster.
    #
    #   Constraints: If provided, must match the name of an existing
    #   `DBSubnetGroup`.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of virtual private cloud (VPC) security groups that the new
    #   cluster will belong to.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the restored cluster.
    #
    # @option params [String] :kms_key_id
    #   The KMS key identifier to use when restoring an encrypted cluster from
    #   a DB snapshot or cluster snapshot.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a cluster with the same Amazon
    #   Web Services account that owns the KMS encryption key used to encrypt
    #   the new cluster, then you can use the KMS key alias instead of the ARN
    #   for the KMS encryption key.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the snapshot or cluster snapshot in `SnapshotIdentifier` is
    #     encrypted, then the restored cluster is encrypted using the KMS key
    #     that was used to encrypt the snapshot or the cluster snapshot.
    #
    #   * If the snapshot or the cluster snapshot in `SnapshotIdentifier` is
    #     not encrypted, then the restored DB cluster is not encrypted.
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   A list of log types that must be enabled for exporting to Amazon
    #   CloudWatch Logs.
    #
    # @option params [Boolean] :deletion_protection
    #   Specifies whether this cluster can be deleted. If `DeletionProtection`
    #   is enabled, the cluster cannot be deleted unless it is modified and
    #   `DeletionProtection` is disabled. `DeletionProtection` protects
    #   clusters from being accidentally deleted.
    #
    # @option params [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster.
    #
    #   *Type:* String.       *Required:* No.
    #
    #   If this argument is omitted, the default DB cluster parameter group is
    #   used. If supplied, must match the name of an existing default DB
    #   cluster parameter group. The string must consist of from 1 to 255
    #   letters, numbers or hyphens. Its first character must be a letter, and
    #   it cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   For information on storage types for Amazon DocumentDB clusters, see
    #   Cluster storage configurations in the *Amazon DocumentDB Developer
    #   Guide*.
    #
    #   Valid values for storage type - `standard | iopt1`
    #
    #   Default value is `standard `
    #
    # @return [Types::RestoreDBClusterFromSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBClusterFromSnapshotResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_cluster_from_snapshot({
    #     availability_zones: ["String"],
    #     db_cluster_identifier: "String", # required
    #     snapshot_identifier: "String", # required
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     db_subnet_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     enable_cloudwatch_logs_exports: ["String"],
    #     deletion_protection: false,
    #     db_cluster_parameter_group_name: "String",
    #     storage_type: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.deletion_protection #=> Boolean
    #   resp.db_cluster.storage_type #=> String
    #   resp.db_cluster.master_user_secret.secret_arn #=> String
    #   resp.db_cluster.master_user_secret.secret_status #=> String
    #   resp.db_cluster.master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RestoreDBClusterFromSnapshot AWS API Documentation
    #
    # @overload restore_db_cluster_from_snapshot(params = {})
    # @param [Hash] params ({})
    def restore_db_cluster_from_snapshot(params = {}, options = {})
      req = build_request(:restore_db_cluster_from_snapshot, params)
      req.send_request(options)
    end

    # Restores a cluster to an arbitrary point in time. Users can restore to
    # any point in time before `LatestRestorableTime` for up to
    # `BackupRetentionPeriod` days. The target cluster is created from the
    # source cluster with the same configuration as the original cluster,
    # except that the new cluster is created with the default security
    # group.
    #
    # @option params [required, String] :db_cluster_identifier
    #   The name of the new cluster to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :restore_type
    #   The type of restore to be performed. You can specify one of the
    #   following values:
    #
    #   * `full-copy` - The new DB cluster is restored as a full copy of the
    #     source DB cluster.
    #
    #   * `copy-on-write` - The new DB cluster is restored as a clone of the
    #     source DB cluster.
    #
    #   Constraints: You can't specify `copy-on-write` if the engine version
    #   of the source DB cluster is earlier than 1.11.
    #
    #   If you don't specify a `RestoreType` value, then the new DB cluster
    #   is restored as a full copy of the source DB cluster.
    #
    # @option params [required, String] :source_db_cluster_identifier
    #   The identifier of the source cluster from which to restore.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #
    # @option params [Time,DateTime,Date,Integer,String] :restore_to_time
    #   The date and time to restore the cluster to.
    #
    #   Valid values: A time in Universal Coordinated Time (UTC) format.
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the instance.
    #
    #   * Must be specified if the `UseLatestRestorableTime` parameter is not
    #     provided.
    #
    #   * Cannot be specified if the `UseLatestRestorableTime` parameter is
    #     `true`.
    #
    #   * Cannot be specified if the `RestoreType` parameter is
    #     `copy-on-write`.
    #
    #   Example: `2015-03-07T23:45:00Z`
    #
    # @option params [Boolean] :use_latest_restorable_time
    #   A value that is set to `true` to restore the cluster to the latest
    #   restorable backup time, and `false` otherwise.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if the `RestoreToTime` parameter is
    #   provided.
    #
    # @option params [Integer] :port
    #   The port number on which the new cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The default port for the engine.
    #
    # @option params [String] :db_subnet_group_name
    #   The subnet group name to use for the new cluster.
    #
    #   Constraints: If provided, must match the name of an existing
    #   `DBSubnetGroup`.
    #
    #   Example: `mySubnetgroup`
    #
    # @option params [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the new cluster belongs to.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to be assigned to the restored cluster.
    #
    # @option params [String] :kms_key_id
    #   The KMS key identifier to use when restoring an encrypted cluster from
    #   an encrypted cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a cluster with the same Amazon
    #   Web Services account that owns the KMS encryption key used to encrypt
    #   the new cluster, then you can use the KMS key alias instead of the ARN
    #   for the KMS encryption key.
    #
    #   You can restore to a new cluster and encrypt the new cluster with an
    #   KMS key that is different from the KMS key used to encrypt the source
    #   cluster. The new DB cluster is encrypted with the KMS key identified
    #   by the `KmsKeyId` parameter.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the cluster is encrypted, then the restored cluster is encrypted
    #     using the KMS key that was used to encrypt the source cluster.
    #
    #   * If the cluster is not encrypted, then the restored cluster is not
    #     encrypted.
    #
    #   If `DBClusterIdentifier` refers to a cluster that is not encrypted,
    #   then the restore request is rejected.
    #
    # @option params [Array<String>] :enable_cloudwatch_logs_exports
    #   A list of log types that must be enabled for exporting to Amazon
    #   CloudWatch Logs.
    #
    # @option params [Boolean] :deletion_protection
    #   Specifies whether this cluster can be deleted. If `DeletionProtection`
    #   is enabled, the cluster cannot be deleted unless it is modified and
    #   `DeletionProtection` is disabled. `DeletionProtection` protects
    #   clusters from being accidentally deleted.
    #
    # @option params [String] :storage_type
    #   The storage type to associate with the DB cluster.
    #
    #   For information on storage types for Amazon DocumentDB clusters, see
    #   Cluster storage configurations in the *Amazon DocumentDB Developer
    #   Guide*.
    #
    #   Valid values for storage type - `standard | iopt1`
    #
    #   Default value is `standard `
    #
    # @return [Types::RestoreDBClusterToPointInTimeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreDBClusterToPointInTimeResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_db_cluster_to_point_in_time({
    #     db_cluster_identifier: "String", # required
    #     restore_type: "String",
    #     source_db_cluster_identifier: "String", # required
    #     restore_to_time: Time.now,
    #     use_latest_restorable_time: false,
    #     port: 1,
    #     db_subnet_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     enable_cloudwatch_logs_exports: ["String"],
    #     deletion_protection: false,
    #     storage_type: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.deletion_protection #=> Boolean
    #   resp.db_cluster.storage_type #=> String
    #   resp.db_cluster.master_user_secret.secret_arn #=> String
    #   resp.db_cluster.master_user_secret.secret_status #=> String
    #   resp.db_cluster.master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RestoreDBClusterToPointInTime AWS API Documentation
    #
    # @overload restore_db_cluster_to_point_in_time(params = {})
    # @param [Hash] params ({})
    def restore_db_cluster_to_point_in_time(params = {}, options = {})
      req = build_request(:restore_db_cluster_to_point_in_time, params)
      req.send_request(options)
    end

    # Restarts the stopped cluster that is specified by
    # `DBClusterIdentifier`. For more information, see [Stopping and
    # Starting an Amazon DocumentDB Cluster][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html
    #
    # @option params [required, String] :db_cluster_identifier
    #   The identifier of the cluster to restart. Example:
    #   `docdb-2019-05-28-15-24-52`
    #
    # @return [Types::StartDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_db_cluster({
    #     db_cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.deletion_protection #=> Boolean
    #   resp.db_cluster.storage_type #=> String
    #   resp.db_cluster.master_user_secret.secret_arn #=> String
    #   resp.db_cluster.master_user_secret.secret_status #=> String
    #   resp.db_cluster.master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/StartDBCluster AWS API Documentation
    #
    # @overload start_db_cluster(params = {})
    # @param [Hash] params ({})
    def start_db_cluster(params = {}, options = {})
      req = build_request(:start_db_cluster, params)
      req.send_request(options)
    end

    # Stops the running cluster that is specified by `DBClusterIdentifier`.
    # The cluster must be in the *available* state. For more information,
    # see [Stopping and Starting an Amazon DocumentDB Cluster][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/db-cluster-stop-start.html
    #
    # @option params [required, String] :db_cluster_identifier
    #   The identifier of the cluster to stop. Example:
    #   `docdb-2019-05-28-15-24-52`
    #
    # @return [Types::StopDBClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopDBClusterResult#db_cluster #db_cluster} => Types::DBCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_db_cluster({
    #     db_cluster_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.db_cluster.availability_zones #=> Array
    #   resp.db_cluster.availability_zones[0] #=> String
    #   resp.db_cluster.backup_retention_period #=> Integer
    #   resp.db_cluster.db_cluster_identifier #=> String
    #   resp.db_cluster.db_cluster_parameter_group #=> String
    #   resp.db_cluster.db_subnet_group #=> String
    #   resp.db_cluster.status #=> String
    #   resp.db_cluster.percent_progress #=> String
    #   resp.db_cluster.earliest_restorable_time #=> Time
    #   resp.db_cluster.endpoint #=> String
    #   resp.db_cluster.reader_endpoint #=> String
    #   resp.db_cluster.multi_az #=> Boolean
    #   resp.db_cluster.engine #=> String
    #   resp.db_cluster.engine_version #=> String
    #   resp.db_cluster.latest_restorable_time #=> Time
    #   resp.db_cluster.port #=> Integer
    #   resp.db_cluster.master_username #=> String
    #   resp.db_cluster.preferred_backup_window #=> String
    #   resp.db_cluster.preferred_maintenance_window #=> String
    #   resp.db_cluster.replication_source_identifier #=> String
    #   resp.db_cluster.read_replica_identifiers #=> Array
    #   resp.db_cluster.read_replica_identifiers[0] #=> String
    #   resp.db_cluster.db_cluster_members #=> Array
    #   resp.db_cluster.db_cluster_members[0].db_instance_identifier #=> String
    #   resp.db_cluster.db_cluster_members[0].is_cluster_writer #=> Boolean
    #   resp.db_cluster.db_cluster_members[0].db_cluster_parameter_group_status #=> String
    #   resp.db_cluster.db_cluster_members[0].promotion_tier #=> Integer
    #   resp.db_cluster.vpc_security_groups #=> Array
    #   resp.db_cluster.vpc_security_groups[0].vpc_security_group_id #=> String
    #   resp.db_cluster.vpc_security_groups[0].status #=> String
    #   resp.db_cluster.hosted_zone_id #=> String
    #   resp.db_cluster.storage_encrypted #=> Boolean
    #   resp.db_cluster.kms_key_id #=> String
    #   resp.db_cluster.db_cluster_resource_id #=> String
    #   resp.db_cluster.db_cluster_arn #=> String
    #   resp.db_cluster.associated_roles #=> Array
    #   resp.db_cluster.associated_roles[0].role_arn #=> String
    #   resp.db_cluster.associated_roles[0].status #=> String
    #   resp.db_cluster.clone_group_id #=> String
    #   resp.db_cluster.cluster_create_time #=> Time
    #   resp.db_cluster.enabled_cloudwatch_logs_exports #=> Array
    #   resp.db_cluster.enabled_cloudwatch_logs_exports[0] #=> String
    #   resp.db_cluster.deletion_protection #=> Boolean
    #   resp.db_cluster.storage_type #=> String
    #   resp.db_cluster.master_user_secret.secret_arn #=> String
    #   resp.db_cluster.master_user_secret.secret_status #=> String
    #   resp.db_cluster.master_user_secret.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/StopDBCluster AWS API Documentation
    #
    # @overload stop_db_cluster(params = {})
    # @param [Hash] params ({})
    def stop_db_cluster(params = {}, options = {})
      req = build_request(:stop_db_cluster, params)
      req.send_request(options)
    end

    # Switches over the specified secondary Amazon DocumentDB cluster to be
    # the new primary Amazon DocumentDB cluster in the global database
    # cluster.
    #
    # @option params [required, String] :global_cluster_identifier
    #   The identifier of the Amazon DocumentDB global database cluster to
    #   switch over. The identifier is the unique key assigned by the user
    #   when the cluster is created. In other words, it's the name of the
    #   global cluster. This parameter isn’t case-sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing global cluster (Amazon
    #     DocumentDB global database).
    #
    #   * Minimum length of 1. Maximum length of 255.
    #
    #   Pattern: `[A-Za-z][0-9A-Za-z-:._]*`
    #
    # @option params [required, String] :target_db_cluster_identifier
    #   The identifier of the secondary Amazon DocumentDB cluster to promote
    #   to the new primary for the global database cluster. Use the Amazon
    #   Resource Name (ARN) for the identifier so that Amazon DocumentDB can
    #   locate the cluster in its Amazon Web Services region.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing secondary cluster.
    #
    #   * Minimum length of 1. Maximum length of 255.
    #
    #   Pattern: `[A-Za-z][0-9A-Za-z-:._]*`
    #
    # @return [Types::SwitchoverGlobalClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SwitchoverGlobalClusterResult#global_cluster #global_cluster} => Types::GlobalCluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.switchover_global_cluster({
    #     global_cluster_identifier: "GlobalClusterIdentifier", # required
    #     target_db_cluster_identifier: "DBClusterIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.global_cluster.global_cluster_identifier #=> String
    #   resp.global_cluster.global_cluster_resource_id #=> String
    #   resp.global_cluster.global_cluster_arn #=> String
    #   resp.global_cluster.status #=> String
    #   resp.global_cluster.engine #=> String
    #   resp.global_cluster.engine_version #=> String
    #   resp.global_cluster.database_name #=> String
    #   resp.global_cluster.storage_encrypted #=> Boolean
    #   resp.global_cluster.deletion_protection #=> Boolean
    #   resp.global_cluster.global_cluster_members #=> Array
    #   resp.global_cluster.global_cluster_members[0].db_cluster_arn #=> String
    #   resp.global_cluster.global_cluster_members[0].readers #=> Array
    #   resp.global_cluster.global_cluster_members[0].readers[0] #=> String
    #   resp.global_cluster.global_cluster_members[0].is_writer #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/SwitchoverGlobalCluster AWS API Documentation
    #
    # @overload switchover_global_cluster(params = {})
    # @param [Hash] params ({})
    def switchover_global_cluster(params = {}, options = {})
      req = build_request(:switchover_global_cluster, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::DocDB')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-docdb'
      context[:gem_version] = '1.88.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name           | params                         | :delay   | :max_attempts |
    # | --------------------- | ------------------------------ | -------- | ------------- |
    # | db_instance_available | {Client#describe_db_instances} | 30       | 60            |
    # | db_instance_deleted   | {Client#describe_db_instances} | 30       | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        db_instance_available: Waiters::DBInstanceAvailable,
        db_instance_deleted: Waiters::DBInstanceDeleted
      }
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
