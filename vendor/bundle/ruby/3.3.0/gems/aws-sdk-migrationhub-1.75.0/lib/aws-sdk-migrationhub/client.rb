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

module Aws::MigrationHub
  # An API client for MigrationHub.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MigrationHub::Client.new(
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

    @identifier = :migrationhub

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
    add_plugin(Aws::MigrationHub::Plugins::Endpoints)

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
    #   @option options [Aws::MigrationHub::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MigrationHub::EndpointParameters`.
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

    # Associates a created artifact of an AWS cloud resource, the target
    # receiving the migration, with the migration task performed by a
    # migration tool. This API has the following traits:
    #
    # * Migration tools can call the `AssociateCreatedArtifact` operation to
    #   indicate which AWS artifact is associated with a migration task.
    #
    # * The created artifact name must be provided in ARN (Amazon Resource
    #   Name) format which will contain information about type and region;
    #   for example:
    #   `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.
    #
    # * Examples of the AWS resource behind the created artifact are,
    #   AMI's, EC2 instance, or DMS endpoint, etc.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #
    # @option params [required, Types::CreatedArtifact] :created_artifact
    #   An ARN of the AWS resource related to the migration (e.g., AMI, EC2
    #   instance, RDS instance, etc.)
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_created_artifact({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     created_artifact: { # required
    #       name: "CreatedArtifactName", # required
    #       description: "CreatedArtifactDescription",
    #     },
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateCreatedArtifact AWS API Documentation
    #
    # @overload associate_created_artifact(params = {})
    # @param [Hash] params ({})
    def associate_created_artifact(params = {}, options = {})
      req = build_request(:associate_created_artifact, params)
      req.send_request(options)
    end

    # Associates a discovered resource ID from Application Discovery Service
    # with a migration task.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   The identifier given to the MigrationTask. *Do not store personal data
    #   in this field.*
    #
    # @option params [required, Types::DiscoveredResource] :discovered_resource
    #   Object representing a Resource.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_discovered_resource({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     discovered_resource: { # required
    #       configuration_id: "ConfigurationId", # required
    #       description: "DiscoveredResourceDescription",
    #     },
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateDiscoveredResource AWS API Documentation
    #
    # @overload associate_discovered_resource(params = {})
    # @param [Hash] params ({})
    def associate_discovered_resource(params = {}, options = {})
      req = build_request(:associate_discovered_resource, params)
      req.send_request(options)
    end

    # Associates a source resource with a migration task. For example, the
    # source resource can be a source server, an application, or a migration
    # wave.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the progress-update stream, which is used for access
    #   control as well as a namespace for migration-task names that is
    #   implicitly linked to your AWS account. The progress-update stream must
    #   uniquely identify the migration tool as it is used for all updates
    #   made by the tool; however, it does not need to be unique for each AWS
    #   account because it is scoped to the AWS account.
    #
    # @option params [required, String] :migration_task_name
    #   A unique identifier that references the migration task. *Do not
    #   include sensitive data in this field.*
    #
    # @option params [required, Types::SourceResource] :source_resource
    #   The source resource that you want to associate.
    #
    # @option params [Boolean] :dry_run
    #   This is an optional parameter that you can use to test whether the
    #   call will succeed. Set this parameter to `true` to verify that you
    #   have the permissions that are required to make the call, and that you
    #   have specified the other parameters in the call correctly.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_source_resource({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     source_resource: { # required
    #       name: "SourceResourceName", # required
    #       description: "SourceResourceDescription",
    #       status_detail: "StatusDetail",
    #     },
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/AssociateSourceResource AWS API Documentation
    #
    # @overload associate_source_resource(params = {})
    # @param [Hash] params ({})
    def associate_source_resource(params = {}, options = {})
      req = build_request(:associate_source_resource, params)
      req.send_request(options)
    end

    # Creates a progress update stream which is an AWS resource used for
    # access control as well as a namespace for migration task names that is
    # implicitly linked to your AWS account. It must uniquely identify the
    # migration tool as it is used for all updates made by the tool;
    # however, it does not need to be unique for each AWS account because it
    # is scoped to the AWS account.
    #
    # @option params [required, String] :progress_update_stream_name
    #   The name of the ProgressUpdateStream. *Do not store personal data in
    #   this field.*
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_progress_update_stream({
    #     progress_update_stream_name: "ProgressUpdateStream", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/CreateProgressUpdateStream AWS API Documentation
    #
    # @overload create_progress_update_stream(params = {})
    # @param [Hash] params ({})
    def create_progress_update_stream(params = {}, options = {})
      req = build_request(:create_progress_update_stream, params)
      req.send_request(options)
    end

    # Deletes a progress update stream, including all of its tasks, which
    # was previously created as an AWS resource used for access control.
    # This API has the following traits:
    #
    # * The only parameter needed for `DeleteProgressUpdateStream` is the
    #   stream name (same as a `CreateProgressUpdateStream` call).
    #
    # * The call will return, and a background process will asynchronously
    #   delete the stream and all of its resources (tasks, associated
    #   resources, resource attributes, created artifacts).
    #
    # * If the stream takes time to be deleted, it might still show up on a
    #   `ListProgressUpdateStreams` call.
    #
    # * `CreateProgressUpdateStream`, `ImportMigrationTask`,
    #   `NotifyMigrationTaskState`, and all Associate\[*\] APIs related to
    #   the tasks belonging to the stream will throw
    #   "InvalidInputException" if the stream of the same name is in the
    #   process of being deleted.
    #
    # * Once the stream and all of its resources are deleted,
    #   `CreateProgressUpdateStream` for a stream of the same name will
    #   succeed, and that stream will be an entirely new logical resource
    #   (without any resources associated with the old stream).
    #
    # @option params [required, String] :progress_update_stream_name
    #   The name of the ProgressUpdateStream. *Do not store personal data in
    #   this field.*
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_progress_update_stream({
    #     progress_update_stream_name: "ProgressUpdateStream", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DeleteProgressUpdateStream AWS API Documentation
    #
    # @overload delete_progress_update_stream(params = {})
    # @param [Hash] params ({})
    def delete_progress_update_stream(params = {}, options = {})
      req = build_request(:delete_progress_update_stream, params)
      req.send_request(options)
    end

    # Gets the migration status of an application.
    #
    # @option params [required, String] :application_id
    #   The configurationId in Application Discovery Service that uniquely
    #   identifies the grouped application.
    #
    # @return [Types::DescribeApplicationStateResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeApplicationStateResult#application_status #application_status} => String
    #   * {Types::DescribeApplicationStateResult#last_updated_time #last_updated_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_state({
    #     application_id: "ApplicationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeApplicationState AWS API Documentation
    #
    # @overload describe_application_state(params = {})
    # @param [Hash] params ({})
    def describe_application_state(params = {}, options = {})
      req = build_request(:describe_application_state, params)
      req.send_request(options)
    end

    # Retrieves a list of all attributes associated with a specific
    # migration task.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   The identifier given to the MigrationTask. *Do not store personal data
    #   in this field.*
    #
    # @return [Types::DescribeMigrationTaskResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMigrationTaskResult#migration_task #migration_task} => Types::MigrationTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_migration_task({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.migration_task.progress_update_stream #=> String
    #   resp.migration_task.migration_task_name #=> String
    #   resp.migration_task.task.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.migration_task.task.status_detail #=> String
    #   resp.migration_task.task.progress_percent #=> Integer
    #   resp.migration_task.update_date_time #=> Time
    #   resp.migration_task.resource_attribute_list #=> Array
    #   resp.migration_task.resource_attribute_list[0].type #=> String, one of "IPV4_ADDRESS", "IPV6_ADDRESS", "MAC_ADDRESS", "FQDN", "VM_MANAGER_ID", "VM_MANAGED_OBJECT_REFERENCE", "VM_NAME", "VM_PATH", "BIOS_ID", "MOTHERBOARD_SERIAL_NUMBER"
    #   resp.migration_task.resource_attribute_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DescribeMigrationTask AWS API Documentation
    #
    # @overload describe_migration_task(params = {})
    # @param [Hash] params ({})
    def describe_migration_task(params = {}, options = {})
      req = build_request(:describe_migration_task, params)
      req.send_request(options)
    end

    # Disassociates a created artifact of an AWS resource with a migration
    # task performed by a migration tool that was previously associated.
    # This API has the following traits:
    #
    # * A migration user can call the `DisassociateCreatedArtifacts`
    #   operation to disassociate a created AWS Artifact from a migration
    #   task.
    #
    # * The created artifact name must be provided in ARN (Amazon Resource
    #   Name) format which will contain information about type and region;
    #   for example:
    #   `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.
    #
    # * Examples of the AWS resource behind the created artifact are,
    #   AMI's, EC2 instance, or RDS instance, etc.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task to be
    #   disassociated with the artifact. *Do not store personal data in this
    #   field.*
    #
    # @option params [required, String] :created_artifact_name
    #   An ARN of the AWS resource related to the migration (e.g., AMI, EC2
    #   instance, RDS instance, etc.)
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_created_artifact({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     created_artifact_name: "CreatedArtifactName", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateCreatedArtifact AWS API Documentation
    #
    # @overload disassociate_created_artifact(params = {})
    # @param [Hash] params ({})
    def disassociate_created_artifact(params = {}, options = {})
      req = build_request(:disassociate_created_artifact, params)
      req.send_request(options)
    end

    # Disassociate an Application Discovery Service discovered resource from
    # a migration task.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   The identifier given to the MigrationTask. *Do not store personal data
    #   in this field.*
    #
    # @option params [required, String] :configuration_id
    #   ConfigurationId of the Application Discovery Service resource to be
    #   disassociated.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_discovered_resource({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     configuration_id: "ConfigurationId", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateDiscoveredResource AWS API Documentation
    #
    # @overload disassociate_discovered_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_discovered_resource(params = {}, options = {})
      req = build_request(:disassociate_discovered_resource, params)
      req.send_request(options)
    end

    # Removes the association between a source resource and a migration
    # task.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the progress-update stream, which is used for access
    #   control as well as a namespace for migration-task names that is
    #   implicitly linked to your AWS account. The progress-update stream must
    #   uniquely identify the migration tool as it is used for all updates
    #   made by the tool; however, it does not need to be unique for each AWS
    #   account because it is scoped to the AWS account.
    #
    # @option params [required, String] :migration_task_name
    #   A unique identifier that references the migration task. *Do not
    #   include sensitive data in this field.*
    #
    # @option params [required, String] :source_resource_name
    #   The name that was specified for the source resource.
    #
    # @option params [Boolean] :dry_run
    #   This is an optional parameter that you can use to test whether the
    #   call will succeed. Set this parameter to `true` to verify that you
    #   have the permissions that are required to make the call, and that you
    #   have specified the other parameters in the call correctly.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_source_resource({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     source_resource_name: "SourceResourceName", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/DisassociateSourceResource AWS API Documentation
    #
    # @overload disassociate_source_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_source_resource(params = {}, options = {})
      req = build_request(:disassociate_source_resource, params)
      req.send_request(options)
    end

    # Registers a new migration task which represents a server, database,
    # etc., being migrated to AWS by a migration tool.
    #
    # This API is a prerequisite to calling the `NotifyMigrationTaskState`
    # API as the migration tool must first register the migration task with
    # Migration Hub.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream. &gt;
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_migration_task({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ImportMigrationTask AWS API Documentation
    #
    # @overload import_migration_task(params = {})
    # @param [Hash] params ({})
    def import_migration_task(params = {}, options = {})
      req = build_request(:import_migration_task, params)
      req.send_request(options)
    end

    # Lists all the migration statuses for your applications. If you use the
    # optional `ApplicationIds` parameter, only the migration statuses for
    # those applications will be returned.
    #
    # @option params [Array<String>] :application_ids
    #   The configurationIds from the Application Discovery Service that
    #   uniquely identifies your applications.
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to be returned per page.
    #
    # @return [Types::ListApplicationStatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationStatesResult#application_state_list #application_state_list} => Array&lt;Types::ApplicationState&gt;
    #   * {Types::ListApplicationStatesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_states({
    #     application_ids: ["ApplicationId"],
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.application_state_list #=> Array
    #   resp.application_state_list[0].application_id #=> String
    #   resp.application_state_list[0].application_status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "COMPLETED"
    #   resp.application_state_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListApplicationStates AWS API Documentation
    #
    # @overload list_application_states(params = {})
    # @param [Hash] params ({})
    def list_application_states(params = {}, options = {})
      req = build_request(:list_application_states, params)
      req.send_request(options)
    end

    # Lists the created artifacts attached to a given migration task in an
    # update stream. This API has the following traits:
    #
    # * Gets the list of the created artifacts while migration is taking
    #   place.
    #
    # * Shows the artifacts created by the migration tool that was
    #   associated by the `AssociateCreatedArtifact` API.
    #
    # * Lists created artifacts in a paginated interface.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to be returned per page.
    #
    # @return [Types::ListCreatedArtifactsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCreatedArtifactsResult#next_token #next_token} => String
    #   * {Types::ListCreatedArtifactsResult#created_artifact_list #created_artifact_list} => Array&lt;Types::CreatedArtifact&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_created_artifacts({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.created_artifact_list #=> Array
    #   resp.created_artifact_list[0].name #=> String
    #   resp.created_artifact_list[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListCreatedArtifacts AWS API Documentation
    #
    # @overload list_created_artifacts(params = {})
    # @param [Hash] params ({})
    def list_created_artifacts(params = {}, options = {})
      req = build_request(:list_created_artifacts, params)
      req.send_request(options)
    end

    # Lists discovered resources associated with the given `MigrationTask`.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   The name of the MigrationTask. *Do not store personal data in this
    #   field.*
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned per page.
    #
    # @return [Types::ListDiscoveredResourcesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDiscoveredResourcesResult#next_token #next_token} => String
    #   * {Types::ListDiscoveredResourcesResult#discovered_resource_list #discovered_resource_list} => Array&lt;Types::DiscoveredResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovered_resources({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.discovered_resource_list #=> Array
    #   resp.discovered_resource_list[0].configuration_id #=> String
    #   resp.discovered_resource_list[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListDiscoveredResources AWS API Documentation
    #
    # @overload list_discovered_resources(params = {})
    # @param [Hash] params ({})
    def list_discovered_resources(params = {}, options = {})
      req = build_request(:list_discovered_resources, params)
      req.send_request(options)
    end

    # This is a paginated API that returns all the migration-task states for
    # the specified `MigrationTaskName` and `ProgressUpdateStream`.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the progress-update stream, which is used for access
    #   control as well as a namespace for migration-task names that is
    #   implicitly linked to your AWS account. The progress-update stream must
    #   uniquely identify the migration tool as it is used for all updates
    #   made by the tool; however, it does not need to be unique for each AWS
    #   account because it is scoped to the AWS account.
    #
    # @option params [required, String] :migration_task_name
    #   A unique identifier that references the migration task. *Do not
    #   include sensitive data in this field.*
    #
    # @option params [String] :next_token
    #   If `NextToken` was returned by a previous call, there are more results
    #   available. The value of `NextToken` is a unique pagination token for
    #   each page. To retrieve the next page of results, specify the
    #   `NextToken` value that the previous call returned. Keep all other
    #   arguments unchanged. Each pagination token expires after 24 hours.
    #   Using an expired pagination token will return an HTTP 400 InvalidToken
    #   error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the value that you specify here for `MaxResults`,
    #   the response will include a token that you can use to retrieve the
    #   next set of results.
    #
    # @return [Types::ListMigrationTaskUpdatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMigrationTaskUpdatesResult#next_token #next_token} => String
    #   * {Types::ListMigrationTaskUpdatesResult#migration_task_update_list #migration_task_update_list} => Array&lt;Types::MigrationTaskUpdate&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_migration_task_updates({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.migration_task_update_list #=> Array
    #   resp.migration_task_update_list[0].update_date_time #=> Time
    #   resp.migration_task_update_list[0].update_type #=> String, one of "MIGRATION_TASK_STATE_UPDATED"
    #   resp.migration_task_update_list[0].migration_task_state.status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.migration_task_update_list[0].migration_task_state.status_detail #=> String
    #   resp.migration_task_update_list[0].migration_task_state.progress_percent #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListMigrationTaskUpdates AWS API Documentation
    #
    # @overload list_migration_task_updates(params = {})
    # @param [Hash] params ({})
    def list_migration_task_updates(params = {}, options = {})
      req = build_request(:list_migration_task_updates, params)
      req.send_request(options)
    end

    # Lists all, or filtered by resource name, migration tasks associated
    # with the user account making this call. This API has the following
    # traits:
    #
    # * Can show a summary list of the most recent migration tasks.
    #
    # * Can show a summary list of migration tasks associated with a given
    #   discovered resource.
    #
    # * Lists migration tasks in a paginated interface.
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   Value to specify how many results are returned per page.
    #
    # @option params [String] :resource_name
    #   Filter migration tasks by discovered resource name.
    #
    # @return [Types::ListMigrationTasksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMigrationTasksResult#next_token #next_token} => String
    #   * {Types::ListMigrationTasksResult#migration_task_summary_list #migration_task_summary_list} => Array&lt;Types::MigrationTaskSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_migration_tasks({
    #     next_token: "Token",
    #     max_results: 1,
    #     resource_name: "ResourceName",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.migration_task_summary_list #=> Array
    #   resp.migration_task_summary_list[0].progress_update_stream #=> String
    #   resp.migration_task_summary_list[0].migration_task_name #=> String
    #   resp.migration_task_summary_list[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.migration_task_summary_list[0].progress_percent #=> Integer
    #   resp.migration_task_summary_list[0].status_detail #=> String
    #   resp.migration_task_summary_list[0].update_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListMigrationTasks AWS API Documentation
    #
    # @overload list_migration_tasks(params = {})
    # @param [Hash] params ({})
    def list_migration_tasks(params = {}, options = {})
      req = build_request(:list_migration_tasks, params)
      req.send_request(options)
    end

    # Lists progress update streams associated with the user account making
    # this call.
    #
    # @option params [String] :next_token
    #   If a `NextToken` was returned by a previous call, there are more
    #   results available. To retrieve the next page of results, make the call
    #   again using the returned token in `NextToken`.
    #
    # @option params [Integer] :max_results
    #   Filter to limit the maximum number of results to list per page.
    #
    # @return [Types::ListProgressUpdateStreamsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProgressUpdateStreamsResult#progress_update_stream_summary_list #progress_update_stream_summary_list} => Array&lt;Types::ProgressUpdateStreamSummary&gt;
    #   * {Types::ListProgressUpdateStreamsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_progress_update_streams({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.progress_update_stream_summary_list #=> Array
    #   resp.progress_update_stream_summary_list[0].progress_update_stream_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListProgressUpdateStreams AWS API Documentation
    #
    # @overload list_progress_update_streams(params = {})
    # @param [Hash] params ({})
    def list_progress_update_streams(params = {}, options = {})
      req = build_request(:list_progress_update_streams, params)
      req.send_request(options)
    end

    # Lists all the source resource that are associated with the specified
    # `MigrationTaskName` and `ProgressUpdateStream`.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the progress-update stream, which is used for access
    #   control as well as a namespace for migration-task names that is
    #   implicitly linked to your AWS account. The progress-update stream must
    #   uniquely identify the migration tool as it is used for all updates
    #   made by the tool; however, it does not need to be unique for each AWS
    #   account because it is scoped to the AWS account.
    #
    # @option params [required, String] :migration_task_name
    #   A unique identifier that references the migration task. *Do not store
    #   confidential data in this field.*
    #
    # @option params [String] :next_token
    #   If `NextToken` was returned by a previous call, there are more results
    #   available. The value of `NextToken` is a unique pagination token for
    #   each page. To retrieve the next page of results, specify the
    #   `NextToken` value that the previous call returned. Keep all other
    #   arguments unchanged. Each pagination token expires after 24 hours.
    #   Using an expired pagination token will return an HTTP 400 InvalidToken
    #   error.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the value that you specify here for `MaxResults`,
    #   the response will include a token that you can use to retrieve the
    #   next set of results.
    #
    # @return [Types::ListSourceResourcesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSourceResourcesResult#next_token #next_token} => String
    #   * {Types::ListSourceResourcesResult#source_resource_list #source_resource_list} => Array&lt;Types::SourceResource&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_source_resources({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.source_resource_list #=> Array
    #   resp.source_resource_list[0].name #=> String
    #   resp.source_resource_list[0].description #=> String
    #   resp.source_resource_list[0].status_detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/ListSourceResources AWS API Documentation
    #
    # @overload list_source_resources(params = {})
    # @param [Hash] params ({})
    def list_source_resources(params = {}, options = {})
      req = build_request(:list_source_resources, params)
      req.send_request(options)
    end

    # Sets the migration state of an application. For a given application
    # identified by the value passed to `ApplicationId`, its status is set
    # or updated by passing one of three values to `Status`: `NOT_STARTED |
    # IN_PROGRESS | COMPLETED`.
    #
    # @option params [required, String] :application_id
    #   The configurationId in Application Discovery Service that uniquely
    #   identifies the grouped application.
    #
    # @option params [required, String] :status
    #   Status of the application - Not Started, In-Progress, Complete.
    #
    # @option params [Time,DateTime,Date,Integer,String] :update_date_time
    #   The timestamp when the application state changed.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_application_state({
    #     application_id: "ApplicationId", # required
    #     status: "NOT_STARTED", # required, accepts NOT_STARTED, IN_PROGRESS, COMPLETED
    #     update_date_time: Time.now,
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyApplicationState AWS API Documentation
    #
    # @overload notify_application_state(params = {})
    # @param [Hash] params ({})
    def notify_application_state(params = {}, options = {})
      req = build_request(:notify_application_state, params)
      req.send_request(options)
    end

    # Notifies Migration Hub of the current status, progress, or other
    # detail regarding a migration task. This API has the following traits:
    #
    # * Migration tools will call the `NotifyMigrationTaskState` API to
    #   share the latest progress and status.
    #
    # * `MigrationTaskName` is used for addressing updates to the correct
    #   target.
    #
    # * `ProgressUpdateStream` is used for access control and to provide a
    #   namespace for each migration tool.
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #
    # @option params [required, Types::Task] :task
    #   Information about the task's progress and status.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :update_date_time
    #   The timestamp when the task was gathered.
    #
    # @option params [required, Integer] :next_update_seconds
    #   Number of seconds after the UpdateDateTime within which the Migration
    #   Hub can expect an update. If Migration Hub does not receive an update
    #   within the specified interval, then the migration task will be
    #   considered stale.
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_migration_task_state({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     task: { # required
    #       status: "NOT_STARTED", # required, accepts NOT_STARTED, IN_PROGRESS, FAILED, COMPLETED
    #       status_detail: "StatusDetail",
    #       progress_percent: 1,
    #     },
    #     update_date_time: Time.now, # required
    #     next_update_seconds: 1, # required
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/NotifyMigrationTaskState AWS API Documentation
    #
    # @overload notify_migration_task_state(params = {})
    # @param [Hash] params ({})
    def notify_migration_task_state(params = {}, options = {})
      req = build_request(:notify_migration_task_state, params)
      req.send_request(options)
    end

    # Provides identifying details of the resource being migrated so that it
    # can be associated in the Application Discovery Service repository.
    # This association occurs asynchronously after `PutResourceAttributes`
    # returns.
    #
    # * Keep in mind that subsequent calls to PutResourceAttributes will
    #   override previously stored attributes. For example, if it is first
    #   called with a MAC address, but later, it is desired to *add* an IP
    #   address, it will then be required to call it with *both* the IP and
    #   MAC addresses to prevent overriding the MAC address.
    #
    # * Note the instructions regarding the special use case of the [
    #   `ResourceAttributeList` ][1] parameter when specifying any "VM"
    #   related value.
    #
    # <note markdown="1"> Because this is an asynchronous call, it will always return 200,
    # whether an association occurs or not. To confirm if an association was
    # found based on the provided details, call `ListDiscoveredResources`.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList
    #
    # @option params [required, String] :progress_update_stream
    #   The name of the ProgressUpdateStream.
    #
    # @option params [required, String] :migration_task_name
    #   Unique identifier that references the migration task. *Do not store
    #   personal data in this field.*
    #
    # @option params [required, Array<Types::ResourceAttribute>] :resource_attribute_list
    #   Information about the resource that is being migrated. This data will
    #   be used to map the task to a resource in the Application Discovery
    #   Service repository.
    #
    #   <note markdown="1"> Takes the object array of `ResourceAttribute` where the `Type` field
    #   is reserved for the following values: `IPV4_ADDRESS | IPV6_ADDRESS |
    #   MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE |
    #   VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER` where the
    #   identifying value can be a string up to 256 characters.
    #
    #    </note>
    #
    #   * If any "VM" related value is set for a `ResourceAttribute` object,
    #     it is required that `VM_MANAGER_ID`, as a minimum, is always set. If
    #     `VM_MANAGER_ID` is not set, then all "VM" fields will be discarded
    #     and "VM" fields will not be used for matching the migration task
    #     to a server in Application Discovery Service repository. See the
    #     [Example][1] section below for a use case of specifying "VM"
    #     related values.
    #
    #   * If a server you are trying to match has multiple IP or MAC
    #     addresses, you should provide as many as you know in separate
    #     type/value pairs passed to the `ResourceAttributeList` parameter to
    #     maximize the chances of matching.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples
    #
    # @option params [Boolean] :dry_run
    #   Optional boolean flag to indicate whether any effect should take
    #   place. Used to test if the caller has permission to make the call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_attributes({
    #     progress_update_stream: "ProgressUpdateStream", # required
    #     migration_task_name: "MigrationTaskName", # required
    #     resource_attribute_list: [ # required
    #       {
    #         type: "IPV4_ADDRESS", # required, accepts IPV4_ADDRESS, IPV6_ADDRESS, MAC_ADDRESS, FQDN, VM_MANAGER_ID, VM_MANAGED_OBJECT_REFERENCE, VM_NAME, VM_PATH, BIOS_ID, MOTHERBOARD_SERIAL_NUMBER
    #         value: "ResourceAttributeValue", # required
    #       },
    #     ],
    #     dry_run: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/AWSMigrationHub-2017-05-31/PutResourceAttributes AWS API Documentation
    #
    # @overload put_resource_attributes(params = {})
    # @param [Hash] params ({})
    def put_resource_attributes(params = {}, options = {})
      req = build_request(:put_resource_attributes, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MigrationHub')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-migrationhub'
      context[:gem_version] = '1.75.0'
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
