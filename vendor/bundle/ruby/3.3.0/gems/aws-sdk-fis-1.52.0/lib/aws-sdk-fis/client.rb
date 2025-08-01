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

module Aws::FIS
  # An API client for FIS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::FIS::Client.new(
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

    @identifier = :fis

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
    add_plugin(Aws::FIS::Plugins::Endpoints)

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
    #   @option options [Aws::FIS::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::FIS::EndpointParameters`.
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

    # Creates an experiment template.
    #
    # An experiment template includes the following components:
    #
    # * **Targets**: A target can be a specific resource in your Amazon Web
    #   Services environment, or one or more resources that match criteria
    #   that you specify, for example, resources that have specific tags.
    #
    # * **Actions**: The actions to carry out on the target. You can specify
    #   multiple actions, the duration of each action, and when to start
    #   each action during an experiment.
    #
    # * **Stop conditions**: If a stop condition is triggered while an
    #   experiment is running, the experiment is automatically stopped. You
    #   can define a stop condition as a CloudWatch alarm.
    #
    # For more information, see [experiment templates][1] in the *Fault
    # Injection Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/experiment-templates.html
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :description
    #   A description for the experiment template.
    #
    # @option params [required, Array<Types::CreateExperimentTemplateStopConditionInput>] :stop_conditions
    #   The stop conditions.
    #
    # @option params [Hash<String,Types::CreateExperimentTemplateTargetInput>] :targets
    #   The targets for the experiment.
    #
    # @option params [required, Hash<String,Types::CreateExperimentTemplateActionInput>] :actions
    #   The actions for the experiment.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants the FIS
    #   service permission to perform service actions on your behalf.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the experiment template.
    #
    # @option params [Types::CreateExperimentTemplateLogConfigurationInput] :log_configuration
    #   The configuration for experiment logging.
    #
    # @option params [Types::CreateExperimentTemplateExperimentOptionsInput] :experiment_options
    #   The experiment options for the experiment template.
    #
    # @option params [Types::CreateExperimentTemplateReportConfigurationInput] :experiment_report_configuration
    #   The experiment report configuration for the experiment template.
    #
    # @return [Types::CreateExperimentTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateExperimentTemplateResponse#experiment_template #experiment_template} => Types::ExperimentTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_experiment_template({
    #     client_token: "ClientToken", # required
    #     description: "ExperimentTemplateDescription", # required
    #     stop_conditions: [ # required
    #       {
    #         source: "StopConditionSource", # required
    #         value: "StopConditionValue",
    #       },
    #     ],
    #     targets: {
    #       "ExperimentTemplateTargetName" => {
    #         resource_type: "TargetResourceTypeId", # required
    #         resource_arns: ["ResourceArn"],
    #         resource_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         filters: [
    #           {
    #             path: "ExperimentTemplateTargetFilterPath", # required
    #             values: ["ExperimentTemplateTargetFilterValue"], # required
    #           },
    #         ],
    #         selection_mode: "ExperimentTemplateTargetSelectionMode", # required
    #         parameters: {
    #           "ExperimentTemplateTargetParameterName" => "ExperimentTemplateTargetParameterValue",
    #         },
    #       },
    #     },
    #     actions: { # required
    #       "ExperimentTemplateActionName" => {
    #         action_id: "ActionId", # required
    #         description: "ExperimentTemplateActionDescription",
    #         parameters: {
    #           "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter",
    #         },
    #         targets: {
    #           "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName",
    #         },
    #         start_after: ["ExperimentTemplateActionStartAfter"],
    #       },
    #     },
    #     role_arn: "RoleArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     log_configuration: {
    #       cloud_watch_logs_configuration: {
    #         log_group_arn: "CloudWatchLogGroupArn", # required
    #       },
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         prefix: "S3ObjectKey",
    #       },
    #       log_schema_version: 1, # required
    #     },
    #     experiment_options: {
    #       account_targeting: "single-account", # accepts single-account, multi-account
    #       empty_target_resolution_mode: "fail", # accepts fail, skip
    #     },
    #     experiment_report_configuration: {
    #       outputs: {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "ReportConfigurationS3OutputPrefix",
    #         },
    #       },
    #       data_sources: {
    #         cloud_watch_dashboards: [
    #           {
    #             dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier",
    #           },
    #         ],
    #       },
    #       pre_experiment_duration: "ReportConfigurationDuration",
    #       post_experiment_duration: "ReportConfigurationDuration",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment_template.id #=> String
    #   resp.experiment_template.arn #=> String
    #   resp.experiment_template.description #=> String
    #   resp.experiment_template.targets #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_type #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_arns #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_arns[0] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_tags #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_tags["TagKey"] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].path #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].values #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].values[0] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].selection_mode #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].parameters #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].parameters["ExperimentTemplateTargetParameterName"] #=> String
    #   resp.experiment_template.actions #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].action_id #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].description #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].parameters #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].parameters["ExperimentTemplateActionParameterName"] #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].targets #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].targets["ExperimentTemplateActionTargetName"] #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].start_after #=> Array
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].start_after[0] #=> String
    #   resp.experiment_template.stop_conditions #=> Array
    #   resp.experiment_template.stop_conditions[0].source #=> String
    #   resp.experiment_template.stop_conditions[0].value #=> String
    #   resp.experiment_template.creation_time #=> Time
    #   resp.experiment_template.last_update_time #=> Time
    #   resp.experiment_template.role_arn #=> String
    #   resp.experiment_template.tags #=> Hash
    #   resp.experiment_template.tags["TagKey"] #=> String
    #   resp.experiment_template.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.experiment_template.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.experiment_template.log_configuration.s3_configuration.prefix #=> String
    #   resp.experiment_template.log_configuration.log_schema_version #=> Integer
    #   resp.experiment_template.experiment_options.account_targeting #=> String, one of "single-account", "multi-account"
    #   resp.experiment_template.experiment_options.empty_target_resolution_mode #=> String, one of "fail", "skip"
    #   resp.experiment_template.target_account_configurations_count #=> Integer
    #   resp.experiment_template.experiment_report_configuration.outputs.s3_configuration.bucket_name #=> String
    #   resp.experiment_template.experiment_report_configuration.outputs.s3_configuration.prefix #=> String
    #   resp.experiment_template.experiment_report_configuration.data_sources.cloud_watch_dashboards #=> Array
    #   resp.experiment_template.experiment_report_configuration.data_sources.cloud_watch_dashboards[0].dashboard_identifier #=> String
    #   resp.experiment_template.experiment_report_configuration.pre_experiment_duration #=> String
    #   resp.experiment_template.experiment_report_configuration.post_experiment_duration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateExperimentTemplate AWS API Documentation
    #
    # @overload create_experiment_template(params = {})
    # @param [Hash] params ({})
    def create_experiment_template(params = {}, options = {})
      req = build_request(:create_experiment_template, params)
      req.send_request(options)
    end

    # Creates a target account configuration for the experiment template. A
    # target account configuration is required when `accountTargeting` of
    # `experimentOptions` is set to `multi-account`. For more information,
    # see [experiment options][1] in the *Fault Injection Service User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/fis/latest/userguide/experiment-options.html
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :experiment_template_id
    #   The experiment template ID.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the target account.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role for the target account.
    #
    # @option params [String] :description
    #   The description of the target account.
    #
    # @return [Types::CreateTargetAccountConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTargetAccountConfigurationResponse#target_account_configuration #target_account_configuration} => Types::TargetAccountConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_target_account_configuration({
    #     client_token: "ClientToken",
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     account_id: "TargetAccountId", # required
    #     role_arn: "RoleArn", # required
    #     description: "TargetAccountConfigurationDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.target_account_configuration.role_arn #=> String
    #   resp.target_account_configuration.account_id #=> String
    #   resp.target_account_configuration.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/CreateTargetAccountConfiguration AWS API Documentation
    #
    # @overload create_target_account_configuration(params = {})
    # @param [Hash] params ({})
    def create_target_account_configuration(params = {}, options = {})
      req = build_request(:create_target_account_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified experiment template.
    #
    # @option params [required, String] :id
    #   The ID of the experiment template.
    #
    # @return [Types::DeleteExperimentTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteExperimentTemplateResponse#experiment_template #experiment_template} => Types::ExperimentTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_experiment_template({
    #     id: "ExperimentTemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment_template.id #=> String
    #   resp.experiment_template.arn #=> String
    #   resp.experiment_template.description #=> String
    #   resp.experiment_template.targets #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_type #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_arns #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_arns[0] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_tags #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_tags["TagKey"] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].path #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].values #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].values[0] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].selection_mode #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].parameters #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].parameters["ExperimentTemplateTargetParameterName"] #=> String
    #   resp.experiment_template.actions #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].action_id #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].description #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].parameters #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].parameters["ExperimentTemplateActionParameterName"] #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].targets #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].targets["ExperimentTemplateActionTargetName"] #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].start_after #=> Array
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].start_after[0] #=> String
    #   resp.experiment_template.stop_conditions #=> Array
    #   resp.experiment_template.stop_conditions[0].source #=> String
    #   resp.experiment_template.stop_conditions[0].value #=> String
    #   resp.experiment_template.creation_time #=> Time
    #   resp.experiment_template.last_update_time #=> Time
    #   resp.experiment_template.role_arn #=> String
    #   resp.experiment_template.tags #=> Hash
    #   resp.experiment_template.tags["TagKey"] #=> String
    #   resp.experiment_template.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.experiment_template.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.experiment_template.log_configuration.s3_configuration.prefix #=> String
    #   resp.experiment_template.log_configuration.log_schema_version #=> Integer
    #   resp.experiment_template.experiment_options.account_targeting #=> String, one of "single-account", "multi-account"
    #   resp.experiment_template.experiment_options.empty_target_resolution_mode #=> String, one of "fail", "skip"
    #   resp.experiment_template.target_account_configurations_count #=> Integer
    #   resp.experiment_template.experiment_report_configuration.outputs.s3_configuration.bucket_name #=> String
    #   resp.experiment_template.experiment_report_configuration.outputs.s3_configuration.prefix #=> String
    #   resp.experiment_template.experiment_report_configuration.data_sources.cloud_watch_dashboards #=> Array
    #   resp.experiment_template.experiment_report_configuration.data_sources.cloud_watch_dashboards[0].dashboard_identifier #=> String
    #   resp.experiment_template.experiment_report_configuration.pre_experiment_duration #=> String
    #   resp.experiment_template.experiment_report_configuration.post_experiment_duration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/DeleteExperimentTemplate AWS API Documentation
    #
    # @overload delete_experiment_template(params = {})
    # @param [Hash] params ({})
    def delete_experiment_template(params = {}, options = {})
      req = build_request(:delete_experiment_template, params)
      req.send_request(options)
    end

    # Deletes the specified target account configuration of the experiment
    # template.
    #
    # @option params [required, String] :experiment_template_id
    #   The ID of the experiment template.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the target account.
    #
    # @return [Types::DeleteTargetAccountConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTargetAccountConfigurationResponse#target_account_configuration #target_account_configuration} => Types::TargetAccountConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_target_account_configuration({
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     account_id: "TargetAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_account_configuration.role_arn #=> String
    #   resp.target_account_configuration.account_id #=> String
    #   resp.target_account_configuration.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/DeleteTargetAccountConfiguration AWS API Documentation
    #
    # @overload delete_target_account_configuration(params = {})
    # @param [Hash] params ({})
    def delete_target_account_configuration(params = {}, options = {})
      req = build_request(:delete_target_account_configuration, params)
      req.send_request(options)
    end

    # Gets information about the specified FIS action.
    #
    # @option params [required, String] :id
    #   The ID of the action.
    #
    # @return [Types::GetActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetActionResponse#action #action} => Types::Action
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_action({
    #     id: "ActionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action.id #=> String
    #   resp.action.arn #=> String
    #   resp.action.description #=> String
    #   resp.action.parameters #=> Hash
    #   resp.action.parameters["ActionParameterName"].description #=> String
    #   resp.action.parameters["ActionParameterName"].required #=> Boolean
    #   resp.action.targets #=> Hash
    #   resp.action.targets["ActionTargetName"].resource_type #=> String
    #   resp.action.tags #=> Hash
    #   resp.action.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetAction AWS API Documentation
    #
    # @overload get_action(params = {})
    # @param [Hash] params ({})
    def get_action(params = {}, options = {})
      req = build_request(:get_action, params)
      req.send_request(options)
    end

    # Gets information about the specified experiment.
    #
    # @option params [required, String] :id
    #   The ID of the experiment.
    #
    # @return [Types::GetExperimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExperimentResponse#experiment #experiment} => Types::Experiment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment({
    #     id: "ExperimentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment.id #=> String
    #   resp.experiment.arn #=> String
    #   resp.experiment.experiment_template_id #=> String
    #   resp.experiment.role_arn #=> String
    #   resp.experiment.state.status #=> String, one of "pending", "initiating", "running", "completed", "stopping", "stopped", "failed", "cancelled"
    #   resp.experiment.state.reason #=> String
    #   resp.experiment.state.error.account_id #=> String
    #   resp.experiment.state.error.code #=> String
    #   resp.experiment.state.error.location #=> String
    #   resp.experiment.targets #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].resource_type #=> String
    #   resp.experiment.targets["ExperimentTargetName"].resource_arns #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].resource_arns[0] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].resource_tags #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].resource_tags["TagKey"] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].filters #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].path #=> String
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].values #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].values[0] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].selection_mode #=> String
    #   resp.experiment.targets["ExperimentTargetName"].parameters #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].parameters["ExperimentTargetParameterName"] #=> String
    #   resp.experiment.actions #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].action_id #=> String
    #   resp.experiment.actions["ExperimentActionName"].description #=> String
    #   resp.experiment.actions["ExperimentActionName"].parameters #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].parameters["ExperimentActionParameterName"] #=> String
    #   resp.experiment.actions["ExperimentActionName"].targets #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].targets["ExperimentActionTargetName"] #=> String
    #   resp.experiment.actions["ExperimentActionName"].start_after #=> Array
    #   resp.experiment.actions["ExperimentActionName"].start_after[0] #=> String
    #   resp.experiment.actions["ExperimentActionName"].state.status #=> String, one of "pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed", "skipped"
    #   resp.experiment.actions["ExperimentActionName"].state.reason #=> String
    #   resp.experiment.actions["ExperimentActionName"].start_time #=> Time
    #   resp.experiment.actions["ExperimentActionName"].end_time #=> Time
    #   resp.experiment.stop_conditions #=> Array
    #   resp.experiment.stop_conditions[0].source #=> String
    #   resp.experiment.stop_conditions[0].value #=> String
    #   resp.experiment.creation_time #=> Time
    #   resp.experiment.start_time #=> Time
    #   resp.experiment.end_time #=> Time
    #   resp.experiment.tags #=> Hash
    #   resp.experiment.tags["TagKey"] #=> String
    #   resp.experiment.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.experiment.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.experiment.log_configuration.s3_configuration.prefix #=> String
    #   resp.experiment.log_configuration.log_schema_version #=> Integer
    #   resp.experiment.experiment_options.account_targeting #=> String, one of "single-account", "multi-account"
    #   resp.experiment.experiment_options.empty_target_resolution_mode #=> String, one of "fail", "skip"
    #   resp.experiment.experiment_options.actions_mode #=> String, one of "skip-all", "run-all"
    #   resp.experiment.target_account_configurations_count #=> Integer
    #   resp.experiment.experiment_report_configuration.outputs.s3_configuration.bucket_name #=> String
    #   resp.experiment.experiment_report_configuration.outputs.s3_configuration.prefix #=> String
    #   resp.experiment.experiment_report_configuration.data_sources.cloud_watch_dashboards #=> Array
    #   resp.experiment.experiment_report_configuration.data_sources.cloud_watch_dashboards[0].dashboard_identifier #=> String
    #   resp.experiment.experiment_report_configuration.pre_experiment_duration #=> String
    #   resp.experiment.experiment_report_configuration.post_experiment_duration #=> String
    #   resp.experiment.experiment_report.state.status #=> String, one of "pending", "running", "completed", "cancelled", "failed"
    #   resp.experiment.experiment_report.state.reason #=> String
    #   resp.experiment.experiment_report.state.error.code #=> String
    #   resp.experiment.experiment_report.s3_reports #=> Array
    #   resp.experiment.experiment_report.s3_reports[0].arn #=> String
    #   resp.experiment.experiment_report.s3_reports[0].report_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperiment AWS API Documentation
    #
    # @overload get_experiment(params = {})
    # @param [Hash] params ({})
    def get_experiment(params = {}, options = {})
      req = build_request(:get_experiment, params)
      req.send_request(options)
    end

    # Gets information about the specified target account configuration of
    # the experiment.
    #
    # @option params [required, String] :experiment_id
    #   The ID of the experiment.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the target account.
    #
    # @return [Types::GetExperimentTargetAccountConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExperimentTargetAccountConfigurationResponse#target_account_configuration #target_account_configuration} => Types::ExperimentTargetAccountConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment_target_account_configuration({
    #     experiment_id: "ExperimentId", # required
    #     account_id: "TargetAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_account_configuration.role_arn #=> String
    #   resp.target_account_configuration.account_id #=> String
    #   resp.target_account_configuration.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentTargetAccountConfiguration AWS API Documentation
    #
    # @overload get_experiment_target_account_configuration(params = {})
    # @param [Hash] params ({})
    def get_experiment_target_account_configuration(params = {}, options = {})
      req = build_request(:get_experiment_target_account_configuration, params)
      req.send_request(options)
    end

    # Gets information about the specified experiment template.
    #
    # @option params [required, String] :id
    #   The ID of the experiment template.
    #
    # @return [Types::GetExperimentTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExperimentTemplateResponse#experiment_template #experiment_template} => Types::ExperimentTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_experiment_template({
    #     id: "ExperimentTemplateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment_template.id #=> String
    #   resp.experiment_template.arn #=> String
    #   resp.experiment_template.description #=> String
    #   resp.experiment_template.targets #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_type #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_arns #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_arns[0] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_tags #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_tags["TagKey"] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].path #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].values #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].values[0] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].selection_mode #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].parameters #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].parameters["ExperimentTemplateTargetParameterName"] #=> String
    #   resp.experiment_template.actions #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].action_id #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].description #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].parameters #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].parameters["ExperimentTemplateActionParameterName"] #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].targets #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].targets["ExperimentTemplateActionTargetName"] #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].start_after #=> Array
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].start_after[0] #=> String
    #   resp.experiment_template.stop_conditions #=> Array
    #   resp.experiment_template.stop_conditions[0].source #=> String
    #   resp.experiment_template.stop_conditions[0].value #=> String
    #   resp.experiment_template.creation_time #=> Time
    #   resp.experiment_template.last_update_time #=> Time
    #   resp.experiment_template.role_arn #=> String
    #   resp.experiment_template.tags #=> Hash
    #   resp.experiment_template.tags["TagKey"] #=> String
    #   resp.experiment_template.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.experiment_template.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.experiment_template.log_configuration.s3_configuration.prefix #=> String
    #   resp.experiment_template.log_configuration.log_schema_version #=> Integer
    #   resp.experiment_template.experiment_options.account_targeting #=> String, one of "single-account", "multi-account"
    #   resp.experiment_template.experiment_options.empty_target_resolution_mode #=> String, one of "fail", "skip"
    #   resp.experiment_template.target_account_configurations_count #=> Integer
    #   resp.experiment_template.experiment_report_configuration.outputs.s3_configuration.bucket_name #=> String
    #   resp.experiment_template.experiment_report_configuration.outputs.s3_configuration.prefix #=> String
    #   resp.experiment_template.experiment_report_configuration.data_sources.cloud_watch_dashboards #=> Array
    #   resp.experiment_template.experiment_report_configuration.data_sources.cloud_watch_dashboards[0].dashboard_identifier #=> String
    #   resp.experiment_template.experiment_report_configuration.pre_experiment_duration #=> String
    #   resp.experiment_template.experiment_report_configuration.post_experiment_duration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetExperimentTemplate AWS API Documentation
    #
    # @overload get_experiment_template(params = {})
    # @param [Hash] params ({})
    def get_experiment_template(params = {}, options = {})
      req = build_request(:get_experiment_template, params)
      req.send_request(options)
    end

    # Gets information about the specified safety lever.
    #
    # @option params [required, String] :id
    #   The ID of the safety lever.
    #
    # @return [Types::GetSafetyLeverResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSafetyLeverResponse#safety_lever #safety_lever} => Types::SafetyLever
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_safety_lever({
    #     id: "SafetyLeverId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.safety_lever.id #=> String
    #   resp.safety_lever.arn #=> String
    #   resp.safety_lever.state.status #=> String, one of "disengaged", "engaged", "engaging"
    #   resp.safety_lever.state.reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetSafetyLever AWS API Documentation
    #
    # @overload get_safety_lever(params = {})
    # @param [Hash] params ({})
    def get_safety_lever(params = {}, options = {})
      req = build_request(:get_safety_lever, params)
      req.send_request(options)
    end

    # Gets information about the specified target account configuration of
    # the experiment template.
    #
    # @option params [required, String] :experiment_template_id
    #   The ID of the experiment template.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the target account.
    #
    # @return [Types::GetTargetAccountConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTargetAccountConfigurationResponse#target_account_configuration #target_account_configuration} => Types::TargetAccountConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_target_account_configuration({
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     account_id: "TargetAccountId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_account_configuration.role_arn #=> String
    #   resp.target_account_configuration.account_id #=> String
    #   resp.target_account_configuration.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetTargetAccountConfiguration AWS API Documentation
    #
    # @overload get_target_account_configuration(params = {})
    # @param [Hash] params ({})
    def get_target_account_configuration(params = {}, options = {})
      req = build_request(:get_target_account_configuration, params)
      req.send_request(options)
    end

    # Gets information about the specified resource type.
    #
    # @option params [required, String] :resource_type
    #   The resource type.
    #
    # @return [Types::GetTargetResourceTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTargetResourceTypeResponse#target_resource_type #target_resource_type} => Types::TargetResourceType
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_target_resource_type({
    #     resource_type: "TargetResourceTypeId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.target_resource_type.resource_type #=> String
    #   resp.target_resource_type.description #=> String
    #   resp.target_resource_type.parameters #=> Hash
    #   resp.target_resource_type.parameters["TargetResourceTypeParameterName"].description #=> String
    #   resp.target_resource_type.parameters["TargetResourceTypeParameterName"].required #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/GetTargetResourceType AWS API Documentation
    #
    # @overload get_target_resource_type(params = {})
    # @param [Hash] params ({})
    def get_target_resource_type(params = {}, options = {})
      req = build_request(:get_target_resource_type, params)
      req.send_request(options)
    end

    # Lists the available FIS actions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActionsResponse#actions #actions} => Array&lt;Types::ActionSummary&gt;
    #   * {Types::ListActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_actions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.actions #=> Array
    #   resp.actions[0].id #=> String
    #   resp.actions[0].arn #=> String
    #   resp.actions[0].description #=> String
    #   resp.actions[0].targets #=> Hash
    #   resp.actions[0].targets["ActionTargetName"].resource_type #=> String
    #   resp.actions[0].tags #=> Hash
    #   resp.actions[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListActions AWS API Documentation
    #
    # @overload list_actions(params = {})
    # @param [Hash] params ({})
    def list_actions(params = {}, options = {})
      req = build_request(:list_actions, params)
      req.send_request(options)
    end

    # Lists the resolved targets information of the specified experiment.
    #
    # @option params [required, String] :experiment_id
    #   The ID of the experiment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [String] :target_name
    #   The name of the target.
    #
    # @return [Types::ListExperimentResolvedTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExperimentResolvedTargetsResponse#resolved_targets #resolved_targets} => Array&lt;Types::ResolvedTarget&gt;
    #   * {Types::ListExperimentResolvedTargetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiment_resolved_targets({
    #     experiment_id: "ExperimentId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     target_name: "TargetName",
    #   })
    #
    # @example Response structure
    #
    #   resp.resolved_targets #=> Array
    #   resp.resolved_targets[0].resource_type #=> String
    #   resp.resolved_targets[0].target_name #=> String
    #   resp.resolved_targets[0].target_information #=> Hash
    #   resp.resolved_targets[0].target_information["TargetInformationKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentResolvedTargets AWS API Documentation
    #
    # @overload list_experiment_resolved_targets(params = {})
    # @param [Hash] params ({})
    def list_experiment_resolved_targets(params = {}, options = {})
      req = build_request(:list_experiment_resolved_targets, params)
      req.send_request(options)
    end

    # Lists the target account configurations of the specified experiment.
    #
    # @option params [required, String] :experiment_id
    #   The ID of the experiment.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListExperimentTargetAccountConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExperimentTargetAccountConfigurationsResponse#target_account_configurations #target_account_configurations} => Array&lt;Types::ExperimentTargetAccountConfigurationSummary&gt;
    #   * {Types::ListExperimentTargetAccountConfigurationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiment_target_account_configurations({
    #     experiment_id: "ExperimentId", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.target_account_configurations #=> Array
    #   resp.target_account_configurations[0].role_arn #=> String
    #   resp.target_account_configurations[0].account_id #=> String
    #   resp.target_account_configurations[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentTargetAccountConfigurations AWS API Documentation
    #
    # @overload list_experiment_target_account_configurations(params = {})
    # @param [Hash] params ({})
    def list_experiment_target_account_configurations(params = {}, options = {})
      req = build_request(:list_experiment_target_account_configurations, params)
      req.send_request(options)
    end

    # Lists your experiment templates.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListExperimentTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExperimentTemplatesResponse#experiment_templates #experiment_templates} => Array&lt;Types::ExperimentTemplateSummary&gt;
    #   * {Types::ListExperimentTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiment_templates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment_templates #=> Array
    #   resp.experiment_templates[0].id #=> String
    #   resp.experiment_templates[0].arn #=> String
    #   resp.experiment_templates[0].description #=> String
    #   resp.experiment_templates[0].creation_time #=> Time
    #   resp.experiment_templates[0].last_update_time #=> Time
    #   resp.experiment_templates[0].tags #=> Hash
    #   resp.experiment_templates[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperimentTemplates AWS API Documentation
    #
    # @overload list_experiment_templates(params = {})
    # @param [Hash] params ({})
    def list_experiment_templates(params = {}, options = {})
      req = build_request(:list_experiment_templates, params)
      req.send_request(options)
    end

    # Lists your experiments.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @option params [String] :experiment_template_id
    #   The ID of the experiment template.
    #
    # @return [Types::ListExperimentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExperimentsResponse#experiments #experiments} => Array&lt;Types::ExperimentSummary&gt;
    #   * {Types::ListExperimentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_experiments({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     experiment_template_id: "ExperimentTemplateId",
    #   })
    #
    # @example Response structure
    #
    #   resp.experiments #=> Array
    #   resp.experiments[0].id #=> String
    #   resp.experiments[0].arn #=> String
    #   resp.experiments[0].experiment_template_id #=> String
    #   resp.experiments[0].state.status #=> String, one of "pending", "initiating", "running", "completed", "stopping", "stopped", "failed", "cancelled"
    #   resp.experiments[0].state.reason #=> String
    #   resp.experiments[0].state.error.account_id #=> String
    #   resp.experiments[0].state.error.code #=> String
    #   resp.experiments[0].state.error.location #=> String
    #   resp.experiments[0].creation_time #=> Time
    #   resp.experiments[0].tags #=> Hash
    #   resp.experiments[0].tags["TagKey"] #=> String
    #   resp.experiments[0].experiment_options.account_targeting #=> String, one of "single-account", "multi-account"
    #   resp.experiments[0].experiment_options.empty_target_resolution_mode #=> String, one of "fail", "skip"
    #   resp.experiments[0].experiment_options.actions_mode #=> String, one of "skip-all", "run-all"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListExperiments AWS API Documentation
    #
    # @overload list_experiments(params = {})
    # @param [Hash] params ({})
    def list_experiments(params = {}, options = {})
      req = build_request(:list_experiments, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the target account configurations of the specified experiment
    # template.
    #
    # @option params [required, String] :experiment_template_id
    #   The ID of the experiment template.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   nextToken value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListTargetAccountConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetAccountConfigurationsResponse#target_account_configurations #target_account_configurations} => Array&lt;Types::TargetAccountConfigurationSummary&gt;
    #   * {Types::ListTargetAccountConfigurationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_target_account_configurations({
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.target_account_configurations #=> Array
    #   resp.target_account_configurations[0].role_arn #=> String
    #   resp.target_account_configurations[0].account_id #=> String
    #   resp.target_account_configurations[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTargetAccountConfigurations AWS API Documentation
    #
    # @overload list_target_account_configurations(params = {})
    # @param [Hash] params ({})
    def list_target_account_configurations(params = {}, options = {})
      req = build_request(:list_target_account_configurations, params)
      req.send_request(options)
    end

    # Lists the target resource types.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #
    # @option params [String] :next_token
    #   The token for the next page of results.
    #
    # @return [Types::ListTargetResourceTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetResourceTypesResponse#target_resource_types #target_resource_types} => Array&lt;Types::TargetResourceTypeSummary&gt;
    #   * {Types::ListTargetResourceTypesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_target_resource_types({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.target_resource_types #=> Array
    #   resp.target_resource_types[0].resource_type #=> String
    #   resp.target_resource_types[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/ListTargetResourceTypes AWS API Documentation
    #
    # @overload list_target_resource_types(params = {})
    # @param [Hash] params ({})
    def list_target_resource_types(params = {}, options = {})
      req = build_request(:list_target_resource_types, params)
      req.send_request(options)
    end

    # Starts running an experiment from the specified experiment template.
    #
    # @option params [required, String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :experiment_template_id
    #   The ID of the experiment template.
    #
    # @option params [Types::StartExperimentExperimentOptionsInput] :experiment_options
    #   The experiment options for running the experiment.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to apply to the experiment.
    #
    # @return [Types::StartExperimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExperimentResponse#experiment #experiment} => Types::Experiment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_experiment({
    #     client_token: "ClientToken", # required
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     experiment_options: {
    #       actions_mode: "skip-all", # accepts skip-all, run-all
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment.id #=> String
    #   resp.experiment.arn #=> String
    #   resp.experiment.experiment_template_id #=> String
    #   resp.experiment.role_arn #=> String
    #   resp.experiment.state.status #=> String, one of "pending", "initiating", "running", "completed", "stopping", "stopped", "failed", "cancelled"
    #   resp.experiment.state.reason #=> String
    #   resp.experiment.state.error.account_id #=> String
    #   resp.experiment.state.error.code #=> String
    #   resp.experiment.state.error.location #=> String
    #   resp.experiment.targets #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].resource_type #=> String
    #   resp.experiment.targets["ExperimentTargetName"].resource_arns #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].resource_arns[0] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].resource_tags #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].resource_tags["TagKey"] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].filters #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].path #=> String
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].values #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].values[0] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].selection_mode #=> String
    #   resp.experiment.targets["ExperimentTargetName"].parameters #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].parameters["ExperimentTargetParameterName"] #=> String
    #   resp.experiment.actions #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].action_id #=> String
    #   resp.experiment.actions["ExperimentActionName"].description #=> String
    #   resp.experiment.actions["ExperimentActionName"].parameters #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].parameters["ExperimentActionParameterName"] #=> String
    #   resp.experiment.actions["ExperimentActionName"].targets #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].targets["ExperimentActionTargetName"] #=> String
    #   resp.experiment.actions["ExperimentActionName"].start_after #=> Array
    #   resp.experiment.actions["ExperimentActionName"].start_after[0] #=> String
    #   resp.experiment.actions["ExperimentActionName"].state.status #=> String, one of "pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed", "skipped"
    #   resp.experiment.actions["ExperimentActionName"].state.reason #=> String
    #   resp.experiment.actions["ExperimentActionName"].start_time #=> Time
    #   resp.experiment.actions["ExperimentActionName"].end_time #=> Time
    #   resp.experiment.stop_conditions #=> Array
    #   resp.experiment.stop_conditions[0].source #=> String
    #   resp.experiment.stop_conditions[0].value #=> String
    #   resp.experiment.creation_time #=> Time
    #   resp.experiment.start_time #=> Time
    #   resp.experiment.end_time #=> Time
    #   resp.experiment.tags #=> Hash
    #   resp.experiment.tags["TagKey"] #=> String
    #   resp.experiment.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.experiment.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.experiment.log_configuration.s3_configuration.prefix #=> String
    #   resp.experiment.log_configuration.log_schema_version #=> Integer
    #   resp.experiment.experiment_options.account_targeting #=> String, one of "single-account", "multi-account"
    #   resp.experiment.experiment_options.empty_target_resolution_mode #=> String, one of "fail", "skip"
    #   resp.experiment.experiment_options.actions_mode #=> String, one of "skip-all", "run-all"
    #   resp.experiment.target_account_configurations_count #=> Integer
    #   resp.experiment.experiment_report_configuration.outputs.s3_configuration.bucket_name #=> String
    #   resp.experiment.experiment_report_configuration.outputs.s3_configuration.prefix #=> String
    #   resp.experiment.experiment_report_configuration.data_sources.cloud_watch_dashboards #=> Array
    #   resp.experiment.experiment_report_configuration.data_sources.cloud_watch_dashboards[0].dashboard_identifier #=> String
    #   resp.experiment.experiment_report_configuration.pre_experiment_duration #=> String
    #   resp.experiment.experiment_report_configuration.post_experiment_duration #=> String
    #   resp.experiment.experiment_report.state.status #=> String, one of "pending", "running", "completed", "cancelled", "failed"
    #   resp.experiment.experiment_report.state.reason #=> String
    #   resp.experiment.experiment_report.state.error.code #=> String
    #   resp.experiment.experiment_report.s3_reports #=> Array
    #   resp.experiment.experiment_report.s3_reports[0].arn #=> String
    #   resp.experiment.experiment_report.s3_reports[0].report_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StartExperiment AWS API Documentation
    #
    # @overload start_experiment(params = {})
    # @param [Hash] params ({})
    def start_experiment(params = {}, options = {})
      req = build_request(:start_experiment, params)
      req.send_request(options)
    end

    # Stops the specified experiment.
    #
    # @option params [required, String] :id
    #   The ID of the experiment.
    #
    # @return [Types::StopExperimentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopExperimentResponse#experiment #experiment} => Types::Experiment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_experiment({
    #     id: "ExperimentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment.id #=> String
    #   resp.experiment.arn #=> String
    #   resp.experiment.experiment_template_id #=> String
    #   resp.experiment.role_arn #=> String
    #   resp.experiment.state.status #=> String, one of "pending", "initiating", "running", "completed", "stopping", "stopped", "failed", "cancelled"
    #   resp.experiment.state.reason #=> String
    #   resp.experiment.state.error.account_id #=> String
    #   resp.experiment.state.error.code #=> String
    #   resp.experiment.state.error.location #=> String
    #   resp.experiment.targets #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].resource_type #=> String
    #   resp.experiment.targets["ExperimentTargetName"].resource_arns #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].resource_arns[0] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].resource_tags #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].resource_tags["TagKey"] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].filters #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].path #=> String
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].values #=> Array
    #   resp.experiment.targets["ExperimentTargetName"].filters[0].values[0] #=> String
    #   resp.experiment.targets["ExperimentTargetName"].selection_mode #=> String
    #   resp.experiment.targets["ExperimentTargetName"].parameters #=> Hash
    #   resp.experiment.targets["ExperimentTargetName"].parameters["ExperimentTargetParameterName"] #=> String
    #   resp.experiment.actions #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].action_id #=> String
    #   resp.experiment.actions["ExperimentActionName"].description #=> String
    #   resp.experiment.actions["ExperimentActionName"].parameters #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].parameters["ExperimentActionParameterName"] #=> String
    #   resp.experiment.actions["ExperimentActionName"].targets #=> Hash
    #   resp.experiment.actions["ExperimentActionName"].targets["ExperimentActionTargetName"] #=> String
    #   resp.experiment.actions["ExperimentActionName"].start_after #=> Array
    #   resp.experiment.actions["ExperimentActionName"].start_after[0] #=> String
    #   resp.experiment.actions["ExperimentActionName"].state.status #=> String, one of "pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed", "skipped"
    #   resp.experiment.actions["ExperimentActionName"].state.reason #=> String
    #   resp.experiment.actions["ExperimentActionName"].start_time #=> Time
    #   resp.experiment.actions["ExperimentActionName"].end_time #=> Time
    #   resp.experiment.stop_conditions #=> Array
    #   resp.experiment.stop_conditions[0].source #=> String
    #   resp.experiment.stop_conditions[0].value #=> String
    #   resp.experiment.creation_time #=> Time
    #   resp.experiment.start_time #=> Time
    #   resp.experiment.end_time #=> Time
    #   resp.experiment.tags #=> Hash
    #   resp.experiment.tags["TagKey"] #=> String
    #   resp.experiment.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.experiment.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.experiment.log_configuration.s3_configuration.prefix #=> String
    #   resp.experiment.log_configuration.log_schema_version #=> Integer
    #   resp.experiment.experiment_options.account_targeting #=> String, one of "single-account", "multi-account"
    #   resp.experiment.experiment_options.empty_target_resolution_mode #=> String, one of "fail", "skip"
    #   resp.experiment.experiment_options.actions_mode #=> String, one of "skip-all", "run-all"
    #   resp.experiment.target_account_configurations_count #=> Integer
    #   resp.experiment.experiment_report_configuration.outputs.s3_configuration.bucket_name #=> String
    #   resp.experiment.experiment_report_configuration.outputs.s3_configuration.prefix #=> String
    #   resp.experiment.experiment_report_configuration.data_sources.cloud_watch_dashboards #=> Array
    #   resp.experiment.experiment_report_configuration.data_sources.cloud_watch_dashboards[0].dashboard_identifier #=> String
    #   resp.experiment.experiment_report_configuration.pre_experiment_duration #=> String
    #   resp.experiment.experiment_report_configuration.post_experiment_duration #=> String
    #   resp.experiment.experiment_report.state.status #=> String, one of "pending", "running", "completed", "cancelled", "failed"
    #   resp.experiment.experiment_report.state.reason #=> String
    #   resp.experiment.experiment_report.state.error.code #=> String
    #   resp.experiment.experiment_report.s3_reports #=> Array
    #   resp.experiment.experiment_report.s3_reports[0].arn #=> String
    #   resp.experiment.experiment_report.s3_reports[0].report_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/StopExperiment AWS API Documentation
    #
    # @overload stop_experiment(params = {})
    # @param [Hash] params ({})
    def stop_experiment(params = {}, options = {})
      req = build_request(:stop_experiment, params)
      req.send_request(options)
    end

    # Applies the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [Array<String>] :tag_keys
    #   The tag keys to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified experiment template.
    #
    # @option params [required, String] :id
    #   The ID of the experiment template.
    #
    # @option params [String] :description
    #   A description for the template.
    #
    # @option params [Array<Types::UpdateExperimentTemplateStopConditionInput>] :stop_conditions
    #   The stop conditions for the experiment.
    #
    # @option params [Hash<String,Types::UpdateExperimentTemplateTargetInput>] :targets
    #   The targets for the experiment.
    #
    # @option params [Hash<String,Types::UpdateExperimentTemplateActionInputItem>] :actions
    #   The actions for the experiment.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that grants the FIS
    #   service permission to perform service actions on your behalf.
    #
    # @option params [Types::UpdateExperimentTemplateLogConfigurationInput] :log_configuration
    #   The configuration for experiment logging.
    #
    # @option params [Types::UpdateExperimentTemplateExperimentOptionsInput] :experiment_options
    #   The experiment options for the experiment template.
    #
    # @option params [Types::UpdateExperimentTemplateReportConfigurationInput] :experiment_report_configuration
    #   The experiment report configuration for the experiment template.
    #
    # @return [Types::UpdateExperimentTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateExperimentTemplateResponse#experiment_template #experiment_template} => Types::ExperimentTemplate
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_experiment_template({
    #     id: "ExperimentTemplateId", # required
    #     description: "ExperimentTemplateDescription",
    #     stop_conditions: [
    #       {
    #         source: "StopConditionSource", # required
    #         value: "StopConditionValue",
    #       },
    #     ],
    #     targets: {
    #       "ExperimentTemplateTargetName" => {
    #         resource_type: "TargetResourceTypeId", # required
    #         resource_arns: ["ResourceArn"],
    #         resource_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         filters: [
    #           {
    #             path: "ExperimentTemplateTargetFilterPath", # required
    #             values: ["ExperimentTemplateTargetFilterValue"], # required
    #           },
    #         ],
    #         selection_mode: "ExperimentTemplateTargetSelectionMode", # required
    #         parameters: {
    #           "ExperimentTemplateTargetParameterName" => "ExperimentTemplateTargetParameterValue",
    #         },
    #       },
    #     },
    #     actions: {
    #       "ExperimentTemplateActionName" => {
    #         action_id: "ActionId",
    #         description: "ExperimentTemplateActionDescription",
    #         parameters: {
    #           "ExperimentTemplateActionParameterName" => "ExperimentTemplateActionParameter",
    #         },
    #         targets: {
    #           "ExperimentTemplateActionTargetName" => "ExperimentTemplateTargetName",
    #         },
    #         start_after: ["ExperimentTemplateActionStartAfter"],
    #       },
    #     },
    #     role_arn: "RoleArn",
    #     log_configuration: {
    #       cloud_watch_logs_configuration: {
    #         log_group_arn: "CloudWatchLogGroupArn", # required
    #       },
    #       s3_configuration: {
    #         bucket_name: "S3BucketName", # required
    #         prefix: "S3ObjectKey",
    #       },
    #       log_schema_version: 1,
    #     },
    #     experiment_options: {
    #       empty_target_resolution_mode: "fail", # accepts fail, skip
    #     },
    #     experiment_report_configuration: {
    #       outputs: {
    #         s3_configuration: {
    #           bucket_name: "S3BucketName",
    #           prefix: "ReportConfigurationS3OutputPrefix",
    #         },
    #       },
    #       data_sources: {
    #         cloud_watch_dashboards: [
    #           {
    #             dashboard_identifier: "ReportConfigurationCloudWatchDashboardIdentifier",
    #           },
    #         ],
    #       },
    #       pre_experiment_duration: "ReportConfigurationDuration",
    #       post_experiment_duration: "ReportConfigurationDuration",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.experiment_template.id #=> String
    #   resp.experiment_template.arn #=> String
    #   resp.experiment_template.description #=> String
    #   resp.experiment_template.targets #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_type #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_arns #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_arns[0] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_tags #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].resource_tags["TagKey"] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].path #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].values #=> Array
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].filters[0].values[0] #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].selection_mode #=> String
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].parameters #=> Hash
    #   resp.experiment_template.targets["ExperimentTemplateTargetName"].parameters["ExperimentTemplateTargetParameterName"] #=> String
    #   resp.experiment_template.actions #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].action_id #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].description #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].parameters #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].parameters["ExperimentTemplateActionParameterName"] #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].targets #=> Hash
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].targets["ExperimentTemplateActionTargetName"] #=> String
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].start_after #=> Array
    #   resp.experiment_template.actions["ExperimentTemplateActionName"].start_after[0] #=> String
    #   resp.experiment_template.stop_conditions #=> Array
    #   resp.experiment_template.stop_conditions[0].source #=> String
    #   resp.experiment_template.stop_conditions[0].value #=> String
    #   resp.experiment_template.creation_time #=> Time
    #   resp.experiment_template.last_update_time #=> Time
    #   resp.experiment_template.role_arn #=> String
    #   resp.experiment_template.tags #=> Hash
    #   resp.experiment_template.tags["TagKey"] #=> String
    #   resp.experiment_template.log_configuration.cloud_watch_logs_configuration.log_group_arn #=> String
    #   resp.experiment_template.log_configuration.s3_configuration.bucket_name #=> String
    #   resp.experiment_template.log_configuration.s3_configuration.prefix #=> String
    #   resp.experiment_template.log_configuration.log_schema_version #=> Integer
    #   resp.experiment_template.experiment_options.account_targeting #=> String, one of "single-account", "multi-account"
    #   resp.experiment_template.experiment_options.empty_target_resolution_mode #=> String, one of "fail", "skip"
    #   resp.experiment_template.target_account_configurations_count #=> Integer
    #   resp.experiment_template.experiment_report_configuration.outputs.s3_configuration.bucket_name #=> String
    #   resp.experiment_template.experiment_report_configuration.outputs.s3_configuration.prefix #=> String
    #   resp.experiment_template.experiment_report_configuration.data_sources.cloud_watch_dashboards #=> Array
    #   resp.experiment_template.experiment_report_configuration.data_sources.cloud_watch_dashboards[0].dashboard_identifier #=> String
    #   resp.experiment_template.experiment_report_configuration.pre_experiment_duration #=> String
    #   resp.experiment_template.experiment_report_configuration.post_experiment_duration #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateExperimentTemplate AWS API Documentation
    #
    # @overload update_experiment_template(params = {})
    # @param [Hash] params ({})
    def update_experiment_template(params = {}, options = {})
      req = build_request(:update_experiment_template, params)
      req.send_request(options)
    end

    # Updates the specified safety lever state.
    #
    # @option params [required, String] :id
    #   The ID of the safety lever.
    #
    # @option params [required, Types::UpdateSafetyLeverStateInput] :state
    #   The state of the safety lever.
    #
    # @return [Types::UpdateSafetyLeverStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSafetyLeverStateResponse#safety_lever #safety_lever} => Types::SafetyLever
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_safety_lever_state({
    #     id: "SafetyLeverId", # required
    #     state: { # required
    #       status: "disengaged", # required, accepts disengaged, engaged
    #       reason: "SafetyLeverStatusReason", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.safety_lever.id #=> String
    #   resp.safety_lever.arn #=> String
    #   resp.safety_lever.state.status #=> String, one of "disengaged", "engaged", "engaging"
    #   resp.safety_lever.state.reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateSafetyLeverState AWS API Documentation
    #
    # @overload update_safety_lever_state(params = {})
    # @param [Hash] params ({})
    def update_safety_lever_state(params = {}, options = {})
      req = build_request(:update_safety_lever_state, params)
      req.send_request(options)
    end

    # Updates the target account configuration for the specified experiment
    # template.
    #
    # @option params [required, String] :experiment_template_id
    #   The ID of the experiment template.
    #
    # @option params [required, String] :account_id
    #   The Amazon Web Services account ID of the target account.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM role for the target account.
    #
    # @option params [String] :description
    #   The description of the target account.
    #
    # @return [Types::UpdateTargetAccountConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTargetAccountConfigurationResponse#target_account_configuration #target_account_configuration} => Types::TargetAccountConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_target_account_configuration({
    #     experiment_template_id: "ExperimentTemplateId", # required
    #     account_id: "TargetAccountId", # required
    #     role_arn: "RoleArn",
    #     description: "TargetAccountConfigurationDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.target_account_configuration.role_arn #=> String
    #   resp.target_account_configuration.account_id #=> String
    #   resp.target_account_configuration.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fis-2020-12-01/UpdateTargetAccountConfiguration AWS API Documentation
    #
    # @overload update_target_account_configuration(params = {})
    # @param [Hash] params ({})
    def update_target_account_configuration(params = {}, options = {})
      req = build_request(:update_target_account_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::FIS')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-fis'
      context[:gem_version] = '1.52.0'
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
