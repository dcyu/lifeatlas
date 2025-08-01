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

module Aws::MWAA
  # An API client for MWAA.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MWAA::Client.new(
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

    @identifier = :mwaa

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
    add_plugin(Aws::MWAA::Plugins::Endpoints)

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
    #   @option options [Aws::MWAA::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MWAA::EndpointParameters`.
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

    # Creates a CLI token for the Airflow CLI. To learn more, see [Creating
    # an Apache Airflow CLI token][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-cli.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #
    # @return [Types::CreateCliTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCliTokenResponse#cli_token #cli_token} => String
    #   * {Types::CreateCliTokenResponse#web_server_hostname #web_server_hostname} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cli_token({
    #     name: "EnvironmentName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cli_token #=> String
    #   resp.web_server_hostname #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateCliToken AWS API Documentation
    #
    # @overload create_cli_token(params = {})
    # @param [Hash] params ({})
    def create_cli_token(params = {}, options = {})
      req = build_request(:create_cli_token, params)
      req.send_request(options)
    end

    # Creates an Amazon Managed Workflows for Apache Airflow (Amazon MWAA)
    # environment.
    #
    # @option params [required, String] :name
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role for your
    #   environment. An execution role is an Amazon Web Services Identity and
    #   Access Management (IAM) role that grants MWAA permission to access
    #   Amazon Web Services services and resources used by your environment.
    #   For example, `arn:aws:iam::123456789:role/my-execution-role`. For more
    #   information, see [Amazon MWAA Execution role][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html
    #
    # @option params [required, String] :source_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
    #   code and supporting files are stored. For example,
    #   `arn:aws:s3:::my-airflow-bucket-unique-name`. For more information,
    #   see [Create an Amazon S3 bucket for Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html
    #
    # @option params [required, String] :dag_s3_path
    #   The relative path to the DAGs folder on your Amazon S3 bucket. For
    #   example, `dags`. For more information, see [Adding or updating
    #   DAGs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html
    #
    # @option params [required, Types::NetworkConfiguration] :network_configuration
    #   The VPC networking components used to secure and enable network
    #   traffic between the Amazon Web Services resources for your
    #   environment. For more information, see [About networking on Amazon
    #   MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html
    #
    # @option params [String] :plugins_s3_path
    #   The relative path to the `plugins.zip` file on your Amazon S3 bucket.
    #   For example, `plugins.zip`. If specified, then the `plugins.zip`
    #   version is required. For more information, see [Installing custom
    #   plugins][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html
    #
    # @option params [String] :plugins_s3_object_version
    #   The version of the plugins.zip file on your Amazon S3 bucket. You must
    #   specify a version each time a plugins.zip file is updated. For more
    #   information, see [How S3 Versioning works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #
    # @option params [String] :requirements_s3_path
    #   The relative path to the `requirements.txt` file on your Amazon S3
    #   bucket. For example, `requirements.txt`. If specified, then a version
    #   is required. For more information, see [Installing Python
    #   dependencies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html
    #
    # @option params [String] :requirements_s3_object_version
    #   The version of the `requirements.txt` file on your Amazon S3 bucket.
    #   You must specify a version each time a requirements.txt file is
    #   updated. For more information, see [How S3 Versioning works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #
    # @option params [String] :startup_script_s3_path
    #   The relative path to the startup shell script in your Amazon S3
    #   bucket. For example, `s3://mwaa-environment/startup.sh`.
    #
    #   Amazon MWAA runs the script as your environment starts, and before
    #   running the Apache Airflow process. You can use this script to install
    #   dependencies, modify Apache Airflow configuration options, and set
    #   environment variables. For more information, see [Using a startup
    #   script][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html
    #
    # @option params [String] :startup_script_s3_object_version
    #   The version of the startup shell script in your Amazon S3 bucket. You
    #   must specify the [version ID][1] that Amazon S3 assigns to the file
    #   every time you update the script.
    #
    #   Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that
    #   are no more than 1,024 bytes long. The following is an example:
    #
    #   `3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo`
    #
    #   For more information, see [Using a startup script][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #   [2]: https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html
    #
    # @option params [Hash<String,String>] :airflow_configuration_options
    #   A list of key-value pairs containing the Apache Airflow configuration
    #   options you want to attach to your environment. For more information,
    #   see [Apache Airflow configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html
    #
    # @option params [String] :environment_class
    #   The environment class type. Valid values: `mw1.micro`, `mw1.small`,
    #   `mw1.medium`, `mw1.large`, `mw1.xlarge`, and `mw1.2xlarge`. For more
    #   information, see [Amazon MWAA environment class][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html
    #
    # @option params [Integer] :max_workers
    #   The maximum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers up to
    #   the number you specify in the `MaxWorkers` field. For example, `20`.
    #   When there are no more tasks running, and no more in the queue, MWAA
    #   disposes of the extra workers leaving the one worker that is included
    #   with your environment, or the number you specify in `MinWorkers`.
    #
    # @option params [String] :kms_key
    #   The Amazon Web Services Key Management Service (KMS) key to encrypt
    #   the data in your environment. You can use an Amazon Web Services owned
    #   CMK, or a Customer managed CMK (advanced). For more information, see
    #   [Create an Amazon MWAA environment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/create-environment.html
    #
    # @option params [String] :airflow_version
    #   The Apache Airflow version for your environment. If no value is
    #   specified, it defaults to the latest version. For more information,
    #   see [Apache Airflow versions on Amazon Managed Workflows for Apache
    #   Airflow (Amazon MWAA)][1].
    #
    #   Valid values: `1.10.12`, `2.0.2`, `2.2.2`, `2.4.3`, `2.5.1`, `2.6.3`,
    #   `2.7.2`, `2.8.1`, `2.9.2`, `2.10.1`, and `2.10.3`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/airflow-versions.html
    #
    # @option params [Types::LoggingConfigurationInput] :logging_configuration
    #   Defines the Apache Airflow logs to send to CloudWatch Logs.
    #
    # @option params [String] :weekly_maintenance_window_start
    #   The day and time of the week in Coordinated Universal Time (UTC)
    #   24-hour standard time to start weekly maintenance updates of your
    #   environment in the following format: `DAY:HH:MM`. For example:
    #   `TUE:03:30`. You can specify a start time in 30 minute increments
    #   only.
    #
    # @option params [Hash<String,String>] :tags
    #   The key-value tag pairs you want to associate to your environment. For
    #   example, `"Environment": "Staging"`. For more information, see
    #   [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [String] :webserver_access_mode
    #   Defines the access mode for the Apache Airflow *web server*. For more
    #   information, see [Apache Airflow access modes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html
    #
    # @option params [Integer] :min_workers
    #   The minimum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers up to
    #   the number you specify in the `MaxWorkers` field. When there are no
    #   more tasks running, and no more in the queue, MWAA disposes of the
    #   extra workers leaving the worker count you specify in the `MinWorkers`
    #   field. For example, `2`.
    #
    # @option params [Integer] :schedulers
    #   The number of Apache Airflow schedulers to run in your environment.
    #   Valid values:
    #
    #   * v2 - For environments larger than mw1.micro, accepts values from `2`
    #     to `5`. Defaults to `2` for all environment sizes except mw1.micro,
    #     which defaults to `1`.
    #
    #   * v1 - Accepts `1`.
    #
    # @option params [String] :endpoint_management
    #   Defines whether the VPC endpoints configured for the environment are
    #   created, and managed, by the customer or by Amazon MWAA. If set to
    #   `SERVICE`, Amazon MWAA will create and manage the required VPC
    #   endpoints in your VPC. If set to `CUSTOMER`, you must create, and
    #   manage, the VPC endpoints for your VPC. If you choose to create an
    #   environment in a shared VPC, you must set this value to `CUSTOMER`. In
    #   a shared VPC deployment, the environment will remain in `PENDING`
    #   status until you create the VPC endpoints. If you do not take action
    #   to create the endpoints within 72 hours, the status will change to
    #   `CREATE_FAILED`. You can delete the failed environment and create a
    #   new one.
    #
    # @option params [Integer] :min_webservers
    #   The minimum number of web servers that you want to run in your
    #   environment. Amazon MWAA scales the number of Apache Airflow web
    #   servers up to the number you specify for `MaxWebservers` when you
    #   interact with your Apache Airflow environment using Apache Airflow
    #   REST API, or the Apache Airflow CLI. As the transaction-per-second
    #   rate, and the network load, decrease, Amazon MWAA disposes of the
    #   additional web servers, and scales down to the number set in
    #   `MinxWebserers`.
    #
    #   Valid values: For environments larger than mw1.micro, accepts values
    #   from `2` to `5`. Defaults to `2` for all environment sizes except
    #   mw1.micro, which defaults to `1`.
    #
    # @option params [Integer] :max_webservers
    #   The maximum number of web servers that you want to run in your
    #   environment. Amazon MWAA scales the number of Apache Airflow web
    #   servers up to the number you specify for `MaxWebservers` when you
    #   interact with your Apache Airflow environment using Apache Airflow
    #   REST API, or the Apache Airflow CLI. For example, in scenarios where
    #   your workload requires network calls to the Apache Airflow REST API
    #   with a high transaction-per-second (TPS) rate, Amazon MWAA will
    #   increase the number of web servers up to the number set in
    #   `MaxWebserers`. As TPS rates decrease Amazon MWAA disposes of the
    #   additional web servers, and scales down to the number set in
    #   `MinxWebserers`.
    #
    #   Valid values: For environments larger than mw1.micro, accepts values
    #   from `2` to `5`. Defaults to `2` for all environment sizes except
    #   mw1.micro, which defaults to `1`.
    #
    # @return [Types::CreateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     name: "EnvironmentName", # required
    #     execution_role_arn: "IamRoleArn", # required
    #     source_bucket_arn: "S3BucketArn", # required
    #     dag_s3_path: "RelativePath", # required
    #     network_configuration: { # required
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     plugins_s3_path: "RelativePath",
    #     plugins_s3_object_version: "S3ObjectVersion",
    #     requirements_s3_path: "RelativePath",
    #     requirements_s3_object_version: "S3ObjectVersion",
    #     startup_script_s3_path: "RelativePath",
    #     startup_script_s3_object_version: "S3ObjectVersion",
    #     airflow_configuration_options: {
    #       "ConfigKey" => "ConfigValue",
    #     },
    #     environment_class: "EnvironmentClass",
    #     max_workers: 1,
    #     kms_key: "KmsKey",
    #     airflow_version: "AirflowVersion",
    #     logging_configuration: {
    #       dag_processing_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #       scheduler_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #       webserver_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #       worker_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #       task_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #     },
    #     weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     webserver_access_mode: "PRIVATE_ONLY", # accepts PRIVATE_ONLY, PUBLIC_ONLY
    #     min_workers: 1,
    #     schedulers: 1,
    #     endpoint_management: "CUSTOMER", # accepts CUSTOMER, SERVICE
    #     min_webservers: 1,
    #     max_webservers: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates a web login token for the Airflow Web UI. To learn more, see
    # [Creating an Apache Airflow web login token][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-web.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #
    # @return [Types::CreateWebLoginTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebLoginTokenResponse#web_token #web_token} => String
    #   * {Types::CreateWebLoginTokenResponse#web_server_hostname #web_server_hostname} => String
    #   * {Types::CreateWebLoginTokenResponse#iam_identity #iam_identity} => String
    #   * {Types::CreateWebLoginTokenResponse#airflow_identity #airflow_identity} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_login_token({
    #     name: "EnvironmentName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.web_token #=> String
    #   resp.web_server_hostname #=> String
    #   resp.iam_identity #=> String
    #   resp.airflow_identity #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateWebLoginToken AWS API Documentation
    #
    # @overload create_web_login_token(params = {})
    # @param [Hash] params ({})
    def create_web_login_token(params = {}, options = {})
      req = build_request(:create_web_login_token, params)
      req.send_request(options)
    end

    # Deletes an Amazon Managed Workflows for Apache Airflow (Amazon MWAA)
    # environment.
    #
    # @option params [required, String] :name
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     name: "EnvironmentName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Describes an Amazon Managed Workflows for Apache Airflow (MWAA)
    # environment.
    #
    # @option params [required, String] :name
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #
    # @return [Types::GetEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentOutput#environment #environment} => Types::Environment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     name: "EnvironmentName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environment.name #=> String
    #   resp.environment.status #=> String, one of "CREATING", "CREATE_FAILED", "AVAILABLE", "UPDATING", "DELETING", "DELETED", "UNAVAILABLE", "UPDATE_FAILED", "ROLLING_BACK", "CREATING_SNAPSHOT", "PENDING", "MAINTENANCE"
    #   resp.environment.arn #=> String
    #   resp.environment.created_at #=> Time
    #   resp.environment.webserver_url #=> String
    #   resp.environment.execution_role_arn #=> String
    #   resp.environment.service_role_arn #=> String
    #   resp.environment.kms_key #=> String
    #   resp.environment.airflow_version #=> String
    #   resp.environment.source_bucket_arn #=> String
    #   resp.environment.dag_s3_path #=> String
    #   resp.environment.plugins_s3_path #=> String
    #   resp.environment.plugins_s3_object_version #=> String
    #   resp.environment.requirements_s3_path #=> String
    #   resp.environment.requirements_s3_object_version #=> String
    #   resp.environment.startup_script_s3_path #=> String
    #   resp.environment.startup_script_s3_object_version #=> String
    #   resp.environment.airflow_configuration_options #=> Hash
    #   resp.environment.airflow_configuration_options["ConfigKey"] #=> String
    #   resp.environment.environment_class #=> String
    #   resp.environment.max_workers #=> Integer
    #   resp.environment.network_configuration.subnet_ids #=> Array
    #   resp.environment.network_configuration.subnet_ids[0] #=> String
    #   resp.environment.network_configuration.security_group_ids #=> Array
    #   resp.environment.network_configuration.security_group_ids[0] #=> String
    #   resp.environment.logging_configuration.dag_processing_logs.enabled #=> Boolean
    #   resp.environment.logging_configuration.dag_processing_logs.log_level #=> String, one of "CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"
    #   resp.environment.logging_configuration.dag_processing_logs.cloud_watch_log_group_arn #=> String
    #   resp.environment.logging_configuration.scheduler_logs.enabled #=> Boolean
    #   resp.environment.logging_configuration.scheduler_logs.log_level #=> String, one of "CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"
    #   resp.environment.logging_configuration.scheduler_logs.cloud_watch_log_group_arn #=> String
    #   resp.environment.logging_configuration.webserver_logs.enabled #=> Boolean
    #   resp.environment.logging_configuration.webserver_logs.log_level #=> String, one of "CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"
    #   resp.environment.logging_configuration.webserver_logs.cloud_watch_log_group_arn #=> String
    #   resp.environment.logging_configuration.worker_logs.enabled #=> Boolean
    #   resp.environment.logging_configuration.worker_logs.log_level #=> String, one of "CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"
    #   resp.environment.logging_configuration.worker_logs.cloud_watch_log_group_arn #=> String
    #   resp.environment.logging_configuration.task_logs.enabled #=> Boolean
    #   resp.environment.logging_configuration.task_logs.log_level #=> String, one of "CRITICAL", "ERROR", "WARNING", "INFO", "DEBUG"
    #   resp.environment.logging_configuration.task_logs.cloud_watch_log_group_arn #=> String
    #   resp.environment.last_update.status #=> String, one of "SUCCESS", "PENDING", "FAILED"
    #   resp.environment.last_update.created_at #=> Time
    #   resp.environment.last_update.error.error_code #=> String
    #   resp.environment.last_update.error.error_message #=> String
    #   resp.environment.last_update.source #=> String
    #   resp.environment.last_update.worker_replacement_strategy #=> String, one of "FORCED", "GRACEFUL"
    #   resp.environment.weekly_maintenance_window_start #=> String
    #   resp.environment.tags #=> Hash
    #   resp.environment.tags["TagKey"] #=> String
    #   resp.environment.webserver_access_mode #=> String, one of "PRIVATE_ONLY", "PUBLIC_ONLY"
    #   resp.environment.min_workers #=> Integer
    #   resp.environment.schedulers #=> Integer
    #   resp.environment.webserver_vpc_endpoint_service #=> String
    #   resp.environment.database_vpc_endpoint_service #=> String
    #   resp.environment.celery_executor_queue #=> String
    #   resp.environment.endpoint_management #=> String, one of "CUSTOMER", "SERVICE"
    #   resp.environment.min_webservers #=> Integer
    #   resp.environment.max_webservers #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Invokes the Apache Airflow REST API on the webserver with the
    # specified inputs. To learn more, see [Using the Apache Airflow REST
    # API][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/access-mwaa-apache-airflow-rest-api.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #
    # @option params [required, String] :path
    #   The Apache Airflow REST API endpoint path to be called. For example,
    #   `/dags/123456/clearTaskInstances`. For more information, see [Apache
    #   Airflow API][1]
    #
    #
    #
    #   [1]: https://airflow.apache.org/docs/apache-airflow/stable/stable-rest-api-ref.html
    #
    # @option params [required, String] :method
    #   The HTTP method used for making Airflow REST API calls. For example,
    #   `POST`.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :query_parameters
    #   Query parameters to be included in the Apache Airflow REST API call,
    #   provided as a JSON object.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :body
    #   The request body for the Apache Airflow REST API call, provided as a
    #   JSON object.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @return [Types::InvokeRestApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeRestApiResponse#rest_api_status_code #rest_api_status_code} => Integer
    #   * {Types::InvokeRestApiResponse#rest_api_response #rest_api_response} => Hash,Array,String,Numeric,Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_rest_api({
    #     name: "EnvironmentName", # required
    #     path: "RestApiPath", # required
    #     method: "GET", # required, accepts GET, PUT, POST, PATCH, DELETE
    #     query_parameters: {
    #     },
    #     body: {
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.rest_api_status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/InvokeRestApi AWS API Documentation
    #
    # @overload invoke_rest_api(params = {})
    # @param [Hash] params ({})
    def invoke_rest_api(params = {}, options = {})
      req = build_request(:invoke_rest_api, params)
      req.send_request(options)
    end

    # Lists the Amazon Managed Workflows for Apache Airflow (MWAA)
    # environments.
    #
    # @option params [String] :next_token
    #   Retrieves the next page of the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve per page. For example, `5`
    #   environments per page.
    #
    # @return [Types::ListEnvironmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsOutput#environments #environments} => Array&lt;String&gt;
    #   * {Types::ListEnvironmentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists the key-value tag pairs associated to the Amazon Managed
    # Workflows for Apache Airflow (MWAA) environment. For example,
    # `"Environment": "Staging"`.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
    #   example,
    #   `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "EnvironmentArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # **Internal only**. Publishes environment health metrics to Amazon
    # CloudWatch.
    #
    # @option params [required, String] :environment_name
    #   **Internal only**. The name of the environment.
    #
    # @option params [required, Array<Types::MetricDatum>] :metric_data
    #   **Internal only**. Publishes metrics to Amazon CloudWatch. To learn
    #   more about the metrics published to Amazon CloudWatch, see [Amazon
    #   MWAA performance metrics in Amazon CloudWatch][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_metrics({
    #     environment_name: "EnvironmentName", # required
    #     metric_data: [ # required
    #       {
    #         metric_name: "String", # required
    #         timestamp: Time.now, # required
    #         dimensions: [
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         value: 1.0,
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         statistic_values: {
    #           sample_count: 1,
    #           sum: 1.0,
    #           minimum: 1.0,
    #           maximum: 1.0,
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/PublishMetrics AWS API Documentation
    #
    # @overload publish_metrics(params = {})
    # @param [Hash] params ({})
    def publish_metrics(params = {}, options = {})
      req = build_request(:publish_metrics, params)
      req.send_request(options)
    end

    # Associates key-value tag pairs to your Amazon Managed Workflows for
    # Apache Airflow (MWAA) environment.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
    #   example,
    #   `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The key-value tag pairs you want to associate to your environment. For
    #   example, `"Environment": "Staging"`. For more information, see
    #   [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "EnvironmentArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes key-value tag pairs associated to your Amazon Managed
    # Workflows for Apache Airflow (MWAA) environment. For example,
    # `"Environment": "Staging"`.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
    #   example,
    #   `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The key-value tag pair you want to remove. For example,
    #   `"Environment": "Staging"`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "EnvironmentArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an Amazon Managed Workflows for Apache Airflow (MWAA)
    # environment.
    #
    # @option params [required, String] :name
    #   The name of your Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role in IAM that
    #   allows MWAA to access Amazon Web Services resources in your
    #   environment. For example,
    #   `arn:aws:iam::123456789:role/my-execution-role`. For more information,
    #   see [Amazon MWAA Execution role][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html
    #
    # @option params [Hash<String,String>] :airflow_configuration_options
    #   A list of key-value pairs containing the Apache Airflow configuration
    #   options you want to attach to your environment. For more information,
    #   see [Apache Airflow configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html
    #
    # @option params [String] :airflow_version
    #   The Apache Airflow version for your environment. To upgrade your
    #   environment, specify a newer version of Apache Airflow supported by
    #   Amazon MWAA.
    #
    #   Before you upgrade an environment, make sure your requirements, DAGs,
    #   plugins, and other resources used in your workflows are compatible
    #   with the new Apache Airflow version. For more information about
    #   updating your resources, see [Upgrading an Amazon MWAA
    #   environment][1].
    #
    #   Valid values: `1.10.12`, `2.0.2`, `2.2.2`, `2.4.3`, `2.5.1`, `2.6.3`,
    #   `2.7.2`, `2.8.1`, `2.9.2`, `2.10.1`, and `2.10.3`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/upgrading-environment.html
    #
    # @option params [String] :dag_s3_path
    #   The relative path to the DAGs folder on your Amazon S3 bucket. For
    #   example, `dags`. For more information, see [Adding or updating
    #   DAGs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html
    #
    # @option params [String] :environment_class
    #   The environment class type. Valid values: `mw1.micro`, `mw1.small`,
    #   `mw1.medium`, `mw1.large`, `mw1.xlarge`, and `mw1.2xlarge`. For more
    #   information, see [Amazon MWAA environment class][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html
    #
    # @option params [Types::LoggingConfigurationInput] :logging_configuration
    #   The Apache Airflow log types to send to CloudWatch Logs.
    #
    # @option params [Integer] :max_workers
    #   The maximum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers up to
    #   the number you specify in the `MaxWorkers` field. For example, `20`.
    #   When there are no more tasks running, and no more in the queue, MWAA
    #   disposes of the extra workers leaving the one worker that is included
    #   with your environment, or the number you specify in `MinWorkers`.
    #
    # @option params [Integer] :min_workers
    #   The minimum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers up to
    #   the number you specify in the `MaxWorkers` field. When there are no
    #   more tasks running, and no more in the queue, MWAA disposes of the
    #   extra workers leaving the worker count you specify in the `MinWorkers`
    #   field. For example, `2`.
    #
    # @option params [Integer] :max_webservers
    #   The maximum number of web servers that you want to run in your
    #   environment. Amazon MWAA scales the number of Apache Airflow web
    #   servers up to the number you specify for `MaxWebservers` when you
    #   interact with your Apache Airflow environment using Apache Airflow
    #   REST API, or the Apache Airflow CLI. For example, in scenarios where
    #   your workload requires network calls to the Apache Airflow REST API
    #   with a high transaction-per-second (TPS) rate, Amazon MWAA will
    #   increase the number of web servers up to the number set in
    #   `MaxWebserers`. As TPS rates decrease Amazon MWAA disposes of the
    #   additional web servers, and scales down to the number set in
    #   `MinxWebserers`.
    #
    #   Valid values: For environments larger than mw1.micro, accepts values
    #   from `2` to `5`. Defaults to `2` for all environment sizes except
    #   mw1.micro, which defaults to `1`.
    #
    # @option params [Integer] :min_webservers
    #   The minimum number of web servers that you want to run in your
    #   environment. Amazon MWAA scales the number of Apache Airflow web
    #   servers up to the number you specify for `MaxWebservers` when you
    #   interact with your Apache Airflow environment using Apache Airflow
    #   REST API, or the Apache Airflow CLI. As the transaction-per-second
    #   rate, and the network load, decrease, Amazon MWAA disposes of the
    #   additional web servers, and scales down to the number set in
    #   `MinxWebserers`.
    #
    #   Valid values: For environments larger than mw1.micro, accepts values
    #   from `2` to `5`. Defaults to `2` for all environment sizes except
    #   mw1.micro, which defaults to `1`.
    #
    # @option params [String] :worker_replacement_strategy
    #   The worker replacement strategy to use when updating the environment.
    #
    #   You can select one of the following strategies:
    #
    #   * **Forced -** Stops and replaces Apache Airflow workers without
    #     waiting for tasks to complete before an update.
    #
    #   * **Graceful -** Allows Apache Airflow workers to complete running
    #     tasks for up to 12 hours during an update before they're stopped
    #     and replaced.
    #
    # @option params [Types::UpdateNetworkConfigurationInput] :network_configuration
    #   The VPC networking components used to secure and enable network
    #   traffic between the Amazon Web Services resources for your
    #   environment. For more information, see [About networking on Amazon
    #   MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html
    #
    # @option params [String] :plugins_s3_path
    #   The relative path to the `plugins.zip` file on your Amazon S3 bucket.
    #   For example, `plugins.zip`. If specified, then the plugins.zip version
    #   is required. For more information, see [Installing custom plugins][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html
    #
    # @option params [String] :plugins_s3_object_version
    #   The version of the plugins.zip file on your Amazon S3 bucket. You must
    #   specify a version each time a `plugins.zip` file is updated. For more
    #   information, see [How S3 Versioning works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #
    # @option params [String] :requirements_s3_path
    #   The relative path to the `requirements.txt` file on your Amazon S3
    #   bucket. For example, `requirements.txt`. If specified, then a file
    #   version is required. For more information, see [Installing Python
    #   dependencies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html
    #
    # @option params [String] :requirements_s3_object_version
    #   The version of the requirements.txt file on your Amazon S3 bucket. You
    #   must specify a version each time a `requirements.txt` file is updated.
    #   For more information, see [How S3 Versioning works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #
    # @option params [Integer] :schedulers
    #   The number of Apache Airflow schedulers to run in your Amazon MWAA
    #   environment.
    #
    # @option params [String] :source_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
    #   code and supporting files are stored. For example,
    #   `arn:aws:s3:::my-airflow-bucket-unique-name`. For more information,
    #   see [Create an Amazon S3 bucket for Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html
    #
    # @option params [String] :startup_script_s3_path
    #   The relative path to the startup shell script in your Amazon S3
    #   bucket. For example, `s3://mwaa-environment/startup.sh`.
    #
    #   Amazon MWAA runs the script as your environment starts, and before
    #   running the Apache Airflow process. You can use this script to install
    #   dependencies, modify Apache Airflow configuration options, and set
    #   environment variables. For more information, see [Using a startup
    #   script][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html
    #
    # @option params [String] :startup_script_s3_object_version
    #   The version of the startup shell script in your Amazon S3 bucket. You
    #   must specify the [version ID][1] that Amazon S3 assigns to the file
    #   every time you update the script.
    #
    #   Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that
    #   are no more than 1,024 bytes long. The following is an example:
    #
    #   `3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo`
    #
    #   For more information, see [Using a startup script][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #   [2]: https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html
    #
    # @option params [String] :webserver_access_mode
    #   The Apache Airflow *Web server* access mode. For more information, see
    #   [Apache Airflow access modes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html
    #
    # @option params [String] :weekly_maintenance_window_start
    #   The day and time of the week in Coordinated Universal Time (UTC)
    #   24-hour standard time to start weekly maintenance updates of your
    #   environment in the following format: `DAY:HH:MM`. For example:
    #   `TUE:03:30`. You can specify a start time in 30 minute increments
    #   only.
    #
    # @return [Types::UpdateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     name: "EnvironmentName", # required
    #     execution_role_arn: "IamRoleArn",
    #     airflow_configuration_options: {
    #       "ConfigKey" => "ConfigValue",
    #     },
    #     airflow_version: "AirflowVersion",
    #     dag_s3_path: "RelativePath",
    #     environment_class: "EnvironmentClass",
    #     logging_configuration: {
    #       dag_processing_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #       scheduler_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #       webserver_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #       worker_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #       task_logs: {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       },
    #     },
    #     max_workers: 1,
    #     min_workers: 1,
    #     max_webservers: 1,
    #     min_webservers: 1,
    #     worker_replacement_strategy: "FORCED", # accepts FORCED, GRACEFUL
    #     network_configuration: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     plugins_s3_path: "RelativePath",
    #     plugins_s3_object_version: "S3ObjectVersion",
    #     requirements_s3_path: "RelativePath",
    #     requirements_s3_object_version: "S3ObjectVersion",
    #     schedulers: 1,
    #     source_bucket_arn: "S3BucketArn",
    #     startup_script_s3_path: "RelativePath",
    #     startup_script_s3_object_version: "S3ObjectVersion",
    #     webserver_access_mode: "PRIVATE_ONLY", # accepts PRIVATE_ONLY, PUBLIC_ONLY
    #     weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MWAA')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-mwaa'
      context[:gem_version] = '1.60.0'
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
