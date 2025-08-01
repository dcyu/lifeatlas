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

module Aws::MQ
  # An API client for MQ.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MQ::Client.new(
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

    @identifier = :mq

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
    add_plugin(Aws::MQ::Plugins::Endpoints)

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
    #   @option options [Aws::MQ::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MQ::EndpointParameters`.
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

    # Creates a broker. Note: This API is asynchronous.
    #
    # To create a broker, you must either use the AmazonMQFullAccess IAM
    # policy or include the following EC2 permissions in your IAM policy.
    #
    # * ec2:CreateNetworkInterface
    #
    #   This permission is required to allow Amazon MQ to create an elastic
    #   network interface (ENI) on behalf of your account.
    #
    # * ec2:CreateNetworkInterfacePermission
    #
    #   This permission is required to attach the ENI to the broker
    #   instance.
    #
    # * ec2:DeleteNetworkInterface
    #
    # * ec2:DeleteNetworkInterfacePermission
    #
    # * ec2:DetachNetworkInterface
    #
    # * ec2:DescribeInternetGateways
    #
    # * ec2:DescribeNetworkInterfaces
    #
    # * ec2:DescribeNetworkInterfacePermissions
    #
    # * ec2:DescribeRouteTables
    #
    # * ec2:DescribeSecurityGroups
    #
    # * ec2:DescribeSubnets
    #
    # * ec2:DescribeVpcs
    #
    # For more information, see [Create an IAM User and Get Your Amazon Web
    # Services Credentials][1] and [Never Modify or Delete the Amazon MQ
    # Elastic Network Interface][2] in the *Amazon MQ Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/amazon-mq-setting-up.html#create-iam-user
    # [2]: https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/connecting-to-amazon-mq.html#never-modify-delete-elastic-network-interface
    #
    # @option params [String] :authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #
    # @option params [required, String] :broker_name
    #
    # @option params [Types::ConfigurationId] :configuration
    #   A list of information about the configuration.
    #
    # @option params [String] :creator_request_id
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :deployment_mode
    #   The broker's deployment mode.
    #
    # @option params [Types::EncryptionOptions] :encryption_options
    #   Encryption options for the broker.
    #
    # @option params [required, String] :engine_type
    #   The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
    #
    # @option params [String] :engine_version
    #
    # @option params [required, String] :host_instance_type
    #
    # @option params [Types::LdapServerMetadataInput] :ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker.
    #
    #   Does not apply to RabbitMQ brokers.
    #
    # @option params [Types::Logs] :logs
    #   The list of information about logs to be enabled for the specified
    #   broker.
    #
    # @option params [Types::WeeklyStartTime] :maintenance_window_start_time
    #   The scheduled time period relative to UTC during which Amazon MQ
    #   begins to apply pending updates or patches to the broker.
    #
    # @option params [required, Boolean] :publicly_accessible
    #
    # @option params [Array<String>] :security_groups
    #
    # @option params [String] :storage_type
    #   The broker's storage type.
    #
    #   EFS is not supported for RabbitMQ engine type.
    #
    # @option params [Array<String>] :subnet_ids
    #
    # @option params [Hash<String,String>] :tags
    #
    # @option params [required, Array<Types::User>] :users
    #
    # @option params [String] :data_replication_mode
    #   Specifies whether a broker is a part of a data replication pair.
    #
    # @option params [String] :data_replication_primary_broker_arn
    #
    # @return [Types::CreateBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBrokerResponse#broker_arn #broker_arn} => String
    #   * {Types::CreateBrokerResponse#broker_id #broker_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_broker({
    #     authentication_strategy: "SIMPLE", # accepts SIMPLE, LDAP
    #     auto_minor_version_upgrade: false,
    #     broker_name: "__string", # required
    #     configuration: {
    #       id: "__string", # required
    #       revision: 1,
    #     },
    #     creator_request_id: "__string",
    #     deployment_mode: "SINGLE_INSTANCE", # required, accepts SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ, CLUSTER_MULTI_AZ
    #     encryption_options: {
    #       kms_key_id: "__string",
    #       use_aws_owned_key: false, # required
    #     },
    #     engine_type: "ACTIVEMQ", # required, accepts ACTIVEMQ, RABBITMQ
    #     engine_version: "__string",
    #     host_instance_type: "__string", # required
    #     ldap_server_metadata: {
    #       hosts: ["__string"], # required
    #       role_base: "__string", # required
    #       role_name: "__string",
    #       role_search_matching: "__string", # required
    #       role_search_subtree: false,
    #       service_account_password: "__string", # required
    #       service_account_username: "__string", # required
    #       user_base: "__string", # required
    #       user_role_name: "__string",
    #       user_search_matching: "__string", # required
    #       user_search_subtree: false,
    #     },
    #     logs: {
    #       audit: false,
    #       general: false,
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: "MONDAY", # required, accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #       time_of_day: "__string", # required
    #       time_zone: "__string",
    #     },
    #     publicly_accessible: false, # required
    #     security_groups: ["__string"],
    #     storage_type: "EBS", # accepts EBS, EFS
    #     subnet_ids: ["__string"],
    #     tags: {
    #       "__string" => "__string",
    #     },
    #     users: [ # required
    #       {
    #         console_access: false,
    #         groups: ["__string"],
    #         password: "__string", # required
    #         username: "__string", # required
    #         replication_user: false,
    #       },
    #     ],
    #     data_replication_mode: "NONE", # accepts NONE, CRDR
    #     data_replication_primary_broker_arn: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_arn #=> String
    #   resp.broker_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateBroker AWS API Documentation
    #
    # @overload create_broker(params = {})
    # @param [Hash] params ({})
    def create_broker(params = {}, options = {})
      req = build_request(:create_broker, params)
      req.send_request(options)
    end

    # Creates a new configuration for the specified configuration name.
    # Amazon MQ uses the default configuration (the engine type and
    # version).
    #
    # @option params [String] :authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #
    # @option params [required, String] :engine_type
    #   The type of broker engine. Amazon MQ supports ActiveMQ and RabbitMQ.
    #
    # @option params [String] :engine_version
    #
    # @option params [required, String] :name
    #
    # @option params [Hash<String,String>] :tags
    #
    # @return [Types::CreateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfigurationResponse#arn #arn} => String
    #   * {Types::CreateConfigurationResponse#authentication_strategy #authentication_strategy} => String
    #   * {Types::CreateConfigurationResponse#created #created} => Time
    #   * {Types::CreateConfigurationResponse#id #id} => String
    #   * {Types::CreateConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::CreateConfigurationResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration({
    #     authentication_strategy: "SIMPLE", # accepts SIMPLE, LDAP
    #     engine_type: "ACTIVEMQ", # required, accepts ACTIVEMQ, RABBITMQ
    #     engine_version: "__string",
    #     name: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.authentication_strategy #=> String, one of "SIMPLE", "LDAP"
    #   resp.created #=> Time
    #   resp.id #=> String
    #   resp.latest_revision.created #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateConfiguration AWS API Documentation
    #
    # @overload create_configuration(params = {})
    # @param [Hash] params ({})
    def create_configuration(params = {}, options = {})
      req = build_request(:create_configuration, params)
      req.send_request(options)
    end

    # Add a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [Hash<String,String>] :tags
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags({
    #     resource_arn: "__string", # required
    #     tags: {
    #       "__string" => "__string",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateTags AWS API Documentation
    #
    # @overload create_tags(params = {})
    # @param [Hash] params ({})
    def create_tags(params = {}, options = {})
      req = build_request(:create_tags, params)
      req.send_request(options)
    end

    # Creates an ActiveMQ user.
    #
    # Do not add personally identifiable information (PII) or other
    # confidential or sensitive information in broker usernames. Broker
    # usernames are accessible to other Amazon Web Services services,
    # including CloudWatch Logs. Broker usernames are not intended to be
    # used for private or sensitive data.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [Boolean] :console_access
    #
    # @option params [Array<String>] :groups
    #
    # @option params [required, String] :password
    #
    # @option params [required, String] :username
    #
    # @option params [Boolean] :replication_user
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     broker_id: "__string", # required
    #     console_access: false,
    #     groups: ["__string"],
    #     password: "__string", # required
    #     username: "__string", # required
    #     replication_user: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deletes a broker. Note: This API is asynchronous.
    #
    # @option params [required, String] :broker_id
    #
    # @return [Types::DeleteBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBrokerResponse#broker_id #broker_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_broker({
    #     broker_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteBroker AWS API Documentation
    #
    # @overload delete_broker(params = {})
    # @param [Hash] params ({})
    def delete_broker(params = {}, options = {})
      req = build_request(:delete_broker, params)
      req.send_request(options)
    end

    # Deletes the specified configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @return [Types::DeleteConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConfigurationResponse#configuration_id #configuration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration({
    #     configuration_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteConfiguration AWS API Documentation
    #
    # @overload delete_configuration(params = {})
    # @param [Hash] params ({})
    def delete_configuration(params = {}, options = {})
      req = build_request(:delete_configuration, params)
      req.send_request(options)
    end

    # Removes a tag from a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @option params [required, Array<String>] :tag_keys
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Deletes an ActiveMQ user.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [required, String] :username
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     broker_id: "__string", # required
    #     username: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Returns information about the specified broker.
    #
    # @option params [required, String] :broker_id
    #
    # @return [Types::DescribeBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBrokerResponse#actions_required #actions_required} => Array&lt;Types::ActionRequired&gt;
    #   * {Types::DescribeBrokerResponse#authentication_strategy #authentication_strategy} => String
    #   * {Types::DescribeBrokerResponse#auto_minor_version_upgrade #auto_minor_version_upgrade} => Boolean
    #   * {Types::DescribeBrokerResponse#broker_arn #broker_arn} => String
    #   * {Types::DescribeBrokerResponse#broker_id #broker_id} => String
    #   * {Types::DescribeBrokerResponse#broker_instances #broker_instances} => Array&lt;Types::BrokerInstance&gt;
    #   * {Types::DescribeBrokerResponse#broker_name #broker_name} => String
    #   * {Types::DescribeBrokerResponse#broker_state #broker_state} => String
    #   * {Types::DescribeBrokerResponse#configurations #configurations} => Types::Configurations
    #   * {Types::DescribeBrokerResponse#created #created} => Time
    #   * {Types::DescribeBrokerResponse#deployment_mode #deployment_mode} => String
    #   * {Types::DescribeBrokerResponse#encryption_options #encryption_options} => Types::EncryptionOptions
    #   * {Types::DescribeBrokerResponse#engine_type #engine_type} => String
    #   * {Types::DescribeBrokerResponse#engine_version #engine_version} => String
    #   * {Types::DescribeBrokerResponse#host_instance_type #host_instance_type} => String
    #   * {Types::DescribeBrokerResponse#ldap_server_metadata #ldap_server_metadata} => Types::LdapServerMetadataOutput
    #   * {Types::DescribeBrokerResponse#logs #logs} => Types::LogsSummary
    #   * {Types::DescribeBrokerResponse#maintenance_window_start_time #maintenance_window_start_time} => Types::WeeklyStartTime
    #   * {Types::DescribeBrokerResponse#pending_authentication_strategy #pending_authentication_strategy} => String
    #   * {Types::DescribeBrokerResponse#pending_engine_version #pending_engine_version} => String
    #   * {Types::DescribeBrokerResponse#pending_host_instance_type #pending_host_instance_type} => String
    #   * {Types::DescribeBrokerResponse#pending_ldap_server_metadata #pending_ldap_server_metadata} => Types::LdapServerMetadataOutput
    #   * {Types::DescribeBrokerResponse#pending_security_groups #pending_security_groups} => Array&lt;String&gt;
    #   * {Types::DescribeBrokerResponse#publicly_accessible #publicly_accessible} => Boolean
    #   * {Types::DescribeBrokerResponse#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::DescribeBrokerResponse#storage_type #storage_type} => String
    #   * {Types::DescribeBrokerResponse#subnet_ids #subnet_ids} => Array&lt;String&gt;
    #   * {Types::DescribeBrokerResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeBrokerResponse#users #users} => Array&lt;Types::UserSummary&gt;
    #   * {Types::DescribeBrokerResponse#data_replication_metadata #data_replication_metadata} => Types::DataReplicationMetadataOutput
    #   * {Types::DescribeBrokerResponse#data_replication_mode #data_replication_mode} => String
    #   * {Types::DescribeBrokerResponse#pending_data_replication_metadata #pending_data_replication_metadata} => Types::DataReplicationMetadataOutput
    #   * {Types::DescribeBrokerResponse#pending_data_replication_mode #pending_data_replication_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_broker({
    #     broker_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.actions_required #=> Array
    #   resp.actions_required[0].action_required_code #=> String
    #   resp.actions_required[0].action_required_info #=> String
    #   resp.authentication_strategy #=> String, one of "SIMPLE", "LDAP"
    #   resp.auto_minor_version_upgrade #=> Boolean
    #   resp.broker_arn #=> String
    #   resp.broker_id #=> String
    #   resp.broker_instances #=> Array
    #   resp.broker_instances[0].console_url #=> String
    #   resp.broker_instances[0].endpoints #=> Array
    #   resp.broker_instances[0].endpoints[0] #=> String
    #   resp.broker_instances[0].ip_address #=> String
    #   resp.broker_name #=> String
    #   resp.broker_state #=> String, one of "CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS", "CRITICAL_ACTION_REQUIRED", "REPLICA"
    #   resp.configurations.current.id #=> String
    #   resp.configurations.current.revision #=> Integer
    #   resp.configurations.history #=> Array
    #   resp.configurations.history[0].id #=> String
    #   resp.configurations.history[0].revision #=> Integer
    #   resp.configurations.pending.id #=> String
    #   resp.configurations.pending.revision #=> Integer
    #   resp.created #=> Time
    #   resp.deployment_mode #=> String, one of "SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"
    #   resp.encryption_options.kms_key_id #=> String
    #   resp.encryption_options.use_aws_owned_key #=> Boolean
    #   resp.engine_type #=> String, one of "ACTIVEMQ", "RABBITMQ"
    #   resp.engine_version #=> String
    #   resp.host_instance_type #=> String
    #   resp.ldap_server_metadata.hosts #=> Array
    #   resp.ldap_server_metadata.hosts[0] #=> String
    #   resp.ldap_server_metadata.role_base #=> String
    #   resp.ldap_server_metadata.role_name #=> String
    #   resp.ldap_server_metadata.role_search_matching #=> String
    #   resp.ldap_server_metadata.role_search_subtree #=> Boolean
    #   resp.ldap_server_metadata.service_account_username #=> String
    #   resp.ldap_server_metadata.user_base #=> String
    #   resp.ldap_server_metadata.user_role_name #=> String
    #   resp.ldap_server_metadata.user_search_matching #=> String
    #   resp.ldap_server_metadata.user_search_subtree #=> Boolean
    #   resp.logs.audit #=> Boolean
    #   resp.logs.audit_log_group #=> String
    #   resp.logs.general #=> Boolean
    #   resp.logs.general_log_group #=> String
    #   resp.logs.pending.audit #=> Boolean
    #   resp.logs.pending.general #=> Boolean
    #   resp.maintenance_window_start_time.day_of_week #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.maintenance_window_start_time.time_of_day #=> String
    #   resp.maintenance_window_start_time.time_zone #=> String
    #   resp.pending_authentication_strategy #=> String, one of "SIMPLE", "LDAP"
    #   resp.pending_engine_version #=> String
    #   resp.pending_host_instance_type #=> String
    #   resp.pending_ldap_server_metadata.hosts #=> Array
    #   resp.pending_ldap_server_metadata.hosts[0] #=> String
    #   resp.pending_ldap_server_metadata.role_base #=> String
    #   resp.pending_ldap_server_metadata.role_name #=> String
    #   resp.pending_ldap_server_metadata.role_search_matching #=> String
    #   resp.pending_ldap_server_metadata.role_search_subtree #=> Boolean
    #   resp.pending_ldap_server_metadata.service_account_username #=> String
    #   resp.pending_ldap_server_metadata.user_base #=> String
    #   resp.pending_ldap_server_metadata.user_role_name #=> String
    #   resp.pending_ldap_server_metadata.user_search_matching #=> String
    #   resp.pending_ldap_server_metadata.user_search_subtree #=> Boolean
    #   resp.pending_security_groups #=> Array
    #   resp.pending_security_groups[0] #=> String
    #   resp.publicly_accessible #=> Boolean
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.storage_type #=> String, one of "EBS", "EFS"
    #   resp.subnet_ids #=> Array
    #   resp.subnet_ids[0] #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #   resp.users #=> Array
    #   resp.users[0].pending_change #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.users[0].username #=> String
    #   resp.data_replication_metadata.data_replication_counterpart.broker_id #=> String
    #   resp.data_replication_metadata.data_replication_counterpart.region #=> String
    #   resp.data_replication_metadata.data_replication_role #=> String
    #   resp.data_replication_mode #=> String, one of "NONE", "CRDR"
    #   resp.pending_data_replication_metadata.data_replication_counterpart.broker_id #=> String
    #   resp.pending_data_replication_metadata.data_replication_counterpart.region #=> String
    #   resp.pending_data_replication_metadata.data_replication_role #=> String
    #   resp.pending_data_replication_mode #=> String, one of "NONE", "CRDR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBroker AWS API Documentation
    #
    # @overload describe_broker(params = {})
    # @param [Hash] params ({})
    def describe_broker(params = {}, options = {})
      req = build_request(:describe_broker, params)
      req.send_request(options)
    end

    # Describe available engine types and versions.
    #
    # @option params [String] :engine_type
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::DescribeBrokerEngineTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBrokerEngineTypesResponse#broker_engine_types #broker_engine_types} => Array&lt;Types::BrokerEngineType&gt;
    #   * {Types::DescribeBrokerEngineTypesResponse#max_results #max_results} => Integer
    #   * {Types::DescribeBrokerEngineTypesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_broker_engine_types({
    #     engine_type: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_engine_types #=> Array
    #   resp.broker_engine_types[0].engine_type #=> String, one of "ACTIVEMQ", "RABBITMQ"
    #   resp.broker_engine_types[0].engine_versions #=> Array
    #   resp.broker_engine_types[0].engine_versions[0].name #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerEngineTypes AWS API Documentation
    #
    # @overload describe_broker_engine_types(params = {})
    # @param [Hash] params ({})
    def describe_broker_engine_types(params = {}, options = {})
      req = build_request(:describe_broker_engine_types, params)
      req.send_request(options)
    end

    # Describe available broker instance options.
    #
    # @option params [String] :engine_type
    #
    # @option params [String] :host_instance_type
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @option params [String] :storage_type
    #
    # @return [Types::DescribeBrokerInstanceOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBrokerInstanceOptionsResponse#broker_instance_options #broker_instance_options} => Array&lt;Types::BrokerInstanceOption&gt;
    #   * {Types::DescribeBrokerInstanceOptionsResponse#max_results #max_results} => Integer
    #   * {Types::DescribeBrokerInstanceOptionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_broker_instance_options({
    #     engine_type: "__string",
    #     host_instance_type: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     storage_type: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_instance_options #=> Array
    #   resp.broker_instance_options[0].availability_zones #=> Array
    #   resp.broker_instance_options[0].availability_zones[0].name #=> String
    #   resp.broker_instance_options[0].engine_type #=> String, one of "ACTIVEMQ", "RABBITMQ"
    #   resp.broker_instance_options[0].host_instance_type #=> String
    #   resp.broker_instance_options[0].storage_type #=> String, one of "EBS", "EFS"
    #   resp.broker_instance_options[0].supported_deployment_modes #=> Array
    #   resp.broker_instance_options[0].supported_deployment_modes[0] #=> String, one of "SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"
    #   resp.broker_instance_options[0].supported_engine_versions #=> Array
    #   resp.broker_instance_options[0].supported_engine_versions[0] #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeBrokerInstanceOptions AWS API Documentation
    #
    # @overload describe_broker_instance_options(params = {})
    # @param [Hash] params ({})
    def describe_broker_instance_options(params = {}, options = {})
      req = build_request(:describe_broker_instance_options, params)
      req.send_request(options)
    end

    # Returns information about the specified configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @return [Types::DescribeConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationResponse#arn #arn} => String
    #   * {Types::DescribeConfigurationResponse#authentication_strategy #authentication_strategy} => String
    #   * {Types::DescribeConfigurationResponse#created #created} => Time
    #   * {Types::DescribeConfigurationResponse#description #description} => String
    #   * {Types::DescribeConfigurationResponse#engine_type #engine_type} => String
    #   * {Types::DescribeConfigurationResponse#engine_version #engine_version} => String
    #   * {Types::DescribeConfigurationResponse#id #id} => String
    #   * {Types::DescribeConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::DescribeConfigurationResponse#name #name} => String
    #   * {Types::DescribeConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration({
    #     configuration_id: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.authentication_strategy #=> String, one of "SIMPLE", "LDAP"
    #   resp.created #=> Time
    #   resp.description #=> String
    #   resp.engine_type #=> String, one of "ACTIVEMQ", "RABBITMQ"
    #   resp.engine_version #=> String
    #   resp.id #=> String
    #   resp.latest_revision.created #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfiguration AWS API Documentation
    #
    # @overload describe_configuration(params = {})
    # @param [Hash] params ({})
    def describe_configuration(params = {}, options = {})
      req = build_request(:describe_configuration, params)
      req.send_request(options)
    end

    # Returns the specified configuration revision for the specified
    # configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @option params [required, String] :configuration_revision
    #
    # @return [Types::DescribeConfigurationRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationRevisionResponse#configuration_id #configuration_id} => String
    #   * {Types::DescribeConfigurationRevisionResponse#created #created} => Time
    #   * {Types::DescribeConfigurationRevisionResponse#data #data} => String
    #   * {Types::DescribeConfigurationRevisionResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_revision({
    #     configuration_id: "__string", # required
    #     configuration_revision: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_id #=> String
    #   resp.created #=> Time
    #   resp.data #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeConfigurationRevision AWS API Documentation
    #
    # @overload describe_configuration_revision(params = {})
    # @param [Hash] params ({})
    def describe_configuration_revision(params = {}, options = {})
      req = build_request(:describe_configuration_revision, params)
      req.send_request(options)
    end

    # Returns information about an ActiveMQ user.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [required, String] :username
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#broker_id #broker_id} => String
    #   * {Types::DescribeUserResponse#console_access #console_access} => Boolean
    #   * {Types::DescribeUserResponse#groups #groups} => Array&lt;String&gt;
    #   * {Types::DescribeUserResponse#pending #pending} => Types::UserPendingChanges
    #   * {Types::DescribeUserResponse#username #username} => String
    #   * {Types::DescribeUserResponse#replication_user #replication_user} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     broker_id: "__string", # required
    #     username: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_id #=> String
    #   resp.console_access #=> Boolean
    #   resp.groups #=> Array
    #   resp.groups[0] #=> String
    #   resp.pending.console_access #=> Boolean
    #   resp.pending.groups #=> Array
    #   resp.pending.groups[0] #=> String
    #   resp.pending.pending_change #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.username #=> String
    #   resp.replication_user #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Returns a list of all brokers.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListBrokersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrokersResponse#broker_summaries #broker_summaries} => Array&lt;Types::BrokerSummary&gt;
    #   * {Types::ListBrokersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_brokers({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_summaries #=> Array
    #   resp.broker_summaries[0].broker_arn #=> String
    #   resp.broker_summaries[0].broker_id #=> String
    #   resp.broker_summaries[0].broker_name #=> String
    #   resp.broker_summaries[0].broker_state #=> String, one of "CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS", "CRITICAL_ACTION_REQUIRED", "REPLICA"
    #   resp.broker_summaries[0].created #=> Time
    #   resp.broker_summaries[0].deployment_mode #=> String, one of "SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"
    #   resp.broker_summaries[0].engine_type #=> String, one of "ACTIVEMQ", "RABBITMQ"
    #   resp.broker_summaries[0].host_instance_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListBrokers AWS API Documentation
    #
    # @overload list_brokers(params = {})
    # @param [Hash] params ({})
    def list_brokers(params = {}, options = {})
      req = build_request(:list_brokers, params)
      req.send_request(options)
    end

    # Returns a list of all revisions for the specified configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListConfigurationRevisionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationRevisionsResponse#configuration_id #configuration_id} => String
    #   * {Types::ListConfigurationRevisionsResponse#max_results #max_results} => Integer
    #   * {Types::ListConfigurationRevisionsResponse#next_token #next_token} => String
    #   * {Types::ListConfigurationRevisionsResponse#revisions #revisions} => Array&lt;Types::ConfigurationRevision&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_revisions({
    #     configuration_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_id #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #   resp.revisions #=> Array
    #   resp.revisions[0].created #=> Time
    #   resp.revisions[0].description #=> String
    #   resp.revisions[0].revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurationRevisions AWS API Documentation
    #
    # @overload list_configuration_revisions(params = {})
    # @param [Hash] params ({})
    def list_configuration_revisions(params = {}, options = {})
      req = build_request(:list_configuration_revisions, params)
      req.send_request(options)
    end

    # Returns a list of all configurations.
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConfigurationsResponse#configurations #configurations} => Array&lt;Types::Configuration&gt;
    #   * {Types::ListConfigurationsResponse#max_results #max_results} => Integer
    #   * {Types::ListConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations({
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0].arn #=> String
    #   resp.configurations[0].authentication_strategy #=> String, one of "SIMPLE", "LDAP"
    #   resp.configurations[0].created #=> Time
    #   resp.configurations[0].description #=> String
    #   resp.configurations[0].engine_type #=> String, one of "ACTIVEMQ", "RABBITMQ"
    #   resp.configurations[0].engine_version #=> String
    #   resp.configurations[0].id #=> String
    #   resp.configurations[0].latest_revision.created #=> Time
    #   resp.configurations[0].latest_revision.description #=> String
    #   resp.configurations[0].latest_revision.revision #=> Integer
    #   resp.configurations[0].name #=> String
    #   resp.configurations[0].tags #=> Hash
    #   resp.configurations[0].tags["__string"] #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListConfigurations AWS API Documentation
    #
    # @overload list_configurations(params = {})
    # @param [Hash] params ({})
    def list_configurations(params = {}, options = {})
      req = build_request(:list_configurations, params)
      req.send_request(options)
    end

    # Lists tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_arn: "__string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["__string"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Returns a list of all ActiveMQ users.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#broker_id #broker_id} => String
    #   * {Types::ListUsersResponse#max_results #max_results} => Integer
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::UserSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     broker_id: "__string", # required
    #     max_results: 1,
    #     next_token: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_id #=> String
    #   resp.max_results #=> Integer
    #   resp.next_token #=> String
    #   resp.users #=> Array
    #   resp.users[0].pending_change #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.users[0].username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Promotes a data replication replica broker to the primary broker role.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [required, String] :mode
    #   The Promote mode requested.
    #
    # @return [Types::PromoteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PromoteResponse#broker_id #broker_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.promote({
    #     broker_id: "__string", # required
    #     mode: "SWITCHOVER", # required, accepts SWITCHOVER, FAILOVER
    #   })
    #
    # @example Response structure
    #
    #   resp.broker_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/Promote AWS API Documentation
    #
    # @overload promote(params = {})
    # @param [Hash] params ({})
    def promote(params = {}, options = {})
      req = build_request(:promote, params)
      req.send_request(options)
    end

    # Reboots a broker. Note: This API is asynchronous.
    #
    # @option params [required, String] :broker_id
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_broker({
    #     broker_id: "__string", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/RebootBroker AWS API Documentation
    #
    # @overload reboot_broker(params = {})
    # @param [Hash] params ({})
    def reboot_broker(params = {}, options = {})
      req = build_request(:reboot_broker, params)
      req.send_request(options)
    end

    # Adds a pending configuration change to a broker.
    #
    # @option params [String] :authentication_strategy
    #   Optional. The authentication strategy used to secure the broker. The
    #   default is SIMPLE.
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #
    # @option params [required, String] :broker_id
    #
    # @option params [Types::ConfigurationId] :configuration
    #   A list of information about the configuration.
    #
    # @option params [String] :engine_version
    #
    # @option params [String] :host_instance_type
    #
    # @option params [Types::LdapServerMetadataInput] :ldap_server_metadata
    #   Optional. The metadata of the LDAP server used to authenticate and
    #   authorize connections to the broker.
    #
    #   Does not apply to RabbitMQ brokers.
    #
    # @option params [Types::Logs] :logs
    #   The list of information about logs to be enabled for the specified
    #   broker.
    #
    # @option params [Types::WeeklyStartTime] :maintenance_window_start_time
    #   The scheduled time period relative to UTC during which Amazon MQ
    #   begins to apply pending updates or patches to the broker.
    #
    # @option params [Array<String>] :security_groups
    #
    # @option params [String] :data_replication_mode
    #   Specifies whether a broker is a part of a data replication pair.
    #
    # @return [Types::UpdateBrokerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrokerResponse#authentication_strategy #authentication_strategy} => String
    #   * {Types::UpdateBrokerResponse#auto_minor_version_upgrade #auto_minor_version_upgrade} => Boolean
    #   * {Types::UpdateBrokerResponse#broker_id #broker_id} => String
    #   * {Types::UpdateBrokerResponse#configuration #configuration} => Types::ConfigurationId
    #   * {Types::UpdateBrokerResponse#engine_version #engine_version} => String
    #   * {Types::UpdateBrokerResponse#host_instance_type #host_instance_type} => String
    #   * {Types::UpdateBrokerResponse#ldap_server_metadata #ldap_server_metadata} => Types::LdapServerMetadataOutput
    #   * {Types::UpdateBrokerResponse#logs #logs} => Types::Logs
    #   * {Types::UpdateBrokerResponse#maintenance_window_start_time #maintenance_window_start_time} => Types::WeeklyStartTime
    #   * {Types::UpdateBrokerResponse#security_groups #security_groups} => Array&lt;String&gt;
    #   * {Types::UpdateBrokerResponse#data_replication_metadata #data_replication_metadata} => Types::DataReplicationMetadataOutput
    #   * {Types::UpdateBrokerResponse#data_replication_mode #data_replication_mode} => String
    #   * {Types::UpdateBrokerResponse#pending_data_replication_metadata #pending_data_replication_metadata} => Types::DataReplicationMetadataOutput
    #   * {Types::UpdateBrokerResponse#pending_data_replication_mode #pending_data_replication_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_broker({
    #     authentication_strategy: "SIMPLE", # accepts SIMPLE, LDAP
    #     auto_minor_version_upgrade: false,
    #     broker_id: "__string", # required
    #     configuration: {
    #       id: "__string", # required
    #       revision: 1,
    #     },
    #     engine_version: "__string",
    #     host_instance_type: "__string",
    #     ldap_server_metadata: {
    #       hosts: ["__string"], # required
    #       role_base: "__string", # required
    #       role_name: "__string",
    #       role_search_matching: "__string", # required
    #       role_search_subtree: false,
    #       service_account_password: "__string", # required
    #       service_account_username: "__string", # required
    #       user_base: "__string", # required
    #       user_role_name: "__string",
    #       user_search_matching: "__string", # required
    #       user_search_subtree: false,
    #     },
    #     logs: {
    #       audit: false,
    #       general: false,
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: "MONDAY", # required, accepts MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY
    #       time_of_day: "__string", # required
    #       time_zone: "__string",
    #     },
    #     security_groups: ["__string"],
    #     data_replication_mode: "NONE", # accepts NONE, CRDR
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication_strategy #=> String, one of "SIMPLE", "LDAP"
    #   resp.auto_minor_version_upgrade #=> Boolean
    #   resp.broker_id #=> String
    #   resp.configuration.id #=> String
    #   resp.configuration.revision #=> Integer
    #   resp.engine_version #=> String
    #   resp.host_instance_type #=> String
    #   resp.ldap_server_metadata.hosts #=> Array
    #   resp.ldap_server_metadata.hosts[0] #=> String
    #   resp.ldap_server_metadata.role_base #=> String
    #   resp.ldap_server_metadata.role_name #=> String
    #   resp.ldap_server_metadata.role_search_matching #=> String
    #   resp.ldap_server_metadata.role_search_subtree #=> Boolean
    #   resp.ldap_server_metadata.service_account_username #=> String
    #   resp.ldap_server_metadata.user_base #=> String
    #   resp.ldap_server_metadata.user_role_name #=> String
    #   resp.ldap_server_metadata.user_search_matching #=> String
    #   resp.ldap_server_metadata.user_search_subtree #=> Boolean
    #   resp.logs.audit #=> Boolean
    #   resp.logs.general #=> Boolean
    #   resp.maintenance_window_start_time.day_of_week #=> String, one of "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"
    #   resp.maintenance_window_start_time.time_of_day #=> String
    #   resp.maintenance_window_start_time.time_zone #=> String
    #   resp.security_groups #=> Array
    #   resp.security_groups[0] #=> String
    #   resp.data_replication_metadata.data_replication_counterpart.broker_id #=> String
    #   resp.data_replication_metadata.data_replication_counterpart.region #=> String
    #   resp.data_replication_metadata.data_replication_role #=> String
    #   resp.data_replication_mode #=> String, one of "NONE", "CRDR"
    #   resp.pending_data_replication_metadata.data_replication_counterpart.broker_id #=> String
    #   resp.pending_data_replication_metadata.data_replication_counterpart.region #=> String
    #   resp.pending_data_replication_metadata.data_replication_role #=> String
    #   resp.pending_data_replication_mode #=> String, one of "NONE", "CRDR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateBroker AWS API Documentation
    #
    # @overload update_broker(params = {})
    # @param [Hash] params ({})
    def update_broker(params = {}, options = {})
      req = build_request(:update_broker, params)
      req.send_request(options)
    end

    # Updates the specified configuration.
    #
    # @option params [required, String] :configuration_id
    #
    # @option params [required, String] :data
    #
    # @option params [String] :description
    #
    # @return [Types::UpdateConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConfigurationResponse#arn #arn} => String
    #   * {Types::UpdateConfigurationResponse#created #created} => Time
    #   * {Types::UpdateConfigurationResponse#id #id} => String
    #   * {Types::UpdateConfigurationResponse#latest_revision #latest_revision} => Types::ConfigurationRevision
    #   * {Types::UpdateConfigurationResponse#name #name} => String
    #   * {Types::UpdateConfigurationResponse#warnings #warnings} => Array&lt;Types::SanitizationWarning&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration({
    #     configuration_id: "__string", # required
    #     data: "__string", # required
    #     description: "__string",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created #=> Time
    #   resp.id #=> String
    #   resp.latest_revision.created #=> Time
    #   resp.latest_revision.description #=> String
    #   resp.latest_revision.revision #=> Integer
    #   resp.name #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].attribute_name #=> String
    #   resp.warnings[0].element_name #=> String
    #   resp.warnings[0].reason #=> String, one of "DISALLOWED_ELEMENT_REMOVED", "DISALLOWED_ATTRIBUTE_REMOVED", "INVALID_ATTRIBUTE_VALUE_REMOVED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateConfiguration AWS API Documentation
    #
    # @overload update_configuration(params = {})
    # @param [Hash] params ({})
    def update_configuration(params = {}, options = {})
      req = build_request(:update_configuration, params)
      req.send_request(options)
    end

    # Updates the information for an ActiveMQ user.
    #
    # @option params [required, String] :broker_id
    #
    # @option params [Boolean] :console_access
    #
    # @option params [Array<String>] :groups
    #
    # @option params [String] :password
    #
    # @option params [required, String] :username
    #
    # @option params [Boolean] :replication_user
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     broker_id: "__string", # required
    #     console_access: false,
    #     groups: ["__string"],
    #     password: "__string",
    #     username: "__string", # required
    #     replication_user: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mq-2017-11-27/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MQ')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mq'
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
