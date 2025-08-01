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

module Aws::RedshiftDataAPIService
  # An API client for RedshiftDataAPIService.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::RedshiftDataAPIService::Client.new(
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

    @identifier = :redshiftdataapiservice

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
    add_plugin(Aws::RedshiftDataAPIService::Plugins::Endpoints)

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
    #   @option options [Aws::RedshiftDataAPIService::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::RedshiftDataAPIService::EndpointParameters`.
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

    # Runs one or more SQL statements, which can be data manipulation
    # language (DML) or data definition language (DDL). Depending on the
    # authorization method, use one of the following combinations of request
    # parameters:
    #
    # * Secrets Manager - when connecting to a cluster, provide the
    #   `secret-arn` of a secret stored in Secrets Manager which has
    #   `username` and `password`. The specified secret contains credentials
    #   to connect to the `database` you specify. When you are connecting to
    #   a cluster, you also supply the database name, If you provide a
    #   cluster identifier (`dbClusterIdentifier`), it must match the
    #   cluster identifier stored in the secret. When you are connecting to
    #   a serverless workgroup, you also supply the database name.
    #
    # * Temporary credentials - when connecting to your data warehouse,
    #   choose one of the following options:
    #
    #   * When connecting to a serverless workgroup, specify the workgroup
    #     name and database name. The database user name is derived from the
    #     IAM identity. For example, `arn:iam::123456789012:user:foo` has
    #     the database user name `IAM:foo`. Also, permission to call the
    #     `redshift-serverless:GetCredentials` operation is required.
    #
    #   * When connecting to a cluster as an IAM identity, specify the
    #     cluster identifier and the database name. The database user name
    #     is derived from the IAM identity. For example,
    #     `arn:iam::123456789012:user:foo` has the database user name
    #     `IAM:foo`. Also, permission to call the
    #     `redshift:GetClusterCredentialsWithIAM` operation is required.
    #
    #   * When connecting to a cluster as a database user, specify the
    #     cluster identifier, the database name, and the database user name.
    #     Also, permission to call the `redshift:GetClusterCredentials`
    #     operation is required.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :cluster_identifier
    #   The cluster identifier. This parameter is required when connecting to
    #   a cluster and authenticating using either Secrets Manager or temporary
    #   credentials.
    #
    # @option params [String] :database
    #   The name of the database. This parameter is required when
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when connecting to
    #   a cluster as a database user and authenticating using temporary
    #   credentials.
    #
    # @option params [String] :result_format
    #   The data format of the result of the SQL statement. If no format is
    #   specified, the default is JSON.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using Secrets Manager.
    #
    # @option params [String] :session_id
    #   The session identifier of the query.
    #
    # @option params [Integer] :session_keep_alive_seconds
    #   The number of seconds to keep the session alive after the query
    #   finishes. The maximum time a session can keep alive is 24 hours. After
    #   24 hours, the session is forced closed and the query is terminated.
    #
    # @option params [required, Array<String>] :sqls
    #   One or more SQL statements to run.      The SQL statements are run as
    #   a single transaction. They run serially in the order of the array.
    #   Subsequent SQL statements don't start until the previous statement in
    #   the array completes. If any SQL statement fails, then because they are
    #   run as one transaction, all work is rolled back.</p>
    #
    # @option params [String] :statement_name
    #   The name of the SQL statements. You can name the SQL statements when
    #   you create them to identify the query.
    #
    # @option params [Boolean] :with_event
    #   A value that indicates whether to send an event to the Amazon
    #   EventBridge event bus after the SQL statements run.
    #
    # @option params [String] :workgroup_name
    #   The serverless workgroup name or Amazon Resource Name (ARN). This
    #   parameter is required when connecting to a serverless workgroup and
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @return [Types::BatchExecuteStatementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchExecuteStatementOutput#cluster_identifier #cluster_identifier} => String
    #   * {Types::BatchExecuteStatementOutput#created_at #created_at} => Time
    #   * {Types::BatchExecuteStatementOutput#database #database} => String
    #   * {Types::BatchExecuteStatementOutput#db_groups #db_groups} => Array&lt;String&gt;
    #   * {Types::BatchExecuteStatementOutput#db_user #db_user} => String
    #   * {Types::BatchExecuteStatementOutput#id #id} => String
    #   * {Types::BatchExecuteStatementOutput#secret_arn #secret_arn} => String
    #   * {Types::BatchExecuteStatementOutput#session_id #session_id} => String
    #   * {Types::BatchExecuteStatementOutput#workgroup_name #workgroup_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_execute_statement({
    #     client_token: "ClientToken",
    #     cluster_identifier: "ClusterIdentifierString",
    #     database: "String",
    #     db_user: "String",
    #     result_format: "JSON", # accepts JSON, CSV
    #     secret_arn: "SecretArn",
    #     session_id: "UUID",
    #     session_keep_alive_seconds: 1,
    #     sqls: ["StatementString"], # required
    #     statement_name: "StatementNameString",
    #     with_event: false,
    #     workgroup_name: "WorkgroupNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_identifier #=> String
    #   resp.created_at #=> Time
    #   resp.database #=> String
    #   resp.db_groups #=> Array
    #   resp.db_groups[0] #=> String
    #   resp.db_user #=> String
    #   resp.id #=> String
    #   resp.secret_arn #=> String
    #   resp.session_id #=> String
    #   resp.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/BatchExecuteStatement AWS API Documentation
    #
    # @overload batch_execute_statement(params = {})
    # @param [Hash] params ({})
    def batch_execute_statement(params = {}, options = {})
      req = build_request(:batch_execute_statement, params)
      req.send_request(options)
    end

    # Cancels a running query. To be canceled, a query must be running.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [required, String] :id
    #   The identifier of the SQL statement to cancel. This value is a
    #   universally unique identifier (UUID) generated by Amazon Redshift Data
    #   API. This identifier is returned by `BatchExecuteStatment`,
    #   `ExecuteStatment`, and `ListStatements`.
    #
    # @return [Types::CancelStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelStatementResponse#status #status} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_statement({
    #     id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/CancelStatement AWS API Documentation
    #
    # @overload cancel_statement(params = {})
    # @param [Hash] params ({})
    def cancel_statement(params = {}, options = {})
      req = build_request(:cancel_statement, params)
      req.send_request(options)
    end

    # Describes the details about a specific instance when a query was run
    # by the Amazon Redshift Data API. The information includes when the
    # query started, when it finished, the query status, the number of rows
    # returned, and the SQL statement.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [required, String] :id
    #   The identifier of the SQL statement to describe. This value is a
    #   universally unique identifier (UUID) generated by Amazon Redshift Data
    #   API. A suffix indicates the number of the SQL statement. For example,
    #   `d9b6c0c9-0747-4bf4-b142-e8883122f766:2` has a suffix of `:2` that
    #   indicates the second SQL statement of a batch query. This identifier
    #   is returned by `BatchExecuteStatment`, `ExecuteStatement`, and
    #   `ListStatements`.
    #
    # @return [Types::DescribeStatementResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStatementResponse#cluster_identifier #cluster_identifier} => String
    #   * {Types::DescribeStatementResponse#created_at #created_at} => Time
    #   * {Types::DescribeStatementResponse#database #database} => String
    #   * {Types::DescribeStatementResponse#db_user #db_user} => String
    #   * {Types::DescribeStatementResponse#duration #duration} => Integer
    #   * {Types::DescribeStatementResponse#error #error} => String
    #   * {Types::DescribeStatementResponse#has_result_set #has_result_set} => Boolean
    #   * {Types::DescribeStatementResponse#id #id} => String
    #   * {Types::DescribeStatementResponse#query_parameters #query_parameters} => Array&lt;Types::SqlParameter&gt;
    #   * {Types::DescribeStatementResponse#query_string #query_string} => String
    #   * {Types::DescribeStatementResponse#redshift_pid #redshift_pid} => Integer
    #   * {Types::DescribeStatementResponse#redshift_query_id #redshift_query_id} => Integer
    #   * {Types::DescribeStatementResponse#result_format #result_format} => String
    #   * {Types::DescribeStatementResponse#result_rows #result_rows} => Integer
    #   * {Types::DescribeStatementResponse#result_size #result_size} => Integer
    #   * {Types::DescribeStatementResponse#secret_arn #secret_arn} => String
    #   * {Types::DescribeStatementResponse#session_id #session_id} => String
    #   * {Types::DescribeStatementResponse#status #status} => String
    #   * {Types::DescribeStatementResponse#sub_statements #sub_statements} => Array&lt;Types::SubStatementData&gt;
    #   * {Types::DescribeStatementResponse#updated_at #updated_at} => Time
    #   * {Types::DescribeStatementResponse#workgroup_name #workgroup_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_statement({
    #     id: "UUID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_identifier #=> String
    #   resp.created_at #=> Time
    #   resp.database #=> String
    #   resp.db_user #=> String
    #   resp.duration #=> Integer
    #   resp.error #=> String
    #   resp.has_result_set #=> Boolean
    #   resp.id #=> String
    #   resp.query_parameters #=> Array
    #   resp.query_parameters[0].name #=> String
    #   resp.query_parameters[0].value #=> String
    #   resp.query_string #=> String
    #   resp.redshift_pid #=> Integer
    #   resp.redshift_query_id #=> Integer
    #   resp.result_format #=> String, one of "JSON", "CSV"
    #   resp.result_rows #=> Integer
    #   resp.result_size #=> Integer
    #   resp.secret_arn #=> String
    #   resp.session_id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "PICKED", "STARTED", "FINISHED", "ABORTED", "FAILED", "ALL"
    #   resp.sub_statements #=> Array
    #   resp.sub_statements[0].created_at #=> Time
    #   resp.sub_statements[0].duration #=> Integer
    #   resp.sub_statements[0].error #=> String
    #   resp.sub_statements[0].has_result_set #=> Boolean
    #   resp.sub_statements[0].id #=> String
    #   resp.sub_statements[0].query_string #=> String
    #   resp.sub_statements[0].redshift_query_id #=> Integer
    #   resp.sub_statements[0].result_rows #=> Integer
    #   resp.sub_statements[0].result_size #=> Integer
    #   resp.sub_statements[0].status #=> String, one of "SUBMITTED", "PICKED", "STARTED", "FINISHED", "ABORTED", "FAILED"
    #   resp.sub_statements[0].updated_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/DescribeStatement AWS API Documentation
    #
    # @overload describe_statement(params = {})
    # @param [Hash] params ({})
    def describe_statement(params = {}, options = {})
      req = build_request(:describe_statement, params)
      req.send_request(options)
    end

    # Describes the detailed information about a table from metadata in the
    # cluster. The information includes its columns. A token is returned to
    # page through the column list. Depending on the authorization method,
    # use one of the following combinations of request parameters:
    #
    # * Secrets Manager - when connecting to a cluster, provide the
    #   `secret-arn` of a secret stored in Secrets Manager which has
    #   `username` and `password`. The specified secret contains credentials
    #   to connect to the `database` you specify. When you are connecting to
    #   a cluster, you also supply the database name, If you provide a
    #   cluster identifier (`dbClusterIdentifier`), it must match the
    #   cluster identifier stored in the secret. When you are connecting to
    #   a serverless workgroup, you also supply the database name.
    #
    # * Temporary credentials - when connecting to your data warehouse,
    #   choose one of the following options:
    #
    #   * When connecting to a serverless workgroup, specify the workgroup
    #     name and database name. The database user name is derived from the
    #     IAM identity. For example, `arn:iam::123456789012:user:foo` has
    #     the database user name `IAM:foo`. Also, permission to call the
    #     `redshift-serverless:GetCredentials` operation is required.
    #
    #   * When connecting to a cluster as an IAM identity, specify the
    #     cluster identifier and the database name. The database user name
    #     is derived from the IAM identity. For example,
    #     `arn:iam::123456789012:user:foo` has the database user name
    #     `IAM:foo`. Also, permission to call the
    #     `redshift:GetClusterCredentialsWithIAM` operation is required.
    #
    #   * When connecting to a cluster as a database user, specify the
    #     cluster identifier, the database name, and the database user name.
    #     Also, permission to call the `redshift:GetClusterCredentials`
    #     operation is required.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [String] :cluster_identifier
    #   The cluster identifier. This parameter is required when connecting to
    #   a cluster and authenticating using either Secrets Manager or temporary
    #   credentials.
    #
    # @option params [String] :connected_database
    #   A database name. The connected database is specified when you connect
    #   with your authentication credentials.
    #
    # @option params [required, String] :database
    #   The name of the database that contains the tables to be described. If
    #   `ConnectedDatabase` is not specified, this is also the database to
    #   connect to with your authentication credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when connecting to
    #   a cluster as a database user and authenticating using temporary
    #   credentials.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in the response. If more tables
    #   exist than fit in one response, then `NextToken` is returned to page
    #   through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :schema
    #   The schema that contains the table. If no schema is specified, then
    #   matching tables for all schemas are returned.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using Secrets Manager.
    #
    # @option params [String] :table
    #   The table name. If no table is specified, then all tables for all
    #   matching schemas are returned. If no table and no schema is specified,
    #   then all tables for all schemas in the database are returned
    #
    # @option params [String] :workgroup_name
    #   The serverless workgroup name or Amazon Resource Name (ARN). This
    #   parameter is required when connecting to a serverless workgroup and
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @return [Types::DescribeTableResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTableResponse#column_list #column_list} => Array&lt;Types::ColumnMetadata&gt;
    #   * {Types::DescribeTableResponse#next_token #next_token} => String
    #   * {Types::DescribeTableResponse#table_name #table_name} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_table({
    #     cluster_identifier: "ClusterIdentifierString",
    #     connected_database: "String",
    #     database: "String", # required
    #     db_user: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     schema: "String",
    #     secret_arn: "SecretArn",
    #     table: "String",
    #     workgroup_name: "WorkgroupNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.column_list #=> Array
    #   resp.column_list[0].column_default #=> String
    #   resp.column_list[0].is_case_sensitive #=> Boolean
    #   resp.column_list[0].is_currency #=> Boolean
    #   resp.column_list[0].is_signed #=> Boolean
    #   resp.column_list[0].label #=> String
    #   resp.column_list[0].length #=> Integer
    #   resp.column_list[0].name #=> String
    #   resp.column_list[0].nullable #=> Integer
    #   resp.column_list[0].precision #=> Integer
    #   resp.column_list[0].scale #=> Integer
    #   resp.column_list[0].schema_name #=> String
    #   resp.column_list[0].table_name #=> String
    #   resp.column_list[0].type_name #=> String
    #   resp.next_token #=> String
    #   resp.table_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/DescribeTable AWS API Documentation
    #
    # @overload describe_table(params = {})
    # @param [Hash] params ({})
    def describe_table(params = {}, options = {})
      req = build_request(:describe_table, params)
      req.send_request(options)
    end

    # Runs an SQL statement, which can be data manipulation language (DML)
    # or data definition language (DDL). This statement must be a single SQL
    # statement. Depending on the authorization method, use one of the
    # following combinations of request parameters:
    #
    # * Secrets Manager - when connecting to a cluster, provide the
    #   `secret-arn` of a secret stored in Secrets Manager which has
    #   `username` and `password`. The specified secret contains credentials
    #   to connect to the `database` you specify. When you are connecting to
    #   a cluster, you also supply the database name, If you provide a
    #   cluster identifier (`dbClusterIdentifier`), it must match the
    #   cluster identifier stored in the secret. When you are connecting to
    #   a serverless workgroup, you also supply the database name.
    #
    # * Temporary credentials - when connecting to your data warehouse,
    #   choose one of the following options:
    #
    #   * When connecting to a serverless workgroup, specify the workgroup
    #     name and database name. The database user name is derived from the
    #     IAM identity. For example, `arn:iam::123456789012:user:foo` has
    #     the database user name `IAM:foo`. Also, permission to call the
    #     `redshift-serverless:GetCredentials` operation is required.
    #
    #   * When connecting to a cluster as an IAM identity, specify the
    #     cluster identifier and the database name. The database user name
    #     is derived from the IAM identity. For example,
    #     `arn:iam::123456789012:user:foo` has the database user name
    #     `IAM:foo`. Also, permission to call the
    #     `redshift:GetClusterCredentialsWithIAM` operation is required.
    #
    #   * When connecting to a cluster as a database user, specify the
    #     cluster identifier, the database name, and the database user name.
    #     Also, permission to call the `redshift:GetClusterCredentials`
    #     operation is required.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :cluster_identifier
    #   The cluster identifier. This parameter is required when connecting to
    #   a cluster and authenticating using either Secrets Manager or temporary
    #   credentials.
    #
    # @option params [String] :database
    #   The name of the database. This parameter is required when
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when connecting to
    #   a cluster as a database user and authenticating using temporary
    #   credentials.
    #
    # @option params [Array<Types::SqlParameter>] :parameters
    #   The parameters for the SQL statement.
    #
    # @option params [String] :result_format
    #   The data format of the result of the SQL statement. If no format is
    #   specified, the default is JSON.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using Secrets Manager.
    #
    # @option params [String] :session_id
    #   The session identifier of the query.
    #
    # @option params [Integer] :session_keep_alive_seconds
    #   The number of seconds to keep the session alive after the query
    #   finishes. The maximum time a session can keep alive is 24 hours. After
    #   24 hours, the session is forced closed and the query is terminated.
    #
    # @option params [required, String] :sql
    #   The SQL statement text to run.
    #
    # @option params [String] :statement_name
    #   The name of the SQL statement. You can name the SQL statement when you
    #   create it to identify the query.
    #
    # @option params [Boolean] :with_event
    #   A value that indicates whether to send an event to the Amazon
    #   EventBridge event bus after the SQL statement runs.
    #
    # @option params [String] :workgroup_name
    #   The serverless workgroup name or Amazon Resource Name (ARN). This
    #   parameter is required when connecting to a serverless workgroup and
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @return [Types::ExecuteStatementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteStatementOutput#cluster_identifier #cluster_identifier} => String
    #   * {Types::ExecuteStatementOutput#created_at #created_at} => Time
    #   * {Types::ExecuteStatementOutput#database #database} => String
    #   * {Types::ExecuteStatementOutput#db_groups #db_groups} => Array&lt;String&gt;
    #   * {Types::ExecuteStatementOutput#db_user #db_user} => String
    #   * {Types::ExecuteStatementOutput#id #id} => String
    #   * {Types::ExecuteStatementOutput#secret_arn #secret_arn} => String
    #   * {Types::ExecuteStatementOutput#session_id #session_id} => String
    #   * {Types::ExecuteStatementOutput#workgroup_name #workgroup_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_statement({
    #     client_token: "ClientToken",
    #     cluster_identifier: "ClusterIdentifierString",
    #     database: "String",
    #     db_user: "String",
    #     parameters: [
    #       {
    #         name: "ParameterName", # required
    #         value: "ParameterValue", # required
    #       },
    #     ],
    #     result_format: "JSON", # accepts JSON, CSV
    #     secret_arn: "SecretArn",
    #     session_id: "UUID",
    #     session_keep_alive_seconds: 1,
    #     sql: "StatementString", # required
    #     statement_name: "StatementNameString",
    #     with_event: false,
    #     workgroup_name: "WorkgroupNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_identifier #=> String
    #   resp.created_at #=> Time
    #   resp.database #=> String
    #   resp.db_groups #=> Array
    #   resp.db_groups[0] #=> String
    #   resp.db_user #=> String
    #   resp.id #=> String
    #   resp.secret_arn #=> String
    #   resp.session_id #=> String
    #   resp.workgroup_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ExecuteStatement AWS API Documentation
    #
    # @overload execute_statement(params = {})
    # @param [Hash] params ({})
    def execute_statement(params = {}, options = {})
      req = build_request(:execute_statement, params)
      req.send_request(options)
    end

    # Fetches the temporarily cached result of an SQL statement in JSON
    # format. The `ExecuteStatement` or `BatchExecuteStatement` operation
    # that ran the SQL statement must have specified `ResultFormat` as
    # `JSON` , or let the format default to JSON. A token is returned to
    # page through the statement results.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [required, String] :id
    #   The identifier of the SQL statement whose results are to be fetched.
    #   This value is a universally unique identifier (UUID) generated by
    #   Amazon Redshift Data API. A suffix indicates then number of the SQL
    #   statement. For example, `d9b6c0c9-0747-4bf4-b142-e8883122f766:2` has a
    #   suffix of `:2` that indicates the second SQL statement of a batch
    #   query. This identifier is returned by `BatchExecuteStatment`,
    #   `ExecuteStatment`, and `ListStatements`.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @return [Types::GetStatementResultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStatementResultResponse#column_metadata #column_metadata} => Array&lt;Types::ColumnMetadata&gt;
    #   * {Types::GetStatementResultResponse#next_token #next_token} => String
    #   * {Types::GetStatementResultResponse#records #records} => Array&lt;Array&lt;Types::Field&gt;&gt;
    #   * {Types::GetStatementResultResponse#total_num_rows #total_num_rows} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_statement_result({
    #     id: "UUID", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.column_metadata #=> Array
    #   resp.column_metadata[0].column_default #=> String
    #   resp.column_metadata[0].is_case_sensitive #=> Boolean
    #   resp.column_metadata[0].is_currency #=> Boolean
    #   resp.column_metadata[0].is_signed #=> Boolean
    #   resp.column_metadata[0].label #=> String
    #   resp.column_metadata[0].length #=> Integer
    #   resp.column_metadata[0].name #=> String
    #   resp.column_metadata[0].nullable #=> Integer
    #   resp.column_metadata[0].precision #=> Integer
    #   resp.column_metadata[0].scale #=> Integer
    #   resp.column_metadata[0].schema_name #=> String
    #   resp.column_metadata[0].table_name #=> String
    #   resp.column_metadata[0].type_name #=> String
    #   resp.next_token #=> String
    #   resp.records #=> Array
    #   resp.records[0] #=> Array
    #   resp.records[0][0].blob_value #=> String
    #   resp.records[0][0].boolean_value #=> Boolean
    #   resp.records[0][0].double_value #=> Float
    #   resp.records[0][0].is_null #=> Boolean
    #   resp.records[0][0].long_value #=> Integer
    #   resp.records[0][0].string_value #=> String
    #   resp.total_num_rows #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/GetStatementResult AWS API Documentation
    #
    # @overload get_statement_result(params = {})
    # @param [Hash] params ({})
    def get_statement_result(params = {}, options = {})
      req = build_request(:get_statement_result, params)
      req.send_request(options)
    end

    # Fetches the temporarily cached result of an SQL statement in CSV
    # format. The `ExecuteStatement` or `BatchExecuteStatement` operation
    # that ran the SQL statement must have specified `ResultFormat` as
    # `CSV`. A token is returned to page through the statement results.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [required, String] :id
    #   The identifier of the SQL statement whose results are to be fetched.
    #   This value is a universally unique identifier (UUID) generated by
    #   Amazon Redshift Data API. A suffix indicates then number of the SQL
    #   statement. For example, `d9b6c0c9-0747-4bf4-b142-e8883122f766:2` has a
    #   suffix of `:2` that indicates the second SQL statement of a batch
    #   query. This identifier is returned by `BatchExecuteStatment`,
    #   `ExecuteStatment`, and `ListStatements`.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @return [Types::GetStatementResultV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStatementResultV2Response#column_metadata #column_metadata} => Array&lt;Types::ColumnMetadata&gt;
    #   * {Types::GetStatementResultV2Response#next_token #next_token} => String
    #   * {Types::GetStatementResultV2Response#records #records} => Array&lt;Types::QueryRecords&gt;
    #   * {Types::GetStatementResultV2Response#result_format #result_format} => String
    #   * {Types::GetStatementResultV2Response#total_num_rows #total_num_rows} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_statement_result_v2({
    #     id: "UUID", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.column_metadata #=> Array
    #   resp.column_metadata[0].column_default #=> String
    #   resp.column_metadata[0].is_case_sensitive #=> Boolean
    #   resp.column_metadata[0].is_currency #=> Boolean
    #   resp.column_metadata[0].is_signed #=> Boolean
    #   resp.column_metadata[0].label #=> String
    #   resp.column_metadata[0].length #=> Integer
    #   resp.column_metadata[0].name #=> String
    #   resp.column_metadata[0].nullable #=> Integer
    #   resp.column_metadata[0].precision #=> Integer
    #   resp.column_metadata[0].scale #=> Integer
    #   resp.column_metadata[0].schema_name #=> String
    #   resp.column_metadata[0].table_name #=> String
    #   resp.column_metadata[0].type_name #=> String
    #   resp.next_token #=> String
    #   resp.records #=> Array
    #   resp.records[0].csv_records #=> String
    #   resp.result_format #=> String, one of "JSON", "CSV"
    #   resp.total_num_rows #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/GetStatementResultV2 AWS API Documentation
    #
    # @overload get_statement_result_v2(params = {})
    # @param [Hash] params ({})
    def get_statement_result_v2(params = {}, options = {})
      req = build_request(:get_statement_result_v2, params)
      req.send_request(options)
    end

    # List the databases in a cluster. A token is returned to page through
    # the database list. Depending on the authorization method, use one of
    # the following combinations of request parameters:
    #
    # * Secrets Manager - when connecting to a cluster, provide the
    #   `secret-arn` of a secret stored in Secrets Manager which has
    #   `username` and `password`. The specified secret contains credentials
    #   to connect to the `database` you specify. When you are connecting to
    #   a cluster, you also supply the database name, If you provide a
    #   cluster identifier (`dbClusterIdentifier`), it must match the
    #   cluster identifier stored in the secret. When you are connecting to
    #   a serverless workgroup, you also supply the database name.
    #
    # * Temporary credentials - when connecting to your data warehouse,
    #   choose one of the following options:
    #
    #   * When connecting to a serverless workgroup, specify the workgroup
    #     name and database name. The database user name is derived from the
    #     IAM identity. For example, `arn:iam::123456789012:user:foo` has
    #     the database user name `IAM:foo`. Also, permission to call the
    #     `redshift-serverless:GetCredentials` operation is required.
    #
    #   * When connecting to a cluster as an IAM identity, specify the
    #     cluster identifier and the database name. The database user name
    #     is derived from the IAM identity. For example,
    #     `arn:iam::123456789012:user:foo` has the database user name
    #     `IAM:foo`. Also, permission to call the
    #     `redshift:GetClusterCredentialsWithIAM` operation is required.
    #
    #   * When connecting to a cluster as a database user, specify the
    #     cluster identifier, the database name, and the database user name.
    #     Also, permission to call the `redshift:GetClusterCredentials`
    #     operation is required.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [String] :cluster_identifier
    #   The cluster identifier. This parameter is required when connecting to
    #   a cluster and authenticating using either Secrets Manager or temporary
    #   credentials.
    #
    # @option params [required, String] :database
    #   The name of the database. This parameter is required when
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when connecting to
    #   a cluster as a database user and authenticating using temporary
    #   credentials.
    #
    # @option params [Integer] :max_results
    #   The maximum number of databases to return in the response. If more
    #   databases exist than fit in one response, then `NextToken` is returned
    #   to page through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using Secrets Manager.
    #
    # @option params [String] :workgroup_name
    #   The serverless workgroup name or Amazon Resource Name (ARN). This
    #   parameter is required when connecting to a serverless workgroup and
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @return [Types::ListDatabasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatabasesResponse#databases #databases} => Array&lt;String&gt;
    #   * {Types::ListDatabasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_databases({
    #     cluster_identifier: "ClusterIdentifierString",
    #     database: "String", # required
    #     db_user: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     secret_arn: "SecretArn",
    #     workgroup_name: "WorkgroupNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.databases #=> Array
    #   resp.databases[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListDatabases AWS API Documentation
    #
    # @overload list_databases(params = {})
    # @param [Hash] params ({})
    def list_databases(params = {}, options = {})
      req = build_request(:list_databases, params)
      req.send_request(options)
    end

    # Lists the schemas in a database. A token is returned to page through
    # the schema list. Depending on the authorization method, use one of the
    # following combinations of request parameters:
    #
    # * Secrets Manager - when connecting to a cluster, provide the
    #   `secret-arn` of a secret stored in Secrets Manager which has
    #   `username` and `password`. The specified secret contains credentials
    #   to connect to the `database` you specify. When you are connecting to
    #   a cluster, you also supply the database name, If you provide a
    #   cluster identifier (`dbClusterIdentifier`), it must match the
    #   cluster identifier stored in the secret. When you are connecting to
    #   a serverless workgroup, you also supply the database name.
    #
    # * Temporary credentials - when connecting to your data warehouse,
    #   choose one of the following options:
    #
    #   * When connecting to a serverless workgroup, specify the workgroup
    #     name and database name. The database user name is derived from the
    #     IAM identity. For example, `arn:iam::123456789012:user:foo` has
    #     the database user name `IAM:foo`. Also, permission to call the
    #     `redshift-serverless:GetCredentials` operation is required.
    #
    #   * When connecting to a cluster as an IAM identity, specify the
    #     cluster identifier and the database name. The database user name
    #     is derived from the IAM identity. For example,
    #     `arn:iam::123456789012:user:foo` has the database user name
    #     `IAM:foo`. Also, permission to call the
    #     `redshift:GetClusterCredentialsWithIAM` operation is required.
    #
    #   * When connecting to a cluster as a database user, specify the
    #     cluster identifier, the database name, and the database user name.
    #     Also, permission to call the `redshift:GetClusterCredentials`
    #     operation is required.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [String] :cluster_identifier
    #   The cluster identifier. This parameter is required when connecting to
    #   a cluster and authenticating using either Secrets Manager or temporary
    #   credentials.
    #
    # @option params [String] :connected_database
    #   A database name. The connected database is specified when you connect
    #   with your authentication credentials.
    #
    # @option params [required, String] :database
    #   The name of the database that contains the schemas to list. If
    #   `ConnectedDatabase` is not specified, this is also the database to
    #   connect to with your authentication credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when connecting to
    #   a cluster as a database user and authenticating using temporary
    #   credentials.
    #
    # @option params [Integer] :max_results
    #   The maximum number of schemas to return in the response. If more
    #   schemas exist than fit in one response, then `NextToken` is returned
    #   to page through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :schema_pattern
    #   A pattern to filter results by schema name. Within a schema pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only schema name entries matching the
    #   search pattern are returned.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using Secrets Manager.
    #
    # @option params [String] :workgroup_name
    #   The serverless workgroup name or Amazon Resource Name (ARN). This
    #   parameter is required when connecting to a serverless workgroup and
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @return [Types::ListSchemasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSchemasResponse#next_token #next_token} => String
    #   * {Types::ListSchemasResponse#schemas #schemas} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schemas({
    #     cluster_identifier: "ClusterIdentifierString",
    #     connected_database: "String",
    #     database: "String", # required
    #     db_user: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     schema_pattern: "String",
    #     secret_arn: "SecretArn",
    #     workgroup_name: "WorkgroupNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.schemas #=> Array
    #   resp.schemas[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListSchemas AWS API Documentation
    #
    # @overload list_schemas(params = {})
    # @param [Hash] params ({})
    def list_schemas(params = {}, options = {})
      req = build_request(:list_schemas, params)
      req.send_request(options)
    end

    # List of SQL statements. By default, only finished statements are
    # shown. A token is returned to page through the statement list.
    #
    # When you use identity-enhanced role sessions to list statements, you
    # must provide either the `cluster-identifier` or `workgroup-name`
    # parameter. This ensures that the IdC user can only access the Amazon
    # Redshift IdC applications they are assigned. For more information, see
    # [ Trusted identity propagation overview][1].
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][2] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-overview.html
    # [2]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [String] :cluster_identifier
    #   The cluster identifier. Only statements that ran on this cluster are
    #   returned. When providing `ClusterIdentifier`, then `WorkgroupName`
    #   can't be specified.
    #
    # @option params [String] :database
    #   The name of the database when listing statements run against a
    #   `ClusterIdentifier` or `WorkgroupName`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of SQL statements to return in the response. If
    #   more SQL statements exist than fit in one response, then `NextToken`
    #   is returned to page through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [Boolean] :role_level
    #   A value that filters which statements to return in the response. If
    #   true, all statements run by the caller's IAM role are returned. If
    #   false, only statements run by the caller's IAM role in the current
    #   IAM session are returned. The default is true.
    #
    # @option params [String] :statement_name
    #   The name of the SQL statement specified as input to
    #   `BatchExecuteStatement` or `ExecuteStatement` to identify the query.
    #   You can list multiple statements by providing a prefix that matches
    #   the beginning of the statement name. For example, to list
    #   myStatement1, myStatement2, myStatement3, and so on, then provide the
    #   a value of `myStatement`. Data API does a case-sensitive match of SQL
    #   statement names to the prefix value you provide.
    #
    # @option params [String] :status
    #   The status of the SQL statement to list. Status values are defined as
    #   follows:
    #
    #   * ABORTED - The query run was stopped by the user.
    #
    #   * ALL - A status value that includes all query statuses. This value
    #     can be used to filter results.
    #
    #   * FAILED - The query run failed.
    #
    #   * FINISHED - The query has finished running.
    #
    #   * PICKED - The query has been chosen to be run.
    #
    #   * STARTED - The query run has started.
    #
    #   * SUBMITTED - The query was submitted, but not yet processed.
    #
    # @option params [String] :workgroup_name
    #   The serverless workgroup name or Amazon Resource Name (ARN). Only
    #   statements that ran on this workgroup are returned. When providing
    #   `WorkgroupName`, then `ClusterIdentifier` can't be specified.
    #
    # @return [Types::ListStatementsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStatementsResponse#next_token #next_token} => String
    #   * {Types::ListStatementsResponse#statements #statements} => Array&lt;Types::StatementData&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_statements({
    #     cluster_identifier: "ClusterIdentifierString",
    #     database: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     role_level: false,
    #     statement_name: "StatementNameString",
    #     status: "SUBMITTED", # accepts SUBMITTED, PICKED, STARTED, FINISHED, ABORTED, FAILED, ALL
    #     workgroup_name: "WorkgroupNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.statements #=> Array
    #   resp.statements[0].created_at #=> Time
    #   resp.statements[0].id #=> String
    #   resp.statements[0].is_batch_statement #=> Boolean
    #   resp.statements[0].query_parameters #=> Array
    #   resp.statements[0].query_parameters[0].name #=> String
    #   resp.statements[0].query_parameters[0].value #=> String
    #   resp.statements[0].query_string #=> String
    #   resp.statements[0].query_strings #=> Array
    #   resp.statements[0].query_strings[0] #=> String
    #   resp.statements[0].result_format #=> String, one of "JSON", "CSV"
    #   resp.statements[0].secret_arn #=> String
    #   resp.statements[0].session_id #=> String
    #   resp.statements[0].statement_name #=> String
    #   resp.statements[0].status #=> String, one of "SUBMITTED", "PICKED", "STARTED", "FINISHED", "ABORTED", "FAILED", "ALL"
    #   resp.statements[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListStatements AWS API Documentation
    #
    # @overload list_statements(params = {})
    # @param [Hash] params ({})
    def list_statements(params = {}, options = {})
      req = build_request(:list_statements, params)
      req.send_request(options)
    end

    # List the tables in a database. If neither `SchemaPattern` nor
    # `TablePattern` are specified, then all tables in the database are
    # returned. A token is returned to page through the table list.
    # Depending on the authorization method, use one of the following
    # combinations of request parameters:
    #
    # * Secrets Manager - when connecting to a cluster, provide the
    #   `secret-arn` of a secret stored in Secrets Manager which has
    #   `username` and `password`. The specified secret contains credentials
    #   to connect to the `database` you specify. When you are connecting to
    #   a cluster, you also supply the database name, If you provide a
    #   cluster identifier (`dbClusterIdentifier`), it must match the
    #   cluster identifier stored in the secret. When you are connecting to
    #   a serverless workgroup, you also supply the database name.
    #
    # * Temporary credentials - when connecting to your data warehouse,
    #   choose one of the following options:
    #
    #   * When connecting to a serverless workgroup, specify the workgroup
    #     name and database name. The database user name is derived from the
    #     IAM identity. For example, `arn:iam::123456789012:user:foo` has
    #     the database user name `IAM:foo`. Also, permission to call the
    #     `redshift-serverless:GetCredentials` operation is required.
    #
    #   * When connecting to a cluster as an IAM identity, specify the
    #     cluster identifier and the database name. The database user name
    #     is derived from the IAM identity. For example,
    #     `arn:iam::123456789012:user:foo` has the database user name
    #     `IAM:foo`. Also, permission to call the
    #     `redshift:GetClusterCredentialsWithIAM` operation is required.
    #
    #   * When connecting to a cluster as a database user, specify the
    #     cluster identifier, the database name, and the database user name.
    #     Also, permission to call the `redshift:GetClusterCredentials`
    #     operation is required.
    #
    # For more information about the Amazon Redshift Data API and CLI usage
    # examples, see [Using the Amazon Redshift Data API][1] in the *Amazon
    # Redshift Management Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html
    #
    # @option params [String] :cluster_identifier
    #   The cluster identifier. This parameter is required when connecting to
    #   a cluster and authenticating using either Secrets Manager or temporary
    #   credentials.
    #
    # @option params [String] :connected_database
    #   A database name. The connected database is specified when you connect
    #   with your authentication credentials.
    #
    # @option params [required, String] :database
    #   The name of the database that contains the tables to list. If
    #   `ConnectedDatabase` is not specified, this is also the database to
    #   connect to with your authentication credentials.
    #
    # @option params [String] :db_user
    #   The database user name. This parameter is required when connecting to
    #   a cluster as a database user and authenticating using temporary
    #   credentials.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tables to return in the response. If more tables
    #   exist than fit in one response, then `NextToken` is returned to page
    #   through the results.
    #
    # @option params [String] :next_token
    #   A value that indicates the starting point for the next set of response
    #   records in a subsequent request. If a value is returned in a response,
    #   you can retrieve the next set of records by providing this returned
    #   NextToken value in the next NextToken parameter and retrying the
    #   command. If the NextToken field is empty, all response records have
    #   been retrieved for the request.
    #
    # @option params [String] :schema_pattern
    #   A pattern to filter results by schema name. Within a schema pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only schema name entries matching the
    #   search pattern are returned. If `SchemaPattern` is not specified, then
    #   all tables that match `TablePattern` are returned. If neither
    #   `SchemaPattern` or `TablePattern` are specified, then all tables are
    #   returned.
    #
    # @option params [String] :secret_arn
    #   The name or ARN of the secret that enables access to the database.
    #   This parameter is required when authenticating using Secrets Manager.
    #
    # @option params [String] :table_pattern
    #   A pattern to filter results by table name. Within a table pattern,
    #   "%" means match any substring of 0 or more characters and "\_"
    #   means match any one character. Only table name entries matching the
    #   search pattern are returned. If `TablePattern` is not specified, then
    #   all tables that match `SchemaPattern`are returned. If neither
    #   `SchemaPattern` or `TablePattern` are specified, then all tables are
    #   returned.
    #
    # @option params [String] :workgroup_name
    #   The serverless workgroup name or Amazon Resource Name (ARN). This
    #   parameter is required when connecting to a serverless workgroup and
    #   authenticating using either Secrets Manager or temporary credentials.
    #
    # @return [Types::ListTablesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTablesResponse#next_token #next_token} => String
    #   * {Types::ListTablesResponse#tables #tables} => Array&lt;Types::TableMember&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tables({
    #     cluster_identifier: "ClusterIdentifierString",
    #     connected_database: "String",
    #     database: "String", # required
    #     db_user: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     schema_pattern: "String",
    #     secret_arn: "SecretArn",
    #     table_pattern: "String",
    #     workgroup_name: "WorkgroupNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tables #=> Array
    #   resp.tables[0].name #=> String
    #   resp.tables[0].schema #=> String
    #   resp.tables[0].type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-data-2019-12-20/ListTables AWS API Documentation
    #
    # @overload list_tables(params = {})
    # @param [Hash] params ({})
    def list_tables(params = {}, options = {})
      req = build_request(:list_tables, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::RedshiftDataAPIService')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-redshiftdataapiservice'
      context[:gem_version] = '1.58.0'
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
