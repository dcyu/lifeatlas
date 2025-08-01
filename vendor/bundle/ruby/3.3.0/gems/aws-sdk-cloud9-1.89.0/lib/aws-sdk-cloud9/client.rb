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

module Aws::Cloud9
  # An API client for Cloud9.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Cloud9::Client.new(
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

    @identifier = :cloud9

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
    add_plugin(Aws::Cloud9::Plugins::Endpoints)

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
    #   @option options [Aws::Cloud9::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Cloud9::EndpointParameters`.
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

    # Creates an Cloud9 development environment, launches an Amazon Elastic
    # Compute Cloud (Amazon EC2) instance, and then connects from the
    # instance to the environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :name
    #   The name of the environment to create.
    #
    #   This name is visible to other IAM users in the same Amazon Web
    #   Services account.
    #
    # @option params [String] :description
    #   The description of the environment to create.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive string that helps Cloud9 to ensure this
    #   operation completes no more than one time.
    #
    #   For more information, see [Client Tokens][1] in the *Amazon EC2 API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :instance_type
    #   The type of instance to connect to the environment (for example,
    #   `t2.micro`).
    #
    # @option params [String] :subnet_id
    #   The ID of the subnet in Amazon VPC that Cloud9 will use to communicate
    #   with the Amazon EC2 instance.
    #
    # @option params [required, String] :image_id
    #   The identifier for the Amazon Machine Image (AMI) that's used to
    #   create the EC2 instance. To choose an AMI for the instance, you must
    #   specify a valid AMI alias or a valid Amazon EC2 Systems Manager (SSM)
    #   path.
    #
    #
    #
    #   We recommend using Amazon Linux 2023 as the AMI to create your
    #   environment as it is fully supported.
    #
    #   From December 16, 2024, Ubuntu 18.04 will be removed from the list of
    #   available `imageIds` for Cloud9. This change is necessary as Ubuntu
    #   18.04 has ended standard support on May 31, 2023. This change will
    #   only affect direct API consumers, and not Cloud9 console users.
    #
    #   Since Ubuntu 18.04 has ended standard support as of May 31, 2023, we
    #   recommend you choose Ubuntu 22.04.
    #
    #   <b>AMI aliases </b>
    #
    #   * Amazon Linux 2: `amazonlinux-2-x86_64`
    #
    #   * Amazon Linux 2023 (recommended): `amazonlinux-2023-x86_64`
    #
    #   * Ubuntu 18.04: `ubuntu-18.04-x86_64`
    #
    #   * Ubuntu 22.04: `ubuntu-22.04-x86_64`
    #
    #   **SSM paths**
    #
    #   * Amazon Linux 2:
    #     `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64`
    #
    #   * Amazon Linux 2023 (recommended):
    #     `resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2023-x86_64`
    #
    #   * Ubuntu 18.04:
    #     `resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64`
    #
    #   * Ubuntu 22.04:
    #     `resolve:ssm:/aws/service/cloud9/amis/ubuntu-22.04-x86_64`
    #
    # @option params [Integer] :automatic_stop_time_minutes
    #   The number of minutes until the running instance is shut down after
    #   the environment has last been used.
    #
    # @option params [String] :owner_arn
    #   The Amazon Resource Name (ARN) of the environment owner. This ARN can
    #   be the ARN of any IAM principal. If this value is not specified, the
    #   ARN defaults to this environment's creator.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key-value pairs that will be associated with the new
    #   Cloud9 development environment.
    #
    # @option params [String] :connection_type
    #   The connection type used for connecting to an Amazon EC2 environment.
    #   Valid values are `CONNECT_SSH` (default) and `CONNECT_SSM` (connected
    #   through Amazon EC2 Systems Manager).
    #
    #   For more information, see [Accessing no-ingress EC2 instances with
    #   Amazon EC2 Systems Manager][1] in the *Cloud9 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html
    #
    # @option params [Boolean] :dry_run
    #   Checks whether you have the required permissions for the action,
    #   without actually making the request, and provides an error response.
    #   If you have the required permissions, the error response is
    #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
    #
    # @return [Types::CreateEnvironmentEC2Result] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentEC2Result#environment_id #environment_id} => String
    #
    #
    # @example Example: CreateEnvironmentEC2
    #
    #   resp = client.create_environment_ec2({
    #     name: "my-demo-environment", 
    #     automatic_stop_time_minutes: 60, 
    #     description: "This is my demonstration environment.", 
    #     image_id: "amazonlinux-2023-x86_64", 
    #     instance_type: "t2.micro", 
    #     owner_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #     subnet_id: "subnet-6300cd1b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_ec2({
    #     name: "EnvironmentName", # required
    #     description: "EnvironmentDescription",
    #     client_request_token: "ClientRequestToken",
    #     instance_type: "InstanceType", # required
    #     subnet_id: "SubnetId",
    #     image_id: "ImageId", # required
    #     automatic_stop_time_minutes: 1,
    #     owner_arn: "UserArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     connection_type: "CONNECT_SSH", # accepts CONNECT_SSH, CONNECT_SSM
    #     dry_run: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.environment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentEC2 AWS API Documentation
    #
    # @overload create_environment_ec2(params = {})
    # @param [Hash] params ({})
    def create_environment_ec2(params = {}, options = {})
      req = build_request(:create_environment_ec2, params)
      req.send_request(options)
    end

    # Adds an environment member to an Cloud9 development environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment that contains the environment member you
    #   want to add.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the environment member you want to
    #   add.
    #
    # @option params [required, String] :permissions
    #   The type of environment member permissions you want to associate with
    #   this environment member. Available values include:
    #
    #   * `read-only`: Has read-only access to the environment.
    #
    #   * `read-write`: Has read-write access to the environment.
    #
    # @return [Types::CreateEnvironmentMembershipResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentMembershipResult#membership #membership} => Types::EnvironmentMember
    #
    #
    # @example Example: CreateEnvironmentMembership
    #
    #   resp = client.create_environment_membership({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #     permissions: "read-write", 
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     membership: {
    #       environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #       permissions: "read-write", 
    #       user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #       user_id: "AIDAJ3BA6O2FMJWCWXHEX", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_membership({
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #     permissions: "read-write", # required, accepts read-write, read-only
    #   })
    #
    # @example Response structure
    #
    #   resp.membership.permissions #=> String, one of "owner", "read-write", "read-only"
    #   resp.membership.user_id #=> String
    #   resp.membership.user_arn #=> String
    #   resp.membership.environment_id #=> String
    #   resp.membership.last_access #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/CreateEnvironmentMembership AWS API Documentation
    #
    # @overload create_environment_membership(params = {})
    # @param [Hash] params ({})
    def create_environment_membership(params = {}, options = {})
      req = build_request(:create_environment_membership, params)
      req.send_request(options)
    end

    # Deletes an Cloud9 development environment. If an Amazon EC2 instance
    # is connected to the environment, also terminates the instance.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteEnvironment
    #
    #   resp = client.delete_environment({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes an environment member from a development environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment to delete the environment member from.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the environment member to delete
    #   from the environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteEnvironmentMembership
    #
    #   resp = client.delete_environment_membership({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_membership({
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DeleteEnvironmentMembership AWS API Documentation
    #
    # @overload delete_environment_membership(params = {})
    # @param [Hash] params ({})
    def delete_environment_membership(params = {}, options = {})
      req = build_request(:delete_environment_membership, params)
      req.send_request(options)
    end

    # Gets information about environment members for an Cloud9 development
    # environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [String] :user_arn
    #   The Amazon Resource Name (ARN) of an individual environment member to
    #   get information about. If no value is specified, information about all
    #   environment members are returned.
    #
    # @option params [String] :environment_id
    #   The ID of the environment to get environment member information about.
    #
    # @option params [Array<String>] :permissions
    #   The type of environment member permissions to get information about.
    #   Available values include:
    #
    #   * `owner`: Owns the environment.
    #
    #   * `read-only`: Has read-only access to the environment.
    #
    #   * `read-write`: Has read-write access to the environment.
    #
    #   If no value is specified, information about all environment members
    #   are returned.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 25 items in the list,
    #   only the first 25 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environment members to get information about.
    #
    # @return [Types::DescribeEnvironmentMembershipsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentMembershipsResult#memberships #memberships} => Array&lt;Types::EnvironmentMember&gt;
    #   * {Types::DescribeEnvironmentMembershipsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: DescribeEnvironmentMemberships1
    #
    #   # The following example gets information about all of the environment members for the specified development environment.
    #
    #   resp = client.describe_environment_memberships({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     memberships: [
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #         permissions: "read-write", 
    #         user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #         user_id: "AIDAJ3BA6O2FMJWCWXHEX", 
    #       }, 
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #         permissions: "owner", 
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #         user_id: "AIDAJNUEDQAQWFELJDLEX", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: DescribeEnvironmentMemberships2
    #
    #   # The following example gets information about the owner of the specified development environment.
    #
    #   resp = client.describe_environment_memberships({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #     permissions: [
    #       "owner", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     memberships: [
    #       {
    #         environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #         permissions: "owner", 
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #         user_id: "AIDAJNUEDQAQWFELJDLEX", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: DescribeEnvironmentMemberships3
    #
    #   # The following example gets development environment membership information for the specified user.
    #
    #   resp = client.describe_environment_memberships({
    #     user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     memberships: [
    #       {
    #         environment_id: "10a75714bd494714929e7f5ec4125aEX", 
    #         last_access: Time.parse("2018-01-19T11:06:13Z"), 
    #         permissions: "owner", 
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #         user_id: "AIDAJNUEDQAQWFELJDLEX", 
    #       }, 
    #       {
    #         environment_id: "12bfc3cd537f41cb9776f8af5525c9EX", 
    #         last_access: Time.parse("2018-01-19T11:39:19Z"), 
    #         permissions: "owner", 
    #         user_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #         user_id: "AIDAJNUEDQAQWFELJDLEX", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_memberships({
    #     user_arn: "UserArn",
    #     environment_id: "EnvironmentId",
    #     permissions: ["owner"], # accepts owner, read-write, read-only
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.memberships #=> Array
    #   resp.memberships[0].permissions #=> String, one of "owner", "read-write", "read-only"
    #   resp.memberships[0].user_id #=> String
    #   resp.memberships[0].user_arn #=> String
    #   resp.memberships[0].environment_id #=> String
    #   resp.memberships[0].last_access #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentMemberships AWS API Documentation
    #
    # @overload describe_environment_memberships(params = {})
    # @param [Hash] params ({})
    def describe_environment_memberships(params = {}, options = {})
      req = build_request(:describe_environment_memberships, params)
      req.send_request(options)
    end

    # Gets status information for an Cloud9 development environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment to get status information about.
    #
    # @return [Types::DescribeEnvironmentStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentStatusResult#status #status} => String
    #   * {Types::DescribeEnvironmentStatusResult#message #message} => String
    #
    #
    # @example Example: DescribeEnvironmentStatus
    #
    #   resp = client.describe_environment_status({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     message: "Environment is ready to use", 
    #     status: "ready", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_status({
    #     environment_id: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "error", "creating", "connecting", "ready", "stopping", "stopped", "deleting"
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironmentStatus AWS API Documentation
    #
    # @overload describe_environment_status(params = {})
    # @param [Hash] params ({})
    def describe_environment_status(params = {}, options = {})
      req = build_request(:describe_environment_status, params)
      req.send_request(options)
    end

    # Gets information about Cloud9 development environments.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, Array<String>] :environment_ids
    #   The IDs of individual environments to get information about.
    #
    # @return [Types::DescribeEnvironmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEnvironmentsResult#environments #environments} => Array&lt;Types::Environment&gt;
    #
    #
    # @example Example: DescribeEnvironments
    #
    #   resp = client.describe_environments({
    #     environment_ids: [
    #       "8d9967e2f0624182b74e7690ad69ebEX", 
    #       "349c86d4579e4e7298d500ff57a6b2EX", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environments: [
    #       {
    #         name: "my-demo-environment", 
    #         type: "ec2", 
    #         arn: "arn:aws:cloud9:us-east-2:123456789012:environment:8d9967e2f0624182b74e7690ad69ebEX", 
    #         description: "This is my demonstration environment.", 
    #         id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #         lifecycle: {
    #           status: "CREATED", 
    #         }, 
    #         owner_arn: "arn:aws:iam::123456789012:user/MyDemoUser", 
    #       }, 
    #       {
    #         name: "another-demo-environment", 
    #         type: "ssh", 
    #         arn: "arn:aws:cloud9:us-east-2:123456789012:environment:349c86d4579e4e7298d500ff57a6b2EX", 
    #         description: "", 
    #         id: "349c86d4579e4e7298d500ff57a6b2EX", 
    #         lifecycle: {
    #           status: "CREATED", 
    #         }, 
    #         owner_arn: "arn:aws:sts::123456789012:assumed-role/AnotherDemoUser/AnotherDemoUser", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environments({
    #     environment_ids: ["EnvironmentId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.environments #=> Array
    #   resp.environments[0].id #=> String
    #   resp.environments[0].name #=> String
    #   resp.environments[0].description #=> String
    #   resp.environments[0].type #=> String, one of "ssh", "ec2"
    #   resp.environments[0].connection_type #=> String, one of "CONNECT_SSH", "CONNECT_SSM"
    #   resp.environments[0].arn #=> String
    #   resp.environments[0].owner_arn #=> String
    #   resp.environments[0].lifecycle.status #=> String, one of "CREATING", "CREATED", "CREATE_FAILED", "DELETING", "DELETE_FAILED"
    #   resp.environments[0].lifecycle.reason #=> String
    #   resp.environments[0].lifecycle.failure_resource #=> String
    #   resp.environments[0].managed_credentials_status #=> String, one of "ENABLED_ON_CREATE", "ENABLED_BY_OWNER", "DISABLED_BY_DEFAULT", "DISABLED_BY_OWNER", "DISABLED_BY_COLLABORATOR", "PENDING_REMOVAL_BY_COLLABORATOR", "PENDING_START_REMOVAL_BY_COLLABORATOR", "PENDING_REMOVAL_BY_OWNER", "PENDING_START_REMOVAL_BY_OWNER", "FAILED_REMOVAL_BY_COLLABORATOR", "FAILED_REMOVAL_BY_OWNER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/DescribeEnvironments AWS API Documentation
    #
    # @overload describe_environments(params = {})
    # @param [Hash] params ({})
    def describe_environments(params = {}, options = {})
      req = build_request(:describe_environments, params)
      req.send_request(options)
    end

    # Gets a list of Cloud9 development environment identifiers.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 25 items in the list,
    #   only the first 25 items are returned, along with a unique string
    #   called a *next token*. To get the next batch of items in the list,
    #   call this operation again, adding the next token to the call. To get
    #   all of the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environments to get identifiers for.
    #
    # @return [Types::ListEnvironmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsResult#next_token #next_token} => String
    #   * {Types::ListEnvironmentsResult#environment_ids #environment_ids} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListEnvironments
    #
    #   resp = client.list_environments({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     environment_ids: [
    #       "349c86d4579e4e7298d500ff57a6b2EX", 
    #       "45a3da47af0840f2b0c0824f5ee232EX", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.environment_ids #=> Array
    #   resp.environment_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Gets a list of the tags associated with an Cloud9 development
    # environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Cloud9 development environment
    #   to get the tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "EnvironmentArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds tags to an Cloud9 development environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    # Tags that you add to an Cloud9 environment by using this method will
    # NOT be automatically propagated to underlying resources.
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Cloud9 development environment
    #   to add tags to.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of tags to add to the given Cloud9 development environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "EnvironmentArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an Cloud9 development environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Cloud9 development environment
    #   to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag names of the tags to remove from the given Cloud9 development
    #   environment.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Changes the settings of an existing Cloud9 development environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment to change settings.
    #
    # @option params [String] :name
    #   A replacement name for the environment.
    #
    # @option params [String] :description
    #   Any new or replacement description for the environment.
    #
    # @option params [String] :managed_credentials_action
    #   Allows the environment owner to turn on or turn off the Amazon Web
    #   Services managed temporary credentials for an Cloud9 environment by
    #   using one of the following values:
    #
    #   * `ENABLE`
    #
    #   * `DISABLE`
    #
    #   <note markdown="1"> Only the environment owner can change the status of managed temporary
    #   credentials. An `AccessDeniedException` is thrown if an attempt to
    #   turn on or turn off managed temporary credentials is made by an
    #   account that's not the environment owner.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateEnvironment
    #
    #   resp = client.update_environment({
    #     name: "my-changed-demo-environment", 
    #     description: "This is my changed demonstration environment.", 
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     environment_id: "EnvironmentId", # required
    #     name: "EnvironmentName",
    #     description: "EnvironmentDescription",
    #     managed_credentials_action: "ENABLE", # accepts ENABLE, DISABLE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Changes the settings of an existing environment member for an Cloud9
    # development environment.
    #
    # Cloud9 is no longer available to new customers. Existing customers of
    # Cloud9 can continue to use the service as normal. [Learn more"][1]
    #
    #
    #
    # [1]: http://aws.amazon.com/blogs/devops/how-to-migrate-from-aws-cloud9-to-aws-ide-toolkits-or-aws-cloudshell/
    #
    # @option params [required, String] :environment_id
    #   The ID of the environment for the environment member whose settings
    #   you want to change.
    #
    # @option params [required, String] :user_arn
    #   The Amazon Resource Name (ARN) of the environment member whose
    #   settings you want to change.
    #
    # @option params [required, String] :permissions
    #   The replacement type of environment member permissions you want to
    #   associate with this environment member. Available values include:
    #
    #   * `read-only`: Has read-only access to the environment.
    #
    #   * `read-write`: Has read-write access to the environment.
    #
    # @return [Types::UpdateEnvironmentMembershipResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentMembershipResult#membership #membership} => Types::EnvironmentMember
    #
    #
    # @example Example: UpdateEnvironmentMembership
    #
    #   resp = client.update_environment_membership({
    #     environment_id: "8d9967e2f0624182b74e7690ad69ebEX", 
    #     permissions: "read-only", 
    #     user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     membership: {
    #       environment_id: "8d9967e2f0624182b74e7690ad69eb31", 
    #       permissions: "read-only", 
    #       user_arn: "arn:aws:iam::123456789012:user/AnotherDemoUser", 
    #       user_id: "AIDAJ3BA6O2FMJWCWXHEX", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_membership({
    #     environment_id: "EnvironmentId", # required
    #     user_arn: "UserArn", # required
    #     permissions: "read-write", # required, accepts read-write, read-only
    #   })
    #
    # @example Response structure
    #
    #   resp.membership.permissions #=> String, one of "owner", "read-write", "read-only"
    #   resp.membership.user_id #=> String
    #   resp.membership.user_arn #=> String
    #   resp.membership.environment_id #=> String
    #   resp.membership.last_access #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloud9-2017-09-23/UpdateEnvironmentMembership AWS API Documentation
    #
    # @overload update_environment_membership(params = {})
    # @param [Hash] params ({})
    def update_environment_membership(params = {}, options = {})
      req = build_request(:update_environment_membership, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Cloud9')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-cloud9'
      context[:gem_version] = '1.89.0'
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
