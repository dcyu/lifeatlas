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

module Aws::ECS
  # An API client for ECS.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ECS::Client.new(
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

    @identifier = :ecs

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
    add_plugin(Aws::ECS::Plugins::Endpoints)

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
    #   @option options [Aws::ECS::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ECS::EndpointParameters`.
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

    # Creates a new capacity provider. Capacity providers are associated
    # with an Amazon ECS cluster and are used in capacity provider
    # strategies to facilitate cluster auto scaling.
    #
    # Only capacity providers that use an Auto Scaling group can be created.
    # Amazon ECS tasks on Fargate use the `FARGATE` and `FARGATE_SPOT`
    # capacity providers. These providers are available to all accounts in
    # the Amazon Web Services Regions that Fargate supports.
    #
    # @option params [required, String] :name
    #   The name of the capacity provider. Up to 255 characters are allowed.
    #   They include letters (both upper and lowercase letters), numbers,
    #   underscores (\_), and hyphens (-). The name can't be prefixed with
    #   "`aws`", "`ecs`", or "`fargate`".
    #
    # @option params [required, Types::AutoScalingGroupProvider] :auto_scaling_group_provider
    #   The details of the Auto Scaling group for the capacity provider.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the capacity provider to categorize and
    #   organize them more conveniently. Each tag consists of a key and an
    #   optional value. You define both of them.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @return [Types::CreateCapacityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCapacityProviderResponse#capacity_provider #capacity_provider} => Types::CapacityProvider
    #
    #
    # @example Example: To create a capacity provider 
    #
    #   # This example creates a capacity provider that uses the specified Auto Scaling group MyASG and has managed scaling and
    #   # manager termination protection enabled. 
    #
    #   resp = client.create_capacity_provider({
    #     name: "MyCapacityProvider", 
    #     auto_scaling_group_provider: {
    #       auto_scaling_group_arn: "arn:aws:autoscaling:us-east-1:123456789012:autoScalingGroup:57ffcb94-11f0-4d6d-bf60-3bac5EXAMPLE:autoScalingGroupName/MyASG", 
    #       managed_scaling: {
    #         status: "ENABLED", 
    #         target_capacity: 100, 
    #       }, 
    #       managed_termination_protection: "ENABLED", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     capacity_provider: {
    #       name: "MyCapacityProvider", 
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-east-1:132456789012:autoScalingGroup:57ffcb94-11f0-4d6d-bf60-3bac5EXAMPLE:autoScalingGroupName/MyASG", 
    #         managed_scaling: {
    #           instance_warmup_period: 300, 
    #           maximum_scaling_step_size: 10000, 
    #           minimum_scaling_step_size: 1, 
    #           status: "ENABLED", 
    #           target_capacity: 100, 
    #         }, 
    #         managed_termination_protection: "ENABLED", 
    #       }, 
    #       capacity_provider_arn: "arn:aws:ecs:us-east-1:123456789012:capacity-provider/MyCapacityProvider", 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_capacity_provider({
    #     name: "String", # required
    #     auto_scaling_group_provider: { # required
    #       auto_scaling_group_arn: "String", # required
    #       managed_scaling: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         target_capacity: 1,
    #         minimum_scaling_step_size: 1,
    #         maximum_scaling_step_size: 1,
    #         instance_warmup_period: 1,
    #       },
    #       managed_termination_protection: "ENABLED", # accepts ENABLED, DISABLED
    #       managed_draining: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_provider.capacity_provider_arn #=> String
    #   resp.capacity_provider.name #=> String
    #   resp.capacity_provider.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.capacity_provider.auto_scaling_group_provider.auto_scaling_group_arn #=> String
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.target_capacity #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.minimum_scaling_step_size #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.maximum_scaling_step_size #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.instance_warmup_period #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_termination_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.auto_scaling_group_provider.managed_draining #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.update_status #=> String, one of "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.capacity_provider.update_status_reason #=> String
    #   resp.capacity_provider.tags #=> Array
    #   resp.capacity_provider.tags[0].key #=> String
    #   resp.capacity_provider.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateCapacityProvider AWS API Documentation
    #
    # @overload create_capacity_provider(params = {})
    # @param [Hash] params ({})
    def create_capacity_provider(params = {}, options = {})
      req = build_request(:create_capacity_provider, params)
      req.send_request(options)
    end

    # Creates a new Amazon ECS cluster. By default, your account receives a
    # `default` cluster when you launch your first container instance.
    # However, you can create your own cluster with a unique name.
    #
    # <note markdown="1"> When you call the [CreateCluster][1] API operation, Amazon ECS
    # attempts to create the Amazon ECS service-linked role for your
    # account. This is so that it can manage required resources in other
    # Amazon Web Services services on your behalf. However, if the user that
    # makes the call doesn't have permissions to create the service-linked
    # role, it isn't created. For more information, see [Using
    # service-linked roles for Amazon ECS][2] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCluster.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #
    # @option params [String] :cluster_name
    #   The name of your cluster. If you don't specify a name for your
    #   cluster, you create a cluster that's named `default`. Up to 255
    #   letters (uppercase and lowercase), numbers, underscores, and hyphens
    #   are allowed.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the cluster to help you categorize and
    #   organize them. Each tag consists of a key and an optional value. You
    #   define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @option params [Array<Types::ClusterSetting>] :settings
    #   The setting to use when creating a cluster. This parameter is used to
    #   turn on CloudWatch Container Insights for a cluster. If this value is
    #   specified, it overrides the `containerInsights` value set with
    #   [PutAccountSetting][1] or [PutAccountSettingDefault][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html
    #
    # @option params [Types::ClusterConfiguration] :configuration
    #   The `execute` command configuration for the cluster.
    #
    # @option params [Array<String>] :capacity_providers
    #   The short name of one or more capacity providers to associate with the
    #   cluster. A capacity provider must be associated with a cluster before
    #   it can be included as part of the default capacity provider strategy
    #   of the cluster or used in a capacity provider strategy when calling
    #   the [CreateService][1] or [RunTask][2] actions.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group, the
    #   capacity provider must be created but not associated with another
    #   cluster. New Auto Scaling group capacity providers can be created with
    #   the [CreateCapacityProvider][3] API operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers are
    #   available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #   The [PutCapacityProvider][4] API operation is used to update the list
    #   of available capacity providers for a cluster after the cluster is
    #   created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html
    #   [4]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutCapacityProvider.html
    #
    # @option params [Array<Types::CapacityProviderStrategyItem>] :default_capacity_provider_strategy
    #   The capacity provider strategy to set as the default for the cluster.
    #   After a default capacity provider strategy is set for a cluster, when
    #   you call the [CreateService][1] or [RunTask][2] APIs with no capacity
    #   provider strategy or launch type specified, the default capacity
    #   provider strategy for the cluster is used.
    #
    #   If a default capacity provider strategy isn't defined for a cluster
    #   when it was created, it can be defined later with the
    #   [PutClusterCapacityProviders][3] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    #
    # @option params [Types::ClusterServiceConnectDefaultsRequest] :service_connect_defaults
    #   Use this parameter to set a default Service Connect namespace. After
    #   you set a default Service Connect namespace, any new services with
    #   Service Connect turned on that are created in the cluster are added as
    #   client services in the namespace. This setting only applies to new
    #   services that set the `enabled` parameter to `true` in the
    #   `ServiceConnectConfiguration`. You can set the namespace of each
    #   service individually in the `ServiceConnectConfiguration` to override
    #   this default parameter.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all of
    #   the clusters in the namespace. Tasks connect through a managed proxy
    #   container that collects logs and metrics for increased visibility.
    #   Only the tasks that Amazon ECS services create are supported with
    #   Service Connect. For more information, see [Service Connect][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To create a new cluster
    #
    #   # This example creates a cluster in your default region.
    #
    #   resp = client.create_cluster({
    #     cluster_name: "my_cluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster", 
    #       cluster_name: "my_cluster", 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       status: "ACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     cluster_name: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     settings: [
    #       {
    #         name: "containerInsights", # accepts containerInsights
    #         value: "String",
    #       },
    #     ],
    #     configuration: {
    #       execute_command_configuration: {
    #         kms_key_id: "String",
    #         logging: "NONE", # accepts NONE, DEFAULT, OVERRIDE
    #         log_configuration: {
    #           cloud_watch_log_group_name: "String",
    #           cloud_watch_encryption_enabled: false,
    #           s3_bucket_name: "String",
    #           s3_encryption_enabled: false,
    #           s3_key_prefix: "String",
    #         },
    #       },
    #       managed_storage_configuration: {
    #         kms_key_id: "String",
    #         fargate_ephemeral_storage_kms_key_id: "String",
    #       },
    #     },
    #     capacity_providers: ["String"],
    #     default_capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1,
    #       },
    #     ],
    #     service_connect_defaults: {
    #       namespace: "String", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.execute_command_configuration.logging #=> String, one of "NONE", "DEFAULT", "OVERRIDE"
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.cluster.configuration.managed_storage_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.managed_storage_configuration.fargate_ephemeral_storage_kms_key_id #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.registered_container_instances_count #=> Integer
    #   resp.cluster.running_tasks_count #=> Integer
    #   resp.cluster.pending_tasks_count #=> Integer
    #   resp.cluster.active_services_count #=> Integer
    #   resp.cluster.statistics #=> Array
    #   resp.cluster.statistics[0].name #=> String
    #   resp.cluster.statistics[0].value #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.settings #=> Array
    #   resp.cluster.settings[0].name #=> String, one of "containerInsights"
    #   resp.cluster.settings[0].value #=> String
    #   resp.cluster.capacity_providers #=> Array
    #   resp.cluster.capacity_providers[0] #=> String
    #   resp.cluster.default_capacity_provider_strategy #=> Array
    #   resp.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.cluster.attachments #=> Array
    #   resp.cluster.attachments[0].id #=> String
    #   resp.cluster.attachments[0].type #=> String
    #   resp.cluster.attachments[0].status #=> String
    #   resp.cluster.attachments[0].details #=> Array
    #   resp.cluster.attachments[0].details[0].name #=> String
    #   resp.cluster.attachments[0].details[0].value #=> String
    #   resp.cluster.attachments_status #=> String
    #   resp.cluster.service_connect_defaults.namespace #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Runs and maintains your desired number of tasks from a specified task
    # definition. If the number of tasks running in a service drops below
    # the `desiredCount`, Amazon ECS runs another copy of the task in the
    # specified cluster. To update an existing service, use
    # [UpdateService][1].
    #
    # <note markdown="1"> On March 21, 2024, a change was made to resolve the task definition
    # revision before authorization. When a task definition revision is not
    # specified, authorization will occur using the latest revision of a
    # task definition.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Elastic Inference (EI) is no longer available to customers.
    #
    #  </note>
    #
    # In addition to maintaining the desired count of tasks in your service,
    # you can optionally run your service behind one or more load balancers.
    # The load balancers distribute traffic across the tasks that are
    # associated with the service. For more information, see [Service load
    # balancing][2] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    # You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
    # the volume when creating or updating a service. `volumeConfigurations`
    # is only supported for REPLICA service and not DAEMON service. For more
    # information, see [Amazon EBS volumes][3] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    # Tasks for services that don't use a load balancer are considered
    # healthy if they're in the `RUNNING` state. Tasks for services that
    # use a load balancer are considered healthy if they're in the
    # `RUNNING` state and are reported as healthy by the load balancer.
    #
    # There are two service scheduler strategies available:
    #
    # * `REPLICA` - The replica scheduling strategy places and maintains
    #   your desired number of tasks across your cluster. By default, the
    #   service scheduler spreads tasks across Availability Zones. You can
    #   use task placement strategies and constraints to customize task
    #   placement decisions. For more information, see [Service scheduler
    #   concepts][4] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    # * `DAEMON` - The daemon scheduling strategy deploys exactly one task
    #   on each active container instance that meets all of the task
    #   placement constraints that you specify in your cluster. The service
    #   scheduler also evaluates the task placement constraints for running
    #   tasks. It also stops tasks that don't meet the placement
    #   constraints. When using this strategy, you don't need to specify a
    #   desired number of tasks, a task placement strategy, or use Service
    #   Auto Scaling policies. For more information, see [Amazon ECS
    #   services][4] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    # The deployment controller is the mechanism that determines how tasks
    # are deployed for your service. The valid options are:
    #
    # * ECS
    #
    #   When you create a service which uses the `ECS` deployment
    #   controller, you can choose between the following deployment
    #   strategies (which you can set in the “`strategy`” field in
    #   “`deploymentConfiguration`”): :
    #
    #   * `ROLLING`: When you create a service which uses the *rolling
    #     update* (`ROLLING`) deployment strategy, the Amazon ECS service
    #     scheduler replaces the currently running tasks with new tasks. The
    #     number of tasks that Amazon ECS adds or removes from the service
    #     during a rolling update is controlled by the service deployment
    #     configuration. For more information, see [Deploy Amazon ECS
    #     services by replacing tasks][5] in the *Amazon Elastic Container
    #     Service Developer Guide*.
    #
    #     Rolling update deployments are best suited for the following
    #     scenarios:
    #
    #     * Gradual service updates: You need to update your service
    #       incrementally without taking the entire service offline at once.
    #
    #     * Limited resource requirements: You want to avoid the additional
    #       resource costs of running two complete environments
    #       simultaneously (as required by blue/green deployments).
    #
    #     * Acceptable deployment time: Your application can tolerate a
    #       longer deployment process, as rolling updates replace tasks one
    #       by one.
    #
    #     * No need for instant roll back: Your service can tolerate a
    #       rollback process that takes minutes rather than seconds.
    #
    #     * Simple deployment process: You prefer a straightforward
    #       deployment approach without the complexity of managing multiple
    #       environments, target groups, and listeners.
    #
    #     * No load balancer requirement: Your service doesn't use or
    #       require a load balancer, Application Load Balancer, Network Load
    #       Balancer, or Service Connect (which are required for blue/green
    #       deployments).
    #
    #     * Stateful applications: Your application maintains state that
    #       makes it difficult to run two parallel environments.
    #
    #     * Cost sensitivity: You want to minimize deployment costs by not
    #       running duplicate environments during deployment.
    #     Rolling updates are the default deployment strategy for services
    #     and provide a balance between deployment safety and resource
    #     efficiency for many common application scenarios.
    #
    #   * `BLUE_GREEN`: A *blue/green* deployment strategy (`BLUE_GREEN`) is
    #     a release methodology that reduces downtime and risk by running
    #     two identical production environments called blue and green. With
    #     Amazon ECS blue/green deployments, you can validate new service
    #     revisions before directing production traffic to them. This
    #     approach provides a safer way to deploy changes with the ability
    #     to quickly roll back if needed. For more information, see [Amazon
    #     ECS blue/green deployments][6] in the *Amazon Elastic Container
    #     Service Developer Guide*.
    #
    #     Amazon ECS blue/green deployments are best suited for the
    #     following scenarios:
    #
    #     * Service validation: When you need to validate new service
    #       revisions before directing production traffic to them
    #
    #     * Zero downtime: When your service requires zero-downtime
    #       deployments
    #
    #     * Instant roll back: When you need the ability to quickly roll
    #       back if issues are detected
    #
    #     * Load balancer requirement: When your service uses Application
    #       Load Balancer, Network Load Balancer, or Service Connect
    # * External
    #
    #   Use a third-party deployment controller.
    #
    # * Blue/green deployment (powered by CodeDeploy)
    #
    #   CodeDeploy installs an updated version of the application as a new
    #   replacement task set and reroutes production traffic from the
    #   original application task set to the replacement task set. The
    #   original task set is terminated after a successful deployment. Use
    #   this deployment controller to verify a new deployment of a service
    #   before sending production traffic to it.
    #
    # When creating a service that uses the `EXTERNAL` deployment
    # controller, you can specify only parameters that aren't controlled at
    # the task set level. The only required parameter is the service name.
    # You control your services using the [CreateTaskSet][7]. For more
    # information, see [Amazon ECS deployment types][8] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    # When the service scheduler launches new tasks, it determines task
    # placement. For information about task placement and task placement
    # strategies, see [Amazon ECS task placement][9] in the *Amazon Elastic
    # Container Service Developer Guide*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
    # [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
    # [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html
    # [6]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-blue-green.html
    # [7]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html
    # [8]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    # [9]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   you run your service on. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    # @option params [required, String] :service_name
    #   The name of your service. Up to 255 letters (uppercase and lowercase),
    #   numbers, underscores, and hyphens are allowed. Service names must be
    #   unique within a cluster, but you can have similarly named services in
    #   multiple clusters within a Region or across multiple Regions.
    #
    # @option params [String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` isn't
    #   specified, the latest `ACTIVE` revision is used.
    #
    #   A task definition must be specified if the service uses either the
    #   `ECS` or `CODE_DEPLOY` deployment controllers.
    #
    #   For more information about deployment types, see [Amazon ECS
    #   deployment types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    #
    # @option params [String] :availability_zone_rebalancing
    #   Indicates whether to use Availability Zone rebalancing for the
    #   service.
    #
    #   For more information, see [Balancing an Amazon ECS service across
    #   Availability Zones][1] in the <i> <i>Amazon Elastic Container Service
    #   Developer Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html
    #
    # @option params [Array<Types::LoadBalancer>] :load_balancers
    #   A load balancer object representing the load balancers to use with
    #   your service. For more information, see [Service load balancing][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #   If the service uses the rolling update (`ECS`) deployment controller
    #   and using either an Application Load Balancer or Network Load
    #   Balancer, you must specify one or more target group ARNs to attach to
    #   the service. The service-linked role is required for services that use
    #   multiple target groups. For more information, see [Using
    #   service-linked roles for Amazon ECS][2] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   If the service uses the `CODE_DEPLOY` deployment controller, the
    #   service is required to use either an Application Load Balancer or
    #   Network Load Balancer. When creating an CodeDeploy deployment group,
    #   you specify two target groups (referred to as a `targetGroupPair`).
    #   During a deployment, CodeDeploy determines which task set in your
    #   service has the status `PRIMARY`, and it associates one target group
    #   with it. Then, it also associates the other target group with the
    #   replacement task set. The load balancer can also have up to two
    #   listeners: a required listener for production traffic and an optional
    #   listener that you can use to perform validation tests with Lambda
    #   functions before routing production traffic to it.
    #
    #   If you use the `CODE_DEPLOY` deployment controller, these values can
    #   be changed when updating the service.
    #
    #   For Application Load Balancers and Network Load Balancers, this object
    #   must contain the load balancer target group ARN, the container name,
    #   and the container port to access from the load balancer. The container
    #   name must be as it appears in a container definition. The load
    #   balancer name parameter must be omitted. When a task from this service
    #   is placed on a container instance, the container instance and port
    #   combination is registered as a target in the target group that's
    #   specified here.
    #
    #   For Classic Load Balancers, this object must contain the load balancer
    #   name, the container name , and the container port to access from the
    #   load balancer. The container name must be as it appears in a container
    #   definition. The target group ARN parameter must be omitted. When a
    #   task from this service is placed on a container instance, the
    #   container instance is registered with the load balancer that's
    #   specified here.
    #
    #   Services with tasks that use the `awsvpc` network mode (for example,
    #   those with the Fargate launch type) only support Application Load
    #   Balancers and Network Load Balancers. Classic Load Balancers aren't
    #   supported. Also, when you create any target groups for these services,
    #   you must choose `ip` as the target type, not `instance`. This is
    #   because tasks that use the `awsvpc` network mode are associated with
    #   an elastic network interface, not an Amazon EC2 instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #
    # @option params [Array<Types::ServiceRegistry>] :service_registries
    #   The details of the service discovery registry to associate with this
    #   service. For more information, see [Service discovery][1].
    #
    #   <note markdown="1"> Each service may be associated with one service registry. Multiple
    #   service registries for each service isn't supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #
    # @option params [Integer] :desired_count
    #   The number of instantiations of the specified task definition to place
    #   and keep running in your service.
    #
    #   This is required if `schedulingStrategy` is `REPLICA` or isn't
    #   specified. If `schedulingStrategy` is `DAEMON` then this isn't
    #   required.
    #
    # @option params [String] :client_token
    #   An identifier that you provide to ensure the idempotency of the
    #   request. It must be unique and is case sensitive. Up to 36 ASCII
    #   characters in the range of 33-126 (inclusive) are allowed.
    #
    # @option params [String] :launch_type
    #   The infrastructure that you run your service on. For more information,
    #   see [Amazon ECS launch types][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   The `FARGATE` launch type runs your tasks on Fargate On-Demand
    #   infrastructure.
    #
    #   <note markdown="1"> Fargate Spot infrastructure is available for use but a capacity
    #   provider strategy must be used. For more information, see [Fargate
    #   capacity providers][2] in the *Amazon ECS Developer Guide*.
    #
    #    </note>
    #
    #   The `EC2` launch type runs your tasks on Amazon EC2 instances
    #   registered to your cluster.
    #
    #   The `EXTERNAL` launch type runs your tasks on your on-premises server
    #   or virtual machine (VM) capacity registered to your cluster.
    #
    #   A service can use either a launch type or a capacity provider
    #   strategy. If a `launchType` is specified, the
    #   `capacityProviderStrategy` parameter must be omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html
    #
    # @option params [Array<Types::CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   The capacity provider strategy to use for the service.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   A capacity provider strategy can contain a maximum of 20 capacity
    #   providers.
    #
    # @option params [String] :platform_version
    #   The platform version that your tasks in the service are running on. A
    #   platform version is specified only for tasks using the Fargate launch
    #   type. If one isn't specified, the `LATEST` platform version is used.
    #   For more information, see [Fargate platform versions][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #
    # @option params [String] :role
    #   The name or full Amazon Resource Name (ARN) of the IAM role that
    #   allows Amazon ECS to make calls to your load balancer on your behalf.
    #   This parameter is only permitted if you are using a load balancer with
    #   your service and your task definition doesn't use the `awsvpc`
    #   network mode. If you specify the `role` parameter, you must also
    #   specify a load balancer object with the `loadBalancers` parameter.
    #
    #   If your account has already created the Amazon ECS service-linked
    #   role, that role is used for your service unless you specify a role
    #   here. The service-linked role is required if your task definition uses
    #   the `awsvpc` network mode or if the service is configured to use
    #   service discovery, an external deployment controller, multiple target
    #   groups, or Elastic Inference accelerators in which case you don't
    #   specify a role here. For more information, see [Using service-linked
    #   roles for Amazon ECS][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #   If your specified role has a path other than `/`, then you must either
    #   specify the full role ARN (this is recommended) or prefix the role
    #   name with the path. For example, if a role with the name `bar` has a
    #   path of `/foo/` then you would specify `/foo/bar` as the role name.
    #   For more information, see [Friendly names and paths][2] in the *IAM
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names
    #
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   Optional deployment parameters that control how many tasks run during
    #   the deployment and the ordering of stopping and starting tasks.
    #
    # @option params [Array<Types::PlacementConstraint>] :placement_constraints
    #   An array of placement constraint objects to use for tasks in your
    #   service. You can specify a maximum of 10 constraints for each task.
    #   This limit includes constraints in the task definition and those
    #   specified at runtime.
    #
    # @option params [Array<Types::PlacementStrategy>] :placement_strategy
    #   The placement strategy objects to use for tasks in your service. You
    #   can specify a maximum of 5 strategy rules for each service.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The network configuration for the service. This parameter is required
    #   for task definitions that use the `awsvpc` network mode to receive
    #   their own elastic network interface, and it isn't supported for other
    #   network modes. For more information, see [Task networking][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #
    # @option params [Integer] :health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service scheduler
    #   ignores unhealthy Elastic Load Balancing, VPC Lattice, and container
    #   health checks after a task has first started. If you don't specify a
    #   health check grace period value, the default value of `0` is used. If
    #   you don't use any of the health checks, then
    #   `healthCheckGracePeriodSeconds` is unused.
    #
    #   If your service's tasks take a while to start and respond to health
    #   checks, you can specify a health check grace period of up to
    #   2,147,483,647 seconds (about 69 years). During that time, the Amazon
    #   ECS service scheduler ignores health check status. This grace period
    #   can prevent the service scheduler from marking tasks as unhealthy and
    #   stopping them before they have time to come up.
    #
    # @option params [String] :scheduling_strategy
    #   The scheduling strategy to use for the service. For more information,
    #   see [Services][1].
    #
    #   There are two service scheduler strategies available:
    #
    #   * `REPLICA`-The replica scheduling strategy places and maintains the
    #     desired number of tasks across your cluster. By default, the service
    #     scheduler spreads tasks across Availability Zones. You can use task
    #     placement strategies and constraints to customize task placement
    #     decisions. This scheduler strategy is required if the service uses
    #     the `CODE_DEPLOY` or `EXTERNAL` deployment controller types.
    #
    #   * `DAEMON`-The daemon scheduling strategy deploys exactly one task on
    #     each active container instance that meets all of the task placement
    #     constraints that you specify in your cluster. The service scheduler
    #     also evaluates the task placement constraints for running tasks and
    #     will stop tasks that don't meet the placement constraints. When
    #     you're using this strategy, you don't need to specify a desired
    #     number of tasks, a task placement strategy, or use Service Auto
    #     Scaling policies.
    #
    #     <note markdown="1"> Tasks using the Fargate launch type or the `CODE_DEPLOY` or
    #     `EXTERNAL` deployment controller types don't support the `DAEMON`
    #     scheduling strategy.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
    #
    # @option params [Types::DeploymentController] :deployment_controller
    #   The deployment controller to use for the service. If no deployment
    #   controller is specified, the default value of `ECS` is used.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the service to help you categorize and
    #   organize them. Each tag consists of a key and an optional value, both
    #   of which you define. When a service is deleted, the tags are deleted
    #   as well.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @option params [Boolean] :enable_ecs_managed_tags
    #   Specifies whether to turn on Amazon ECS managed tags for the tasks
    #   within the service. For more information, see [Tagging your Amazon ECS
    #   resources][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   When you use Amazon ECS managed tags, you must set the `propagateTags`
    #   request parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #
    # @option params [String] :propagate_tags
    #   Specifies whether to propagate the tags from the task definition to
    #   the task. If no value is specified, the tags aren't propagated. Tags
    #   can only be propagated to the task during task creation. To add tags
    #   to a task after task creation, use the [TagResource][1] API action.
    #
    #   You must set this to a value other than `NONE` when you use Cost
    #   Explorer. For more information, see [Amazon ECS usage reports][2] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #   The default is `NONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/usage-reports.html
    #
    # @option params [Boolean] :enable_execute_command
    #   Determines whether the execute command functionality is turned on for
    #   the service. If `true`, this enables execute command functionality on
    #   all containers in the service tasks.
    #
    # @option params [Types::ServiceConnectConfiguration] :service_connect_configuration
    #   The configuration for this service to discover and connect to
    #   services, and be discovered by, and connected from, other services
    #   within a namespace.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all of
    #   the clusters in the namespace. Tasks connect through a managed proxy
    #   container that collects logs and metrics for increased visibility.
    #   Only the tasks that Amazon ECS services create are supported with
    #   Service Connect. For more information, see [Service Connect][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @option params [Array<Types::ServiceVolumeConfiguration>] :volume_configurations
    #   The configuration for a volume specified in the task definition as a
    #   volume that is configured at launch time. Currently, the only
    #   supported volume type is an Amazon EBS volume.
    #
    # @option params [Array<Types::VpcLatticeConfiguration>] :vpc_lattice_configurations
    #   The VPC Lattice configuration for the service being created.
    #
    # @return [Types::CreateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceResponse#service #service} => Types::Service
    #
    #
    # @example Example: To create a new service
    #
    #   # This example creates a service in your default region called ``ecs-simple-service``. The service uses the
    #   # ``hello_world`` task definition and it maintains 10 copies of that task.
    #
    #   resp = client.create_service({
    #     desired_count: 10, 
    #     service_name: "ecs-simple-service", 
    #     task_definition: "hello_world", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service: {
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default", 
    #       created_at: Time.parse("2016-08-29T16:13:47.298Z"), 
    #       deployment_configuration: {
    #         maximum_percent: 200, 
    #         minimum_healthy_percent: 100, 
    #       }, 
    #       deployments: [
    #         {
    #           created_at: Time.parse("2016-08-29T16:13:47.298Z"), 
    #           desired_count: 10, 
    #           id: "ecs-svc/9223370564342348388", 
    #           pending_count: 0, 
    #           running_count: 0, 
    #           status: "PRIMARY", 
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #           updated_at: Time.parse("2016-08-29T16:13:47.298Z"), 
    #         }, 
    #         {
    #           created_at: Time.parse("2016-08-29T15:52:44.481Z"), 
    #           desired_count: 0, 
    #           id: "ecs-svc/9223370564343611322", 
    #           pending_count: 0, 
    #           running_count: 0, 
    #           status: "ACTIVE", 
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #           updated_at: Time.parse("2016-08-29T16:11:38.941Z"), 
    #         }, 
    #       ], 
    #       desired_count: 10, 
    #       events: [
    #       ], 
    #       load_balancers: [
    #       ], 
    #       pending_count: 0, 
    #       running_count: 0, 
    #       service_arn: "arn:aws:ecs:us-east-1:012345678910:service/default/ecs-simple-service", 
    #       service_name: "ecs-simple-service", 
    #       status: "ACTIVE", 
    #       task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/default/hello_world:6", 
    #     }, 
    #   }
    #
    # @example Example: To create a new service behind a load balancer
    #
    #   # This example creates a service in your default region called ``ecs-simple-service-elb``. The service uses the
    #   # ``ecs-demo`` task definition and it maintains 10 copies of that task. You must reference an existing load balancer in
    #   # the same region by its name.
    #
    #   resp = client.create_service({
    #     desired_count: 10, 
    #     load_balancers: [
    #       {
    #         container_name: "simple-app", 
    #         container_port: 80, 
    #         load_balancer_name: "EC2Contai-EcsElast-15DCDAURT3ZO2", 
    #       }, 
    #     ], 
    #     role: "ecsServiceRole", 
    #     service_name: "ecs-simple-service-elb", 
    #     task_definition: "console-sample-app-static", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service: {
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default", 
    #       created_at: Time.parse("2016-08-29T16:02:54.884Z"), 
    #       deployment_configuration: {
    #         maximum_percent: 200, 
    #         minimum_healthy_percent: 100, 
    #       }, 
    #       deployments: [
    #         {
    #           created_at: Time.parse("2016-08-29T16:02:54.884Z"), 
    #           desired_count: 10, 
    #           id: "ecs-svc/9223370564343000923", 
    #           pending_count: 0, 
    #           running_count: 0, 
    #           status: "PRIMARY", 
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-static:6", 
    #           updated_at: Time.parse("2016-08-29T16:02:54.884Z"), 
    #         }, 
    #       ], 
    #       desired_count: 10, 
    #       events: [
    #       ], 
    #       load_balancers: [
    #         {
    #           container_name: "simple-app", 
    #           container_port: 80, 
    #           load_balancer_name: "EC2Contai-EcsElast-15DCDAURT3ZO2", 
    #         }, 
    #       ], 
    #       pending_count: 0, 
    #       role_arn: "arn:aws:iam::012345678910:role/ecsServiceRole", 
    #       running_count: 0, 
    #       service_arn: "arn:aws:ecs:us-east-1:012345678910:service/default/ecs-simple-service-elb", 
    #       service_name: "ecs-simple-service-elb", 
    #       status: "ACTIVE", 
    #       task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/default/console-sample-app-static:6", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     cluster: "String",
    #     service_name: "String", # required
    #     task_definition: "String",
    #     availability_zone_rebalancing: "ENABLED", # accepts ENABLED, DISABLED
    #     load_balancers: [
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #         advanced_configuration: {
    #           alternate_target_group_arn: "String",
    #           production_listener_rule: "String",
    #           test_listener_rule: "String",
    #           role_arn: "String",
    #         },
    #       },
    #     ],
    #     service_registries: [
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1,
    #       },
    #     ],
    #     desired_count: 1,
    #     client_token: "String",
    #     launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1,
    #       },
    #     ],
    #     platform_version: "String",
    #     role: "String",
    #     deployment_configuration: {
    #       deployment_circuit_breaker: {
    #         enable: false, # required
    #         rollback: false, # required
    #       },
    #       maximum_percent: 1,
    #       minimum_healthy_percent: 1,
    #       alarms: {
    #         alarm_names: ["String"], # required
    #         rollback: false, # required
    #         enable: false, # required
    #       },
    #       strategy: "ROLLING", # accepts ROLLING, BLUE_GREEN
    #       bake_time_in_minutes: 1,
    #       lifecycle_hooks: [
    #         {
    #           hook_target_arn: "String",
    #           role_arn: "IAMRoleArn",
    #           lifecycle_stages: ["RECONCILE_SERVICE"], # accepts RECONCILE_SERVICE, PRE_SCALE_UP, POST_SCALE_UP, TEST_TRAFFIC_SHIFT, POST_TEST_TRAFFIC_SHIFT, PRODUCTION_TRAFFIC_SHIFT, POST_PRODUCTION_TRAFFIC_SHIFT
    #         },
    #       ],
    #     },
    #     placement_constraints: [
    #       {
    #         type: "distinctInstance", # accepts distinctInstance, memberOf
    #         expression: "String",
    #       },
    #     ],
    #     placement_strategy: [
    #       {
    #         type: "random", # accepts random, spread, binpack
    #         field: "String",
    #       },
    #     ],
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     health_check_grace_period_seconds: 1,
    #     scheduling_strategy: "REPLICA", # accepts REPLICA, DAEMON
    #     deployment_controller: {
    #       type: "ECS", # required, accepts ECS, CODE_DEPLOY, EXTERNAL
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     enable_ecs_managed_tags: false,
    #     propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE, NONE
    #     enable_execute_command: false,
    #     service_connect_configuration: {
    #       enabled: false, # required
    #       namespace: "String",
    #       services: [
    #         {
    #           port_name: "String", # required
    #           discovery_name: "String",
    #           client_aliases: [
    #             {
    #               port: 1, # required
    #               dns_name: "String",
    #               test_traffic_rules: {
    #                 header: { # required
    #                   name: "String", # required
    #                   value: {
    #                     exact: "String", # required
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #           ingress_port_override: 1,
    #           timeout: {
    #             idle_timeout_seconds: 1,
    #             per_request_timeout_seconds: 1,
    #           },
    #           tls: {
    #             issuer_certificate_authority: { # required
    #               aws_pca_authority_arn: "String",
    #             },
    #             kms_key: "String",
    #             role_arn: "String",
    #           },
    #         },
    #       ],
    #       log_configuration: {
    #         log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk, awsfirelens
    #         options: {
    #           "String" => "String",
    #         },
    #         secret_options: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           },
    #         ],
    #       },
    #     },
    #     volume_configurations: [
    #       {
    #         name: "ECSVolumeName", # required
    #         managed_ebs_volume: {
    #           encrypted: false,
    #           kms_key_id: "EBSKMSKeyId",
    #           volume_type: "EBSVolumeType",
    #           size_in_gi_b: 1,
    #           snapshot_id: "EBSSnapshotId",
    #           volume_initialization_rate: 1,
    #           iops: 1,
    #           throughput: 1,
    #           tag_specifications: [
    #             {
    #               resource_type: "volume", # required, accepts volume
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue",
    #                 },
    #               ],
    #               propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE, NONE
    #             },
    #           ],
    #           role_arn: "IAMRoleArn", # required
    #           filesystem_type: "ext3", # accepts ext3, ext4, xfs, ntfs
    #         },
    #       },
    #     ],
    #     vpc_lattice_configurations: [
    #       {
    #         role_arn: "IAMRoleArn", # required
    #         target_group_arn: "String", # required
    #         port_name: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.service_name #=> String
    #   resp.service.cluster_arn #=> String
    #   resp.service.load_balancers #=> Array
    #   resp.service.load_balancers[0].target_group_arn #=> String
    #   resp.service.load_balancers[0].load_balancer_name #=> String
    #   resp.service.load_balancers[0].container_name #=> String
    #   resp.service.load_balancers[0].container_port #=> Integer
    #   resp.service.load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.service.load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.service.load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.service.load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.service.service_registries #=> Array
    #   resp.service.service_registries[0].registry_arn #=> String
    #   resp.service.service_registries[0].port #=> Integer
    #   resp.service.service_registries[0].container_name #=> String
    #   resp.service.service_registries[0].container_port #=> Integer
    #   resp.service.status #=> String
    #   resp.service.desired_count #=> Integer
    #   resp.service.running_count #=> Integer
    #   resp.service.pending_count #=> Integer
    #   resp.service.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.capacity_provider_strategy #=> Array
    #   resp.service.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.capacity_provider_strategy[0].base #=> Integer
    #   resp.service.platform_version #=> String
    #   resp.service.platform_family #=> String
    #   resp.service.task_definition #=> String
    #   resp.service.deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.service.deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.service.deployment_configuration.alarms.alarm_names #=> Array
    #   resp.service.deployment_configuration.alarms.alarm_names[0] #=> String
    #   resp.service.deployment_configuration.alarms.rollback #=> Boolean
    #   resp.service.deployment_configuration.alarms.enable #=> Boolean
    #   resp.service.deployment_configuration.strategy #=> String, one of "ROLLING", "BLUE_GREEN"
    #   resp.service.deployment_configuration.bake_time_in_minutes #=> Integer
    #   resp.service.deployment_configuration.lifecycle_hooks #=> Array
    #   resp.service.deployment_configuration.lifecycle_hooks[0].hook_target_arn #=> String
    #   resp.service.deployment_configuration.lifecycle_hooks[0].role_arn #=> String
    #   resp.service.deployment_configuration.lifecycle_hooks[0].lifecycle_stages #=> Array
    #   resp.service.deployment_configuration.lifecycle_hooks[0].lifecycle_stages[0] #=> String, one of "RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"
    #   resp.service.task_sets #=> Array
    #   resp.service.task_sets[0].id #=> String
    #   resp.service.task_sets[0].task_set_arn #=> String
    #   resp.service.task_sets[0].service_arn #=> String
    #   resp.service.task_sets[0].cluster_arn #=> String
    #   resp.service.task_sets[0].started_by #=> String
    #   resp.service.task_sets[0].external_id #=> String
    #   resp.service.task_sets[0].status #=> String
    #   resp.service.task_sets[0].task_definition #=> String
    #   resp.service.task_sets[0].computed_desired_count #=> Integer
    #   resp.service.task_sets[0].pending_count #=> Integer
    #   resp.service.task_sets[0].running_count #=> Integer
    #   resp.service.task_sets[0].created_at #=> Time
    #   resp.service.task_sets[0].updated_at #=> Time
    #   resp.service.task_sets[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.task_sets[0].capacity_provider_strategy #=> Array
    #   resp.service.task_sets[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.task_sets[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.task_sets[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.service.task_sets[0].platform_version #=> String
    #   resp.service.task_sets[0].platform_family #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.task_sets[0].load_balancers #=> Array
    #   resp.service.task_sets[0].load_balancers[0].target_group_arn #=> String
    #   resp.service.task_sets[0].load_balancers[0].load_balancer_name #=> String
    #   resp.service.task_sets[0].load_balancers[0].container_name #=> String
    #   resp.service.task_sets[0].load_balancers[0].container_port #=> Integer
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.service.task_sets[0].service_registries #=> Array
    #   resp.service.task_sets[0].service_registries[0].registry_arn #=> String
    #   resp.service.task_sets[0].service_registries[0].port #=> Integer
    #   resp.service.task_sets[0].service_registries[0].container_name #=> String
    #   resp.service.task_sets[0].service_registries[0].container_port #=> Integer
    #   resp.service.task_sets[0].scale.value #=> Float
    #   resp.service.task_sets[0].scale.unit #=> String, one of "PERCENT"
    #   resp.service.task_sets[0].stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.service.task_sets[0].stability_status_at #=> Time
    #   resp.service.task_sets[0].tags #=> Array
    #   resp.service.task_sets[0].tags[0].key #=> String
    #   resp.service.task_sets[0].tags[0].value #=> String
    #   resp.service.task_sets[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.service.deployments #=> Array
    #   resp.service.deployments[0].id #=> String
    #   resp.service.deployments[0].status #=> String
    #   resp.service.deployments[0].task_definition #=> String
    #   resp.service.deployments[0].desired_count #=> Integer
    #   resp.service.deployments[0].pending_count #=> Integer
    #   resp.service.deployments[0].running_count #=> Integer
    #   resp.service.deployments[0].failed_tasks #=> Integer
    #   resp.service.deployments[0].created_at #=> Time
    #   resp.service.deployments[0].updated_at #=> Time
    #   resp.service.deployments[0].capacity_provider_strategy #=> Array
    #   resp.service.deployments[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.deployments[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.deployments[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.service.deployments[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.deployments[0].platform_version #=> String
    #   resp.service.deployments[0].platform_family #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.deployments[0].rollout_state #=> String, one of "COMPLETED", "FAILED", "IN_PROGRESS"
    #   resp.service.deployments[0].rollout_state_reason #=> String
    #   resp.service.deployments[0].service_connect_configuration.enabled #=> Boolean
    #   resp.service.deployments[0].service_connect_configuration.namespace #=> String
    #   resp.service.deployments[0].service_connect_configuration.services #=> Array
    #   resp.service.deployments[0].service_connect_configuration.services[0].port_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].discovery_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases #=> Array
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].port #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].dns_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.value.exact #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].ingress_port_override #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].timeout.idle_timeout_seconds #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].timeout.per_request_timeout_seconds #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.issuer_certificate_authority.aws_pca_authority_arn #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.kms_key #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.role_arn #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.options #=> Hash
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.options["String"] #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options #=> Array
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options[0].name #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options[0].value_from #=> String
    #   resp.service.deployments[0].service_connect_resources #=> Array
    #   resp.service.deployments[0].service_connect_resources[0].discovery_name #=> String
    #   resp.service.deployments[0].service_connect_resources[0].discovery_arn #=> String
    #   resp.service.deployments[0].volume_configurations #=> Array
    #   resp.service.deployments[0].volume_configurations[0].name #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.encrypted #=> Boolean
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.kms_key_id #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.volume_type #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.size_in_gi_b #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.snapshot_id #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.volume_initialization_rate #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.iops #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.throughput #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications #=> Array
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].resource_type #=> String, one of "volume"
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags #=> Array
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].key #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].value #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.role_arn #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.filesystem_type #=> String, one of "ext3", "ext4", "xfs", "ntfs"
    #   resp.service.deployments[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations #=> Array
    #   resp.service.deployments[0].vpc_lattice_configurations[0].role_arn #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations[0].target_group_arn #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations[0].port_name #=> String
    #   resp.service.role_arn #=> String
    #   resp.service.events #=> Array
    #   resp.service.events[0].id #=> String
    #   resp.service.events[0].created_at #=> Time
    #   resp.service.events[0].message #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.placement_constraints #=> Array
    #   resp.service.placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.service.placement_constraints[0].expression #=> String
    #   resp.service.placement_strategy #=> Array
    #   resp.service.placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.service.placement_strategy[0].field #=> String
    #   resp.service.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.health_check_grace_period_seconds #=> Integer
    #   resp.service.scheduling_strategy #=> String, one of "REPLICA", "DAEMON"
    #   resp.service.deployment_controller.type #=> String, one of "ECS", "CODE_DEPLOY", "EXTERNAL"
    #   resp.service.tags #=> Array
    #   resp.service.tags[0].key #=> String
    #   resp.service.tags[0].value #=> String
    #   resp.service.created_by #=> String
    #   resp.service.enable_ecs_managed_tags #=> Boolean
    #   resp.service.propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.service.enable_execute_command #=> Boolean
    #   resp.service.availability_zone_rebalancing #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Create a task set in the specified cluster and service. This is used
    # when a service uses the `EXTERNAL` deployment controller type. For
    # more information, see [Amazon ECS deployment types][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    # <note markdown="1"> On March 21, 2024, a change was made to resolve the task definition
    # revision before authorization. When a task definition revision is not
    # specified, authorization will occur using the latest revision of a
    # task definition.
    #
    #  </note>
    #
    # For information about the maximum number of task sets and other
    # quotas, see [Amazon ECS service quotas][2] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html
    #
    # @option params [required, String] :service
    #   The short name or full Amazon Resource Name (ARN) of the service to
    #   create the task set in.
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service to create the task set in.
    #
    # @option params [String] :external_id
    #   An optional non-unique tag that identifies this task set in external
    #   systems. If the task set is associated with a service discovery
    #   registry, the tasks in this task set will have the
    #   `ECS_TASK_SET_EXTERNAL_ID` Cloud Map attribute set to the provided
    #   value.
    #
    # @option params [required, String] :task_definition
    #   The task definition for the tasks in the task set to use. If a
    #   revision isn't specified, the latest `ACTIVE` revision is used.
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   An object representing the network configuration for a task set.
    #
    # @option params [Array<Types::LoadBalancer>] :load_balancers
    #   A load balancer object representing the load balancer to use with the
    #   task set. The supported load balancer types are either an Application
    #   Load Balancer or a Network Load Balancer.
    #
    # @option params [Array<Types::ServiceRegistry>] :service_registries
    #   The details of the service discovery registries to assign to this task
    #   set. For more information, see [Service discovery][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #
    # @option params [String] :launch_type
    #   The launch type that new tasks in the task set uses. For more
    #   information, see [Amazon ECS launch types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   If a `launchType` is specified, the `capacityProviderStrategy`
    #   parameter must be omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #
    # @option params [Array<Types::CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   The capacity provider strategy to use for the task set.
    #
    #   A capacity provider strategy consists of one or more capacity
    #   providers along with the `base` and `weight` to assign to them. A
    #   capacity provider must be associated with the cluster to be used in a
    #   capacity provider strategy. The [PutClusterCapacityProviders][1] API
    #   is used to associate a capacity provider with a cluster. Only capacity
    #   providers with an `ACTIVE` or `UPDATING` status can be used.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group, the
    #   capacity provider must already be created. New capacity providers can
    #   be created with the [CreateCapacityProviderProvider][2]API operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers are
    #   available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #   The [PutClusterCapacityProviders][1] API operation is used to update
    #   the list of available capacity providers for a cluster after the
    #   cluster is created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProviderProvider.html
    #
    # @option params [String] :platform_version
    #   The platform version that the tasks in the task set uses. A platform
    #   version is specified only for tasks using the Fargate launch type. If
    #   one isn't specified, the `LATEST` platform version is used.
    #
    # @option params [Types::Scale] :scale
    #   A floating-point percentage of the desired number of tasks to place
    #   and keep running in the task set.
    #
    # @option params [String] :client_token
    #   An identifier that you provide to ensure the idempotency of the
    #   request. It must be unique and is case sensitive. Up to 36 ASCII
    #   characters in the range of 33-126 (inclusive) are allowed.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the task set to help you categorize and
    #   organize them. Each tag consists of a key and an optional value. You
    #   define both. When a service is deleted, the tags are deleted.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @return [Types::CreateTaskSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTaskSetResponse#task_set #task_set} => Types::TaskSet
    #
    #
    # @example Example: To create a task set
    #
    #   # This example creates a task set in a service that uses the EXTERNAL deployment controller.
    #
    #   resp = client.create_task_set({
    #     cluster: "MyCluster", 
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         security_groups: [
    #           "sg-12344321", 
    #         ], 
    #         subnets: [
    #           "subnet-12344321", 
    #         ], 
    #       }, 
    #     }, 
    #     service: "MyService", 
    #     task_definition: "MyTaskDefinition:2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_set: {
    #       computed_desired_count: 0, 
    #       created_at: Time.parse(1557128360.711), 
    #       id: "ecs-svc/1234567890123456789", 
    #       launch_type: "EC2", 
    #       load_balancers: [
    #       ], 
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           assign_public_ip: "DISABLED", 
    #           security_groups: [
    #             "sg-12344321", 
    #           ], 
    #           subnets: [
    #             "subnet-12344321", 
    #           ], 
    #         }, 
    #       }, 
    #       pending_count: 0, 
    #       running_count: 0, 
    #       scale: {
    #         value: 0, 
    #         unit: "PERCENT", 
    #       }, 
    #       service_registries: [
    #       ], 
    #       stability_status: "STABILIZING", 
    #       stability_status_at: Time.parse(1557128360.711), 
    #       status: "ACTIVE", 
    #       task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/MyTaskDefinition:2", 
    #       task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #       updated_at: Time.parse(1557128360.711), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task_set({
    #     service: "String", # required
    #     cluster: "String", # required
    #     external_id: "String",
    #     task_definition: "String", # required
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     load_balancers: [
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #         advanced_configuration: {
    #           alternate_target_group_arn: "String",
    #           production_listener_rule: "String",
    #           test_listener_rule: "String",
    #           role_arn: "String",
    #         },
    #       },
    #     ],
    #     service_registries: [
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1,
    #       },
    #     ],
    #     launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1,
    #       },
    #     ],
    #     platform_version: "String",
    #     scale: {
    #       value: 1.0,
    #       unit: "PERCENT", # accepts PERCENT
    #     },
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.task_set.id #=> String
    #   resp.task_set.task_set_arn #=> String
    #   resp.task_set.service_arn #=> String
    #   resp.task_set.cluster_arn #=> String
    #   resp.task_set.started_by #=> String
    #   resp.task_set.external_id #=> String
    #   resp.task_set.status #=> String
    #   resp.task_set.task_definition #=> String
    #   resp.task_set.computed_desired_count #=> Integer
    #   resp.task_set.pending_count #=> Integer
    #   resp.task_set.running_count #=> Integer
    #   resp.task_set.created_at #=> Time
    #   resp.task_set.updated_at #=> Time
    #   resp.task_set.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_set.capacity_provider_strategy #=> Array
    #   resp.task_set.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.task_set.capacity_provider_strategy[0].weight #=> Integer
    #   resp.task_set.capacity_provider_strategy[0].base #=> Integer
    #   resp.task_set.platform_version #=> String
    #   resp.task_set.platform_family #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.task_set.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.task_set.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_set.load_balancers #=> Array
    #   resp.task_set.load_balancers[0].target_group_arn #=> String
    #   resp.task_set.load_balancers[0].load_balancer_name #=> String
    #   resp.task_set.load_balancers[0].container_name #=> String
    #   resp.task_set.load_balancers[0].container_port #=> Integer
    #   resp.task_set.load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.task_set.service_registries #=> Array
    #   resp.task_set.service_registries[0].registry_arn #=> String
    #   resp.task_set.service_registries[0].port #=> Integer
    #   resp.task_set.service_registries[0].container_name #=> String
    #   resp.task_set.service_registries[0].container_port #=> Integer
    #   resp.task_set.scale.value #=> Float
    #   resp.task_set.scale.unit #=> String, one of "PERCENT"
    #   resp.task_set.stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.task_set.stability_status_at #=> Time
    #   resp.task_set.tags #=> Array
    #   resp.task_set.tags[0].key #=> String
    #   resp.task_set.tags[0].value #=> String
    #   resp.task_set.fargate_ephemeral_storage.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/CreateTaskSet AWS API Documentation
    #
    # @overload create_task_set(params = {})
    # @param [Hash] params ({})
    def create_task_set(params = {}, options = {})
      req = build_request(:create_task_set, params)
      req.send_request(options)
    end

    # Disables an account setting for a specified user, role, or the root
    # user for an account.
    #
    # @option params [required, String] :name
    #   The resource name to disable the account setting for. If
    #   `serviceLongArnFormat` is specified, the ARN for your Amazon ECS
    #   services is affected. If `taskLongArnFormat` is specified, the ARN and
    #   resource ID for your Amazon ECS tasks is affected. If
    #   `containerInstanceLongArnFormat` is specified, the ARN and resource ID
    #   for your Amazon ECS container instances is affected. If
    #   `awsvpcTrunking` is specified, the ENI limit for your Amazon ECS
    #   container instances is affected.
    #
    # @option params [String] :principal_arn
    #   The Amazon Resource Name (ARN) of the principal. It can be a user,
    #   role, or the root user. If you specify the root user, it disables the
    #   account setting for all users, roles, and the root user of the account
    #   unless a user or role explicitly overrides these settings. If this
    #   field is omitted, the setting is changed only for the authenticated
    #   user.
    #
    #   In order to use this parameter, you must be the root user, or the
    #   principal.
    #
    # @return [Types::DeleteAccountSettingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountSettingResponse#setting #setting} => Types::Setting
    #
    #
    # @example Example: To delete your account setting
    #
    #   # This example deletes the account setting for your user for the specified resource type.
    #
    #   resp = client.delete_account_setting({
    #     name: "serviceLongArnFormat", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     setting: {
    #       name: "serviceLongArnFormat", 
    #       value: "enabled", 
    #       principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #     }, 
    #   }
    #
    # @example Example: To delete the account settings for a specific IAM user or IAM role
    #
    #   # This example deletes the account setting for a specific IAM user or IAM role for the specified resource type. Only the
    #   # root user can view or modify the account settings for another user.
    #
    #   resp = client.delete_account_setting({
    #     name: "containerInstanceLongArnFormat", 
    #     principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     setting: {
    #       name: "containerInstanceLongArnFormat", 
    #       value: "enabled", 
    #       principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_setting({
    #     name: "serviceLongArnFormat", # required, accepts serviceLongArnFormat, taskLongArnFormat, containerInstanceLongArnFormat, awsvpcTrunking, containerInsights, fargateFIPSMode, tagResourceAuthorization, fargateTaskRetirementWaitPeriod, guardDutyActivate, defaultLogDriverMode
    #     principal_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.setting.name #=> String, one of "serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"
    #   resp.setting.value #=> String
    #   resp.setting.principal_arn #=> String
    #   resp.setting.type #=> String, one of "user", "aws_managed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAccountSetting AWS API Documentation
    #
    # @overload delete_account_setting(params = {})
    # @param [Hash] params ({})
    def delete_account_setting(params = {}, options = {})
      req = build_request(:delete_account_setting, params)
      req.send_request(options)
    end

    # Deletes one or more custom attributes from an Amazon ECS resource.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   contains the resource to delete attributes. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, Array<Types::Attribute>] :attributes
    #   The attributes to delete from your resource. You can specify up to 10
    #   attributes for each request. For custom attributes, specify the
    #   attribute name and target ID, but don't specify the value. If you
    #   specify the target ID using the short form, you must also specify the
    #   target type.
    #
    # @return [Types::DeleteAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAttributesResponse#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #
    #
    # @example Example: To delete a custom attribute from an Amazon ECS instance
    #
    #   # This example deletes an attribute named stack from a container instance. 
    #
    #   resp = client.delete_attributes({
    #     attributes: [
    #       {
    #         name: "stack", 
    #         target_id: "aws:ecs:us-west-2:130757420319:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         name: "stack", 
    #         value: "production", 
    #         target_id: "aws:ecs:us-west-2:130757420319:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attributes({
    #     cluster: "String",
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance", # accepts container-instance
    #         target_id: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.attributes[0].target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteAttributes AWS API Documentation
    #
    # @overload delete_attributes(params = {})
    # @param [Hash] params ({})
    def delete_attributes(params = {}, options = {})
      req = build_request(:delete_attributes, params)
      req.send_request(options)
    end

    # Deletes the specified capacity provider.
    #
    # <note markdown="1"> The `FARGATE` and `FARGATE_SPOT` capacity providers are reserved and
    # can't be deleted. You can disassociate them from a cluster using
    # either [PutClusterCapacityProviders][1] or by deleting the cluster.
    #
    #  </note>
    #
    # Prior to a capacity provider being deleted, the capacity provider must
    # be removed from the capacity provider strategy from all services. The
    # [UpdateService][2] API can be used to remove a capacity provider from
    # a service's capacity provider strategy. When updating a service, the
    # `forceNewDeployment` option can be used to ensure that any tasks using
    # the Amazon EC2 instance capacity provided by the capacity provider are
    # transitioned to use the capacity from the remaining capacity
    # providers. Only capacity providers that aren't associated with a
    # cluster can be deleted. To remove a capacity provider from a cluster,
    # you can either use [PutClusterCapacityProviders][1] or delete the
    # cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
    #
    # @option params [required, String] :capacity_provider
    #   The short name or full Amazon Resource Name (ARN) of the capacity
    #   provider to delete.
    #
    # @return [Types::DeleteCapacityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCapacityProviderResponse#capacity_provider #capacity_provider} => Types::CapacityProvider
    #
    #
    # @example Example: To delete a specified capacity provider
    #
    #   # This example deletes a specified capacity provider. 
    #
    #   resp = client.delete_capacity_provider({
    #     capacity_provider: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/ExampleCapacityProvider", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     capacity_provider: {
    #       name: "ExampleCapacityProvider", 
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:a1b2c3d4-5678-90ab-cdef-EXAMPLE11111:autoScalingGroupName/MyAutoScalingGroup", 
    #         managed_scaling: {
    #           maximum_scaling_step_size: 10000, 
    #           minimum_scaling_step_size: 1, 
    #           status: "ENABLED", 
    #           target_capacity: 100, 
    #         }, 
    #         managed_termination_protection: "DISABLED", 
    #       }, 
    #       capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/ExampleCapacityProvider", 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #       update_status: "DELETE_IN_PROGRESS", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_capacity_provider({
    #     capacity_provider: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_provider.capacity_provider_arn #=> String
    #   resp.capacity_provider.name #=> String
    #   resp.capacity_provider.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.capacity_provider.auto_scaling_group_provider.auto_scaling_group_arn #=> String
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.target_capacity #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.minimum_scaling_step_size #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.maximum_scaling_step_size #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.instance_warmup_period #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_termination_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.auto_scaling_group_provider.managed_draining #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.update_status #=> String, one of "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.capacity_provider.update_status_reason #=> String
    #   resp.capacity_provider.tags #=> Array
    #   resp.capacity_provider.tags[0].key #=> String
    #   resp.capacity_provider.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCapacityProvider AWS API Documentation
    #
    # @overload delete_capacity_provider(params = {})
    # @param [Hash] params ({})
    def delete_capacity_provider(params = {}, options = {})
      req = build_request(:delete_capacity_provider, params)
      req.send_request(options)
    end

    # Deletes the specified cluster. The cluster transitions to the
    # `INACTIVE` state. Clusters with an `INACTIVE` status might remain
    # discoverable in your account for a period of time. However, this
    # behavior is subject to change in the future. We don't recommend that
    # you rely on `INACTIVE` clusters persisting.
    #
    # You must deregister all container instances from this cluster before
    # you may delete it. You can list the container instances in a cluster
    # with [ListContainerInstances][1] and deregister them with
    # [DeregisterContainerInstance][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListContainerInstances.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterContainerInstance.html
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   delete.
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To delete an empty cluster
    #
    #   # This example deletes an empty cluster in your default region.
    #
    #   resp = client.delete_cluster({
    #     cluster: "my_cluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster", 
    #       cluster_name: "my_cluster", 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       status: "INACTIVE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.execute_command_configuration.logging #=> String, one of "NONE", "DEFAULT", "OVERRIDE"
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.cluster.configuration.managed_storage_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.managed_storage_configuration.fargate_ephemeral_storage_kms_key_id #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.registered_container_instances_count #=> Integer
    #   resp.cluster.running_tasks_count #=> Integer
    #   resp.cluster.pending_tasks_count #=> Integer
    #   resp.cluster.active_services_count #=> Integer
    #   resp.cluster.statistics #=> Array
    #   resp.cluster.statistics[0].name #=> String
    #   resp.cluster.statistics[0].value #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.settings #=> Array
    #   resp.cluster.settings[0].name #=> String, one of "containerInsights"
    #   resp.cluster.settings[0].value #=> String
    #   resp.cluster.capacity_providers #=> Array
    #   resp.cluster.capacity_providers[0] #=> String
    #   resp.cluster.default_capacity_provider_strategy #=> Array
    #   resp.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.cluster.attachments #=> Array
    #   resp.cluster.attachments[0].id #=> String
    #   resp.cluster.attachments[0].type #=> String
    #   resp.cluster.attachments[0].status #=> String
    #   resp.cluster.attachments[0].details #=> Array
    #   resp.cluster.attachments[0].details[0].name #=> String
    #   resp.cluster.attachments[0].details[0].value #=> String
    #   resp.cluster.attachments_status #=> String
    #   resp.cluster.service_connect_defaults.namespace #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes a specified service within a cluster. You can delete a service
    # if you have no running tasks in it and the desired task count is zero.
    # If the service is actively maintaining tasks, you can't delete it,
    # and you must update the service to a desired task count of zero. For
    # more information, see [UpdateService][1].
    #
    # <note markdown="1"> When you delete a service, if there are still running tasks that
    # require cleanup, the service status moves from `ACTIVE` to `DRAINING`,
    # and the service is no longer visible in the console or in the
    # [ListServices][2] API operation. After all tasks have transitioned to
    # either `STOPPING` or `STOPPED` status, the service status moves from
    # `DRAINING` to `INACTIVE`. Services in the `DRAINING` or `INACTIVE`
    # status can still be viewed with the [DescribeServices][3] API
    # operation. However, in the future, `INACTIVE` services may be cleaned
    # up and purged from Amazon ECS record keeping, and
    # [DescribeServices][3] calls on those services return a
    # `ServiceNotFoundException` error.
    #
    #  </note>
    #
    # If you attempt to create a new service with the same name as an
    # existing service in either `ACTIVE` or `DRAINING` status, you receive
    # an error.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service to delete. If you do not specify a cluster, the
    #   default cluster is assumed.
    #
    # @option params [required, String] :service
    #   The name of the service to delete.
    #
    # @option params [Boolean] :force
    #   If `true`, allows you to delete a service even if it wasn't scaled
    #   down to zero tasks. It's only necessary to use this if the service
    #   uses the `REPLICA` scheduling strategy.
    #
    # @return [Types::DeleteServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceResponse#service #service} => Types::Service
    #
    #
    # @example Example: To delete a service
    #
    #   # This example deletes the my-http-service service. The service must have a desired count and running count of 0 before
    #   # you can delete it.
    #
    #   resp = client.delete_service({
    #     service: "my-http-service", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     cluster: "String",
    #     service: "String", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.service_name #=> String
    #   resp.service.cluster_arn #=> String
    #   resp.service.load_balancers #=> Array
    #   resp.service.load_balancers[0].target_group_arn #=> String
    #   resp.service.load_balancers[0].load_balancer_name #=> String
    #   resp.service.load_balancers[0].container_name #=> String
    #   resp.service.load_balancers[0].container_port #=> Integer
    #   resp.service.load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.service.load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.service.load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.service.load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.service.service_registries #=> Array
    #   resp.service.service_registries[0].registry_arn #=> String
    #   resp.service.service_registries[0].port #=> Integer
    #   resp.service.service_registries[0].container_name #=> String
    #   resp.service.service_registries[0].container_port #=> Integer
    #   resp.service.status #=> String
    #   resp.service.desired_count #=> Integer
    #   resp.service.running_count #=> Integer
    #   resp.service.pending_count #=> Integer
    #   resp.service.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.capacity_provider_strategy #=> Array
    #   resp.service.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.capacity_provider_strategy[0].base #=> Integer
    #   resp.service.platform_version #=> String
    #   resp.service.platform_family #=> String
    #   resp.service.task_definition #=> String
    #   resp.service.deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.service.deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.service.deployment_configuration.alarms.alarm_names #=> Array
    #   resp.service.deployment_configuration.alarms.alarm_names[0] #=> String
    #   resp.service.deployment_configuration.alarms.rollback #=> Boolean
    #   resp.service.deployment_configuration.alarms.enable #=> Boolean
    #   resp.service.deployment_configuration.strategy #=> String, one of "ROLLING", "BLUE_GREEN"
    #   resp.service.deployment_configuration.bake_time_in_minutes #=> Integer
    #   resp.service.deployment_configuration.lifecycle_hooks #=> Array
    #   resp.service.deployment_configuration.lifecycle_hooks[0].hook_target_arn #=> String
    #   resp.service.deployment_configuration.lifecycle_hooks[0].role_arn #=> String
    #   resp.service.deployment_configuration.lifecycle_hooks[0].lifecycle_stages #=> Array
    #   resp.service.deployment_configuration.lifecycle_hooks[0].lifecycle_stages[0] #=> String, one of "RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"
    #   resp.service.task_sets #=> Array
    #   resp.service.task_sets[0].id #=> String
    #   resp.service.task_sets[0].task_set_arn #=> String
    #   resp.service.task_sets[0].service_arn #=> String
    #   resp.service.task_sets[0].cluster_arn #=> String
    #   resp.service.task_sets[0].started_by #=> String
    #   resp.service.task_sets[0].external_id #=> String
    #   resp.service.task_sets[0].status #=> String
    #   resp.service.task_sets[0].task_definition #=> String
    #   resp.service.task_sets[0].computed_desired_count #=> Integer
    #   resp.service.task_sets[0].pending_count #=> Integer
    #   resp.service.task_sets[0].running_count #=> Integer
    #   resp.service.task_sets[0].created_at #=> Time
    #   resp.service.task_sets[0].updated_at #=> Time
    #   resp.service.task_sets[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.task_sets[0].capacity_provider_strategy #=> Array
    #   resp.service.task_sets[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.task_sets[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.task_sets[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.service.task_sets[0].platform_version #=> String
    #   resp.service.task_sets[0].platform_family #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.task_sets[0].load_balancers #=> Array
    #   resp.service.task_sets[0].load_balancers[0].target_group_arn #=> String
    #   resp.service.task_sets[0].load_balancers[0].load_balancer_name #=> String
    #   resp.service.task_sets[0].load_balancers[0].container_name #=> String
    #   resp.service.task_sets[0].load_balancers[0].container_port #=> Integer
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.service.task_sets[0].service_registries #=> Array
    #   resp.service.task_sets[0].service_registries[0].registry_arn #=> String
    #   resp.service.task_sets[0].service_registries[0].port #=> Integer
    #   resp.service.task_sets[0].service_registries[0].container_name #=> String
    #   resp.service.task_sets[0].service_registries[0].container_port #=> Integer
    #   resp.service.task_sets[0].scale.value #=> Float
    #   resp.service.task_sets[0].scale.unit #=> String, one of "PERCENT"
    #   resp.service.task_sets[0].stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.service.task_sets[0].stability_status_at #=> Time
    #   resp.service.task_sets[0].tags #=> Array
    #   resp.service.task_sets[0].tags[0].key #=> String
    #   resp.service.task_sets[0].tags[0].value #=> String
    #   resp.service.task_sets[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.service.deployments #=> Array
    #   resp.service.deployments[0].id #=> String
    #   resp.service.deployments[0].status #=> String
    #   resp.service.deployments[0].task_definition #=> String
    #   resp.service.deployments[0].desired_count #=> Integer
    #   resp.service.deployments[0].pending_count #=> Integer
    #   resp.service.deployments[0].running_count #=> Integer
    #   resp.service.deployments[0].failed_tasks #=> Integer
    #   resp.service.deployments[0].created_at #=> Time
    #   resp.service.deployments[0].updated_at #=> Time
    #   resp.service.deployments[0].capacity_provider_strategy #=> Array
    #   resp.service.deployments[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.deployments[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.deployments[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.service.deployments[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.deployments[0].platform_version #=> String
    #   resp.service.deployments[0].platform_family #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.deployments[0].rollout_state #=> String, one of "COMPLETED", "FAILED", "IN_PROGRESS"
    #   resp.service.deployments[0].rollout_state_reason #=> String
    #   resp.service.deployments[0].service_connect_configuration.enabled #=> Boolean
    #   resp.service.deployments[0].service_connect_configuration.namespace #=> String
    #   resp.service.deployments[0].service_connect_configuration.services #=> Array
    #   resp.service.deployments[0].service_connect_configuration.services[0].port_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].discovery_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases #=> Array
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].port #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].dns_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.value.exact #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].ingress_port_override #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].timeout.idle_timeout_seconds #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].timeout.per_request_timeout_seconds #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.issuer_certificate_authority.aws_pca_authority_arn #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.kms_key #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.role_arn #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.options #=> Hash
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.options["String"] #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options #=> Array
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options[0].name #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options[0].value_from #=> String
    #   resp.service.deployments[0].service_connect_resources #=> Array
    #   resp.service.deployments[0].service_connect_resources[0].discovery_name #=> String
    #   resp.service.deployments[0].service_connect_resources[0].discovery_arn #=> String
    #   resp.service.deployments[0].volume_configurations #=> Array
    #   resp.service.deployments[0].volume_configurations[0].name #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.encrypted #=> Boolean
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.kms_key_id #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.volume_type #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.size_in_gi_b #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.snapshot_id #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.volume_initialization_rate #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.iops #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.throughput #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications #=> Array
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].resource_type #=> String, one of "volume"
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags #=> Array
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].key #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].value #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.role_arn #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.filesystem_type #=> String, one of "ext3", "ext4", "xfs", "ntfs"
    #   resp.service.deployments[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations #=> Array
    #   resp.service.deployments[0].vpc_lattice_configurations[0].role_arn #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations[0].target_group_arn #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations[0].port_name #=> String
    #   resp.service.role_arn #=> String
    #   resp.service.events #=> Array
    #   resp.service.events[0].id #=> String
    #   resp.service.events[0].created_at #=> Time
    #   resp.service.events[0].message #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.placement_constraints #=> Array
    #   resp.service.placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.service.placement_constraints[0].expression #=> String
    #   resp.service.placement_strategy #=> Array
    #   resp.service.placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.service.placement_strategy[0].field #=> String
    #   resp.service.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.health_check_grace_period_seconds #=> Integer
    #   resp.service.scheduling_strategy #=> String, one of "REPLICA", "DAEMON"
    #   resp.service.deployment_controller.type #=> String, one of "ECS", "CODE_DEPLOY", "EXTERNAL"
    #   resp.service.tags #=> Array
    #   resp.service.tags[0].key #=> String
    #   resp.service.tags[0].value #=> String
    #   resp.service.created_by #=> String
    #   resp.service.enable_ecs_managed_tags #=> Boolean
    #   resp.service.propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.service.enable_execute_command #=> Boolean
    #   resp.service.availability_zone_rebalancing #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # Deletes one or more task definitions.
    #
    # You must deregister a task definition revision before you delete it.
    # For more information, see [DeregisterTaskDefinition][1].
    #
    # When you delete a task definition revision, it is immediately
    # transitions from the `INACTIVE` to `DELETE_IN_PROGRESS`. Existing
    # tasks and services that reference a `DELETE_IN_PROGRESS` task
    # definition revision continue to run without disruption. Existing
    # services that reference a `DELETE_IN_PROGRESS` task definition
    # revision can still scale up or down by modifying the service's
    # desired count.
    #
    # You can't use a `DELETE_IN_PROGRESS` task definition revision to run
    # new tasks or create new services. You also can't update an existing
    # service to reference a `DELETE_IN_PROGRESS` task definition revision.
    #
    # A task definition revision will stay in `DELETE_IN_PROGRESS` status
    # until all the associated tasks and services have been terminated.
    #
    # When you delete all `INACTIVE` task definition revisions, the task
    # definition name is not displayed in the console and not returned in
    # the API. If a task definition revisions are in the
    # `DELETE_IN_PROGRESS` state, the task definition name is displayed in
    # the console and returned in the API. The task definition name is
    # retained by Amazon ECS and the revision is incremented the next time
    # you create a task definition with that name.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterTaskDefinition.html
    #
    # @option params [required, Array<String>] :task_definitions
    #   The `family` and `revision` (`family:revision`) or full Amazon
    #   Resource Name (ARN) of the task definition to delete. You must specify
    #   a `revision`.
    #
    #   You can specify up to 10 task definitions as a comma separated list.
    #
    # @return [Types::DeleteTaskDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTaskDefinitionsResponse#task_definitions #task_definitions} => Array&lt;Types::TaskDefinition&gt;
    #   * {Types::DeleteTaskDefinitionsResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To delete a task definition that has been deregistered
    #
    #   # This example deletes a specified deregistered task definition. 
    #
    #   resp = client.delete_task_definitions({
    #     task_definitions: [
    #       "Example-task-definition:1", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     task_definitions: [
    #       {
    #         container_definitions: [
    #           {
    #             name: "wave", 
    #             command: [
    #               "apt-get update; apt-get install stress; while true; do stress --cpu $(( RANDOM % 4 )) -t $(( RANDOM % 10 )); done", 
    #             ], 
    #             cpu: 50, 
    #             entry_point: [
    #               "bash", 
    #               "-c", 
    #             ], 
    #             environment: [
    #             ], 
    #             essential: true, 
    #             image: "public.ecr.aws/docker/library/ubuntu:latest", 
    #             memory: 100, 
    #             mount_points: [
    #             ], 
    #             port_mappings: [
    #             ], 
    #             volumes_from: [
    #             ], 
    #           }, 
    #         ], 
    #         family: "cpu-wave", 
    #         revision: 1, 
    #         status: "DELETE_IN_PROGRESS", 
    #         task_definition_arn: "arn:aws:ecs:us-east-1:012345678910:task-definition/Example-task-definition:1", 
    #         volumes: [
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task_definitions({
    #     task_definitions: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definitions #=> Array
    #   resp.task_definitions[0].task_definition_arn #=> String
    #   resp.task_definitions[0].container_definitions #=> Array
    #   resp.task_definitions[0].container_definitions[0].name #=> String
    #   resp.task_definitions[0].container_definitions[0].image #=> String
    #   resp.task_definitions[0].container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.task_definitions[0].container_definitions[0].cpu #=> Integer
    #   resp.task_definitions[0].container_definitions[0].memory #=> Integer
    #   resp.task_definitions[0].container_definitions[0].memory_reservation #=> Integer
    #   resp.task_definitions[0].container_definitions[0].links #=> Array
    #   resp.task_definitions[0].container_definitions[0].links[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].port_mappings #=> Array
    #   resp.task_definitions[0].container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.task_definitions[0].container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.task_definitions[0].container_definitions[0].port_mappings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task_definitions[0].container_definitions[0].port_mappings[0].name #=> String
    #   resp.task_definitions[0].container_definitions[0].port_mappings[0].app_protocol #=> String, one of "http", "http2", "grpc"
    #   resp.task_definitions[0].container_definitions[0].port_mappings[0].container_port_range #=> String
    #   resp.task_definitions[0].container_definitions[0].essential #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].restart_policy.enabled #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].restart_policy.ignored_exit_codes #=> Array
    #   resp.task_definitions[0].container_definitions[0].restart_policy.ignored_exit_codes[0] #=> Integer
    #   resp.task_definitions[0].container_definitions[0].restart_policy.restart_attempt_period #=> Integer
    #   resp.task_definitions[0].container_definitions[0].entry_point #=> Array
    #   resp.task_definitions[0].container_definitions[0].entry_point[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].command #=> Array
    #   resp.task_definitions[0].container_definitions[0].command[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].environment #=> Array
    #   resp.task_definitions[0].container_definitions[0].environment[0].name #=> String
    #   resp.task_definitions[0].container_definitions[0].environment[0].value #=> String
    #   resp.task_definitions[0].container_definitions[0].environment_files #=> Array
    #   resp.task_definitions[0].container_definitions[0].environment_files[0].value #=> String
    #   resp.task_definitions[0].container_definitions[0].environment_files[0].type #=> String, one of "s3"
    #   resp.task_definitions[0].container_definitions[0].mount_points #=> Array
    #   resp.task_definitions[0].container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.task_definitions[0].container_definitions[0].mount_points[0].container_path #=> String
    #   resp.task_definitions[0].container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].volumes_from #=> Array
    #   resp.task_definitions[0].container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.task_definitions[0].container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.capabilities.add #=> Array
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.capabilities.add[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.capabilities.drop #=> Array
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.capabilities.drop[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.devices #=> Array
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.devices[0].permissions #=> Array
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of "read", "write", "mknod"
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.tmpfs #=> Array
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.max_swap #=> Integer
    #   resp.task_definitions[0].container_definitions[0].linux_parameters.swappiness #=> Integer
    #   resp.task_definitions[0].container_definitions[0].secrets #=> Array
    #   resp.task_definitions[0].container_definitions[0].secrets[0].name #=> String
    #   resp.task_definitions[0].container_definitions[0].secrets[0].value_from #=> String
    #   resp.task_definitions[0].container_definitions[0].depends_on #=> Array
    #   resp.task_definitions[0].container_definitions[0].depends_on[0].container_name #=> String
    #   resp.task_definitions[0].container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.task_definitions[0].container_definitions[0].start_timeout #=> Integer
    #   resp.task_definitions[0].container_definitions[0].stop_timeout #=> Integer
    #   resp.task_definitions[0].container_definitions[0].version_consistency #=> String, one of "enabled", "disabled"
    #   resp.task_definitions[0].container_definitions[0].hostname #=> String
    #   resp.task_definitions[0].container_definitions[0].user #=> String
    #   resp.task_definitions[0].container_definitions[0].working_directory #=> String
    #   resp.task_definitions[0].container_definitions[0].disable_networking #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].privileged #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].dns_servers #=> Array
    #   resp.task_definitions[0].container_definitions[0].dns_servers[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].dns_search_domains #=> Array
    #   resp.task_definitions[0].container_definitions[0].dns_search_domains[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].extra_hosts #=> Array
    #   resp.task_definitions[0].container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.task_definitions[0].container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.task_definitions[0].container_definitions[0].docker_security_options #=> Array
    #   resp.task_definitions[0].container_definitions[0].docker_security_options[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].interactive #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.task_definitions[0].container_definitions[0].docker_labels #=> Hash
    #   resp.task_definitions[0].container_definitions[0].docker_labels["String"] #=> String
    #   resp.task_definitions[0].container_definitions[0].ulimits #=> Array
    #   resp.task_definitions[0].container_definitions[0].ulimits[0].name #=> String, one of "core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"
    #   resp.task_definitions[0].container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.task_definitions[0].container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.task_definitions[0].container_definitions[0].log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.task_definitions[0].container_definitions[0].log_configuration.options #=> Hash
    #   resp.task_definitions[0].container_definitions[0].log_configuration.options["String"] #=> String
    #   resp.task_definitions[0].container_definitions[0].log_configuration.secret_options #=> Array
    #   resp.task_definitions[0].container_definitions[0].log_configuration.secret_options[0].name #=> String
    #   resp.task_definitions[0].container_definitions[0].log_configuration.secret_options[0].value_from #=> String
    #   resp.task_definitions[0].container_definitions[0].health_check.command #=> Array
    #   resp.task_definitions[0].container_definitions[0].health_check.command[0] #=> String
    #   resp.task_definitions[0].container_definitions[0].health_check.interval #=> Integer
    #   resp.task_definitions[0].container_definitions[0].health_check.timeout #=> Integer
    #   resp.task_definitions[0].container_definitions[0].health_check.retries #=> Integer
    #   resp.task_definitions[0].container_definitions[0].health_check.start_period #=> Integer
    #   resp.task_definitions[0].container_definitions[0].system_controls #=> Array
    #   resp.task_definitions[0].container_definitions[0].system_controls[0].namespace #=> String
    #   resp.task_definitions[0].container_definitions[0].system_controls[0].value #=> String
    #   resp.task_definitions[0].container_definitions[0].resource_requirements #=> Array
    #   resp.task_definitions[0].container_definitions[0].resource_requirements[0].value #=> String
    #   resp.task_definitions[0].container_definitions[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.task_definitions[0].container_definitions[0].firelens_configuration.type #=> String, one of "fluentd", "fluentbit"
    #   resp.task_definitions[0].container_definitions[0].firelens_configuration.options #=> Hash
    #   resp.task_definitions[0].container_definitions[0].firelens_configuration.options["String"] #=> String
    #   resp.task_definitions[0].container_definitions[0].credential_specs #=> Array
    #   resp.task_definitions[0].container_definitions[0].credential_specs[0] #=> String
    #   resp.task_definitions[0].family #=> String
    #   resp.task_definitions[0].task_role_arn #=> String
    #   resp.task_definitions[0].execution_role_arn #=> String
    #   resp.task_definitions[0].network_mode #=> String, one of "bridge", "host", "awsvpc", "none"
    #   resp.task_definitions[0].revision #=> Integer
    #   resp.task_definitions[0].volumes #=> Array
    #   resp.task_definitions[0].volumes[0].name #=> String
    #   resp.task_definitions[0].volumes[0].host.source_path #=> String
    #   resp.task_definitions[0].volumes[0].docker_volume_configuration.scope #=> String, one of "task", "shared"
    #   resp.task_definitions[0].volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.task_definitions[0].volumes[0].docker_volume_configuration.driver #=> String
    #   resp.task_definitions[0].volumes[0].docker_volume_configuration.driver_opts #=> Hash
    #   resp.task_definitions[0].volumes[0].docker_volume_configuration.driver_opts["String"] #=> String
    #   resp.task_definitions[0].volumes[0].docker_volume_configuration.labels #=> Hash
    #   resp.task_definitions[0].volumes[0].docker_volume_configuration.labels["String"] #=> String
    #   resp.task_definitions[0].volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.task_definitions[0].volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.task_definitions[0].volumes[0].efs_volume_configuration.transit_encryption #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_definitions[0].volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.task_definitions[0].volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.task_definitions[0].volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_definitions[0].volumes[0].fsx_windows_file_server_volume_configuration.file_system_id #=> String
    #   resp.task_definitions[0].volumes[0].fsx_windows_file_server_volume_configuration.root_directory #=> String
    #   resp.task_definitions[0].volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.credentials_parameter #=> String
    #   resp.task_definitions[0].volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.domain #=> String
    #   resp.task_definitions[0].volumes[0].configured_at_launch #=> Boolean
    #   resp.task_definitions[0].status #=> String, one of "ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"
    #   resp.task_definitions[0].requires_attributes #=> Array
    #   resp.task_definitions[0].requires_attributes[0].name #=> String
    #   resp.task_definitions[0].requires_attributes[0].value #=> String
    #   resp.task_definitions[0].requires_attributes[0].target_type #=> String, one of "container-instance"
    #   resp.task_definitions[0].requires_attributes[0].target_id #=> String
    #   resp.task_definitions[0].placement_constraints #=> Array
    #   resp.task_definitions[0].placement_constraints[0].type #=> String, one of "memberOf"
    #   resp.task_definitions[0].placement_constraints[0].expression #=> String
    #   resp.task_definitions[0].compatibilities #=> Array
    #   resp.task_definitions[0].compatibilities[0] #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_definitions[0].runtime_platform.cpu_architecture #=> String, one of "X86_64", "ARM64"
    #   resp.task_definitions[0].runtime_platform.operating_system_family #=> String, one of "WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"
    #   resp.task_definitions[0].requires_compatibilities #=> Array
    #   resp.task_definitions[0].requires_compatibilities[0] #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_definitions[0].cpu #=> String
    #   resp.task_definitions[0].memory #=> String
    #   resp.task_definitions[0].inference_accelerators #=> Array
    #   resp.task_definitions[0].inference_accelerators[0].device_name #=> String
    #   resp.task_definitions[0].inference_accelerators[0].device_type #=> String
    #   resp.task_definitions[0].pid_mode #=> String, one of "host", "task"
    #   resp.task_definitions[0].ipc_mode #=> String, one of "host", "task", "none"
    #   resp.task_definitions[0].proxy_configuration.type #=> String, one of "APPMESH"
    #   resp.task_definitions[0].proxy_configuration.container_name #=> String
    #   resp.task_definitions[0].proxy_configuration.properties #=> Array
    #   resp.task_definitions[0].proxy_configuration.properties[0].name #=> String
    #   resp.task_definitions[0].proxy_configuration.properties[0].value #=> String
    #   resp.task_definitions[0].registered_at #=> Time
    #   resp.task_definitions[0].deregistered_at #=> Time
    #   resp.task_definitions[0].registered_by #=> String
    #   resp.task_definitions[0].ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.task_definitions[0].enable_fault_injection #=> Boolean
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteTaskDefinitions AWS API Documentation
    #
    # @overload delete_task_definitions(params = {})
    # @param [Hash] params ({})
    def delete_task_definitions(params = {}, options = {})
      req = build_request(:delete_task_definitions, params)
      req.send_request(options)
    end

    # Deletes a specified task set within a service. This is used when a
    # service uses the `EXTERNAL` deployment controller type. For more
    # information, see [Amazon ECS deployment types][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service that the task set found in to delete.
    #
    # @option params [required, String] :service
    #   The short name or full Amazon Resource Name (ARN) of the service that
    #   hosts the task set to delete.
    #
    # @option params [required, String] :task_set
    #   The task set ID or full Amazon Resource Name (ARN) of the task set to
    #   delete.
    #
    # @option params [Boolean] :force
    #   If `true`, you can delete a task set even if it hasn't been scaled
    #   down to zero.
    #
    # @return [Types::DeleteTaskSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTaskSetResponse#task_set #task_set} => Types::TaskSet
    #
    #
    # @example Example: To delete a task set within a service that uses the EXTERNAL deployment controller type
    #
    #   # This example deletes a task set and uses the force flag to force deletion if it hasn't scaled to zero.
    #
    #   resp = client.delete_task_set({
    #     cluster: "MyCluster", 
    #     force: true, 
    #     service: "MyService", 
    #     task_set: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_set: {
    #       computed_desired_count: 0, 
    #       created_at: Time.parse(1557130260.276), 
    #       id: "ecs-svc/1234567890123456789", 
    #       launch_type: "EC2", 
    #       load_balancers: [
    #       ], 
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           assign_public_ip: "DISABLED", 
    #           security_groups: [
    #             "sg-12345678", 
    #           ], 
    #           subnets: [
    #             "subnet-12345678", 
    #           ], 
    #         }, 
    #       }, 
    #       pending_count: 0, 
    #       running_count: 0, 
    #       scale: {
    #         value: 0, 
    #         unit: "PERCENT", 
    #       }, 
    #       service_registries: [
    #       ], 
    #       stability_status: "STABILIZING", 
    #       stability_status_at: Time.parse(1557130290.707), 
    #       status: "DRAINING", 
    #       task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/sample-fargate:2", 
    #       task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #       updated_at: Time.parse(1557130290.707), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task_set({
    #     cluster: "String", # required
    #     service: "String", # required
    #     task_set: "String", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.task_set.id #=> String
    #   resp.task_set.task_set_arn #=> String
    #   resp.task_set.service_arn #=> String
    #   resp.task_set.cluster_arn #=> String
    #   resp.task_set.started_by #=> String
    #   resp.task_set.external_id #=> String
    #   resp.task_set.status #=> String
    #   resp.task_set.task_definition #=> String
    #   resp.task_set.computed_desired_count #=> Integer
    #   resp.task_set.pending_count #=> Integer
    #   resp.task_set.running_count #=> Integer
    #   resp.task_set.created_at #=> Time
    #   resp.task_set.updated_at #=> Time
    #   resp.task_set.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_set.capacity_provider_strategy #=> Array
    #   resp.task_set.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.task_set.capacity_provider_strategy[0].weight #=> Integer
    #   resp.task_set.capacity_provider_strategy[0].base #=> Integer
    #   resp.task_set.platform_version #=> String
    #   resp.task_set.platform_family #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.task_set.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.task_set.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_set.load_balancers #=> Array
    #   resp.task_set.load_balancers[0].target_group_arn #=> String
    #   resp.task_set.load_balancers[0].load_balancer_name #=> String
    #   resp.task_set.load_balancers[0].container_name #=> String
    #   resp.task_set.load_balancers[0].container_port #=> Integer
    #   resp.task_set.load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.task_set.service_registries #=> Array
    #   resp.task_set.service_registries[0].registry_arn #=> String
    #   resp.task_set.service_registries[0].port #=> Integer
    #   resp.task_set.service_registries[0].container_name #=> String
    #   resp.task_set.service_registries[0].container_port #=> Integer
    #   resp.task_set.scale.value #=> Float
    #   resp.task_set.scale.unit #=> String, one of "PERCENT"
    #   resp.task_set.stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.task_set.stability_status_at #=> Time
    #   resp.task_set.tags #=> Array
    #   resp.task_set.tags[0].key #=> String
    #   resp.task_set.tags[0].value #=> String
    #   resp.task_set.fargate_ephemeral_storage.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeleteTaskSet AWS API Documentation
    #
    # @overload delete_task_set(params = {})
    # @param [Hash] params ({})
    def delete_task_set(params = {}, options = {})
      req = build_request(:delete_task_set, params)
      req.send_request(options)
    end

    # Deregisters an Amazon ECS container instance from the specified
    # cluster. This instance is no longer available to run tasks.
    #
    # If you intend to use the container instance for some other purpose
    # after deregistration, we recommend that you stop all of the tasks
    # running on the container instance before deregistration. That prevents
    # any orphaned tasks from consuming resources.
    #
    # Deregistering a container instance removes the instance from a
    # cluster, but it doesn't terminate the EC2 instance. If you are
    # finished using the instance, be sure to terminate it in the Amazon EC2
    # console to stop billing.
    #
    # <note markdown="1"> If you terminate a running container instance, Amazon ECS
    # automatically deregisters the instance from your cluster (stopped
    # container instances or instances with disconnected agents aren't
    # automatically deregistered when terminated).
    #
    #  </note>
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the container instance to deregister. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, String] :container_instance
    #   The container instance ID or full ARN of the container instance to
    #   deregister. For more information about the ARN format, see [Amazon
    #   Resource Name (ARN)][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids
    #
    # @option params [Boolean] :force
    #   Forces the container instance to be deregistered. If you have tasks
    #   running on the container instance when you deregister it with the
    #   `force` option, these tasks remain running until you terminate the
    #   instance or the tasks stop through some other means, but they're
    #   orphaned (no longer monitored or accounted for by Amazon ECS). If an
    #   orphaned task on your container instance is part of an Amazon ECS
    #   service, then the service scheduler starts another copy of that task,
    #   on a different container instance if possible.
    #
    #   Any containers in orphaned service tasks that are registered with a
    #   Classic Load Balancer or an Application Load Balancer target group are
    #   deregistered. They begin connection draining according to the settings
    #   on the load balancer or target group.
    #
    # @return [Types::DeregisterContainerInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterContainerInstanceResponse#container_instance #container_instance} => Types::ContainerInstance
    #
    #
    # @example Example: To deregister a container instance from a cluster
    #
    #   # This example deregisters a container instance from the specified cluster in your default region. If there are still
    #   # tasks running on the container instance, you must either stop those tasks before deregistering, or use the force option.
    #
    #   resp = client.deregister_container_instance({
    #     cluster: "default", 
    #     container_instance: "container_instance_UUID", 
    #     force: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_container_instance({
    #     cluster: "String",
    #     container_instance: "String", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instance.container_instance_arn #=> String
    #   resp.container_instance.ec2_instance_id #=> String
    #   resp.container_instance.capacity_provider_name #=> String
    #   resp.container_instance.version #=> Integer
    #   resp.container_instance.version_info.agent_version #=> String
    #   resp.container_instance.version_info.agent_hash #=> String
    #   resp.container_instance.version_info.docker_version #=> String
    #   resp.container_instance.remaining_resources #=> Array
    #   resp.container_instance.remaining_resources[0].name #=> String
    #   resp.container_instance.remaining_resources[0].type #=> String
    #   resp.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.container_instance.remaining_resources[0].string_set_value #=> Array
    #   resp.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.registered_resources #=> Array
    #   resp.container_instance.registered_resources[0].name #=> String
    #   resp.container_instance.registered_resources[0].type #=> String
    #   resp.container_instance.registered_resources[0].double_value #=> Float
    #   resp.container_instance.registered_resources[0].long_value #=> Integer
    #   resp.container_instance.registered_resources[0].integer_value #=> Integer
    #   resp.container_instance.registered_resources[0].string_set_value #=> Array
    #   resp.container_instance.registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.status #=> String
    #   resp.container_instance.status_reason #=> String
    #   resp.container_instance.agent_connected #=> Boolean
    #   resp.container_instance.running_tasks_count #=> Integer
    #   resp.container_instance.pending_tasks_count #=> Integer
    #   resp.container_instance.agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instance.attributes #=> Array
    #   resp.container_instance.attributes[0].name #=> String
    #   resp.container_instance.attributes[0].value #=> String
    #   resp.container_instance.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instance.attributes[0].target_id #=> String
    #   resp.container_instance.registered_at #=> Time
    #   resp.container_instance.attachments #=> Array
    #   resp.container_instance.attachments[0].id #=> String
    #   resp.container_instance.attachments[0].type #=> String
    #   resp.container_instance.attachments[0].status #=> String
    #   resp.container_instance.attachments[0].details #=> Array
    #   resp.container_instance.attachments[0].details[0].name #=> String
    #   resp.container_instance.attachments[0].details[0].value #=> String
    #   resp.container_instance.tags #=> Array
    #   resp.container_instance.tags[0].key #=> String
    #   resp.container_instance.tags[0].value #=> String
    #   resp.container_instance.health_status.overall_status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instance.health_status.details #=> Array
    #   resp.container_instance.health_status.details[0].type #=> String, one of "CONTAINER_RUNTIME"
    #   resp.container_instance.health_status.details[0].status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instance.health_status.details[0].last_updated #=> Time
    #   resp.container_instance.health_status.details[0].last_status_change #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterContainerInstance AWS API Documentation
    #
    # @overload deregister_container_instance(params = {})
    # @param [Hash] params ({})
    def deregister_container_instance(params = {}, options = {})
      req = build_request(:deregister_container_instance, params)
      req.send_request(options)
    end

    # Deregisters the specified task definition by family and revision. Upon
    # deregistration, the task definition is marked as `INACTIVE`. Existing
    # tasks and services that reference an `INACTIVE` task definition
    # continue to run without disruption. Existing services that reference
    # an `INACTIVE` task definition can still scale up or down by modifying
    # the service's desired count. If you want to delete a task definition
    # revision, you must first deregister the task definition revision.
    #
    # You can't use an `INACTIVE` task definition to run new tasks or
    # create new services, and you can't update an existing service to
    # reference an `INACTIVE` task definition. However, there may be up to a
    # 10-minute window following deregistration where these restrictions
    # have not yet taken effect.
    #
    # <note markdown="1"> At this time, `INACTIVE` task definitions remain discoverable in your
    # account indefinitely. However, this behavior is subject to change in
    # the future. We don't recommend that you rely on `INACTIVE` task
    # definitions persisting beyond the lifecycle of any associated tasks
    # and services.
    #
    #  </note>
    #
    # You must deregister a task definition revision before you delete it.
    # For more information, see [DeleteTaskDefinitions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteTaskDefinitions.html
    #
    # @option params [required, String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full Amazon
    #   Resource Name (ARN) of the task definition to deregister. You must
    #   specify a `revision`.
    #
    # @return [Types::DeregisterTaskDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterTaskDefinitionResponse#task_definition #task_definition} => Types::TaskDefinition
    #
    #
    # @example Example: To deregister a revision of a task definition
    #
    #   # This example deregisters the first revision of the fargate-task task definition
    #
    #   resp = client.deregister_task_definition({
    #     task_definition: "fargate-task:1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition: {
    #       container_definitions: [
    #         {
    #           name: "nginx", 
    #           cpu: 256, 
    #           essential: true, 
    #           image: "public.ecr.aws/docker/library/nginx:latest", 
    #           memory: 128, 
    #           port_mappings: [
    #             {
    #               container_port: 80, 
    #               host_port: 80, 
    #               protocol: "tcp", 
    #             }, 
    #           ], 
    #         }, 
    #       ], 
    #       family: "fargate-task", 
    #       status: "INACTIVE", 
    #       task_definition_arn: "arn:aws:ecs:us-west-2:123456789012:task-definition/fargate-task:1", 
    #       volumes: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_task_definition({
    #     task_definition: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definition.task_definition_arn #=> String
    #   resp.task_definition.container_definitions #=> Array
    #   resp.task_definition.container_definitions[0].name #=> String
    #   resp.task_definition.container_definitions[0].image #=> String
    #   resp.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.task_definition.container_definitions[0].memory #=> Integer
    #   resp.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.task_definition.container_definitions[0].links #=> Array
    #   resp.task_definition.container_definitions[0].links[0] #=> String
    #   resp.task_definition.container_definitions[0].port_mappings #=> Array
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task_definition.container_definitions[0].port_mappings[0].name #=> String
    #   resp.task_definition.container_definitions[0].port_mappings[0].app_protocol #=> String, one of "http", "http2", "grpc"
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port_range #=> String
    #   resp.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.task_definition.container_definitions[0].restart_policy.enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].restart_policy.ignored_exit_codes #=> Array
    #   resp.task_definition.container_definitions[0].restart_policy.ignored_exit_codes[0] #=> Integer
    #   resp.task_definition.container_definitions[0].restart_policy.restart_attempt_period #=> Integer
    #   resp.task_definition.container_definitions[0].entry_point #=> Array
    #   resp.task_definition.container_definitions[0].entry_point[0] #=> String
    #   resp.task_definition.container_definitions[0].command #=> Array
    #   resp.task_definition.container_definitions[0].command[0] #=> String
    #   resp.task_definition.container_definitions[0].environment #=> Array
    #   resp.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.task_definition.container_definitions[0].environment_files #=> Array
    #   resp.task_definition.container_definitions[0].environment_files[0].value #=> String
    #   resp.task_definition.container_definitions[0].environment_files[0].type #=> String, one of "s3"
    #   resp.task_definition.container_definitions[0].mount_points #=> Array
    #   resp.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].volumes_from #=> Array
    #   resp.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of "read", "write", "mknod"
    #   resp.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.max_swap #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.swappiness #=> Integer
    #   resp.task_definition.container_definitions[0].secrets #=> Array
    #   resp.task_definition.container_definitions[0].secrets[0].name #=> String
    #   resp.task_definition.container_definitions[0].secrets[0].value_from #=> String
    #   resp.task_definition.container_definitions[0].depends_on #=> Array
    #   resp.task_definition.container_definitions[0].depends_on[0].container_name #=> String
    #   resp.task_definition.container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.task_definition.container_definitions[0].start_timeout #=> Integer
    #   resp.task_definition.container_definitions[0].stop_timeout #=> Integer
    #   resp.task_definition.container_definitions[0].version_consistency #=> String, one of "enabled", "disabled"
    #   resp.task_definition.container_definitions[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].user #=> String
    #   resp.task_definition.container_definitions[0].working_directory #=> String
    #   resp.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.task_definition.container_definitions[0].dns_servers #=> Array
    #   resp.task_definition.container_definitions[0].dns_servers[0] #=> String
    #   resp.task_definition.container_definitions[0].dns_search_domains #=> Array
    #   resp.task_definition.container_definitions[0].dns_search_domains[0] #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts #=> Array
    #   resp.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.task_definition.container_definitions[0].docker_security_options #=> Array
    #   resp.task_definition.container_definitions[0].docker_security_options[0] #=> String
    #   resp.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.task_definition.container_definitions[0].docker_labels #=> Hash
    #   resp.task_definition.container_definitions[0].docker_labels["String"] #=> String
    #   resp.task_definition.container_definitions[0].ulimits #=> Array
    #   resp.task_definition.container_definitions[0].ulimits[0].name #=> String, one of "core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"
    #   resp.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.task_definition.container_definitions[0].log_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].log_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options #=> Array
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options[0].name #=> String
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options[0].value_from #=> String
    #   resp.task_definition.container_definitions[0].health_check.command #=> Array
    #   resp.task_definition.container_definitions[0].health_check.command[0] #=> String
    #   resp.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.task_definition.container_definitions[0].system_controls #=> Array
    #   resp.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.task_definition.container_definitions[0].resource_requirements #=> Array
    #   resp.task_definition.container_definitions[0].resource_requirements[0].value #=> String
    #   resp.task_definition.container_definitions[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.task_definition.container_definitions[0].firelens_configuration.type #=> String, one of "fluentd", "fluentbit"
    #   resp.task_definition.container_definitions[0].firelens_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].firelens_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].credential_specs #=> Array
    #   resp.task_definition.container_definitions[0].credential_specs[0] #=> String
    #   resp.task_definition.family #=> String
    #   resp.task_definition.task_role_arn #=> String
    #   resp.task_definition.execution_role_arn #=> String
    #   resp.task_definition.network_mode #=> String, one of "bridge", "host", "awsvpc", "none"
    #   resp.task_definition.revision #=> Integer
    #   resp.task_definition.volumes #=> Array
    #   resp.task_definition.volumes[0].name #=> String
    #   resp.task_definition.volumes[0].host.source_path #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of "task", "shared"
    #   resp.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts["String"] #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels["String"] #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.transit_encryption #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_definition.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.task_definition.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.file_system_id #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.root_directory #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.credentials_parameter #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.domain #=> String
    #   resp.task_definition.volumes[0].configured_at_launch #=> Boolean
    #   resp.task_definition.status #=> String, one of "ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"
    #   resp.task_definition.requires_attributes #=> Array
    #   resp.task_definition.requires_attributes[0].name #=> String
    #   resp.task_definition.requires_attributes[0].value #=> String
    #   resp.task_definition.requires_attributes[0].target_type #=> String, one of "container-instance"
    #   resp.task_definition.requires_attributes[0].target_id #=> String
    #   resp.task_definition.placement_constraints #=> Array
    #   resp.task_definition.placement_constraints[0].type #=> String, one of "memberOf"
    #   resp.task_definition.placement_constraints[0].expression #=> String
    #   resp.task_definition.compatibilities #=> Array
    #   resp.task_definition.compatibilities[0] #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_definition.runtime_platform.cpu_architecture #=> String, one of "X86_64", "ARM64"
    #   resp.task_definition.runtime_platform.operating_system_family #=> String, one of "WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"
    #   resp.task_definition.requires_compatibilities #=> Array
    #   resp.task_definition.requires_compatibilities[0] #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_definition.cpu #=> String
    #   resp.task_definition.memory #=> String
    #   resp.task_definition.inference_accelerators #=> Array
    #   resp.task_definition.inference_accelerators[0].device_name #=> String
    #   resp.task_definition.inference_accelerators[0].device_type #=> String
    #   resp.task_definition.pid_mode #=> String, one of "host", "task"
    #   resp.task_definition.ipc_mode #=> String, one of "host", "task", "none"
    #   resp.task_definition.proxy_configuration.type #=> String, one of "APPMESH"
    #   resp.task_definition.proxy_configuration.container_name #=> String
    #   resp.task_definition.proxy_configuration.properties #=> Array
    #   resp.task_definition.proxy_configuration.properties[0].name #=> String
    #   resp.task_definition.proxy_configuration.properties[0].value #=> String
    #   resp.task_definition.registered_at #=> Time
    #   resp.task_definition.deregistered_at #=> Time
    #   resp.task_definition.registered_by #=> String
    #   resp.task_definition.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.task_definition.enable_fault_injection #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DeregisterTaskDefinition AWS API Documentation
    #
    # @overload deregister_task_definition(params = {})
    # @param [Hash] params ({})
    def deregister_task_definition(params = {}, options = {})
      req = build_request(:deregister_task_definition, params)
      req.send_request(options)
    end

    # Describes one or more of your capacity providers.
    #
    # @option params [Array<String>] :capacity_providers
    #   The short name or full Amazon Resource Name (ARN) of one or more
    #   capacity providers. Up to `100` capacity providers can be described in
    #   an action.
    #
    # @option params [Array<String>] :include
    #   Specifies whether or not you want to see the resource tags for the
    #   capacity provider. If `TAGS` is specified, the tags are included in
    #   the response. If this field is omitted, tags aren't included in the
    #   response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of account setting results returned by
    #   `DescribeCapacityProviders` in paginated output. When this parameter
    #   is used, `DescribeCapacityProviders` only returns `maxResults` results
    #   in a single page along with a `nextToken` response element. The
    #   remaining results of the initial request can be seen by sending
    #   another `DescribeCapacityProviders` request with the returned
    #   `nextToken` value. This value can be between 1 and 10. If this
    #   parameter is not used, then `DescribeCapacityProviders` returns up to
    #   10 results and a `nextToken` value if applicable.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeCapacityProviders` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @return [Types::DescribeCapacityProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCapacityProvidersResponse#capacity_providers #capacity_providers} => Array&lt;Types::CapacityProvider&gt;
    #   * {Types::DescribeCapacityProvidersResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #   * {Types::DescribeCapacityProvidersResponse#next_token #next_token} => String
    #
    #
    # @example Example: To describe all capacity providers
    #
    #   # This example retrieves details about all capacity providers. 
    #
    #   resp = client.describe_capacity_providers({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     capacity_providers: [
    #       {
    #         name: "MyCapacityProvider", 
    #         auto_scaling_group_provider: {
    #           auto_scaling_group_arn: "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:a1b2c3d4-5678-90ab-cdef-EXAMPLE11111:autoScalingGroupName/MyAutoScalingGroup", 
    #           managed_scaling: {
    #             maximum_scaling_step_size: 1000, 
    #             minimum_scaling_step_size: 1, 
    #             status: "ENABLED", 
    #             target_capacity: 100, 
    #           }, 
    #           managed_termination_protection: "ENABLED", 
    #         }, 
    #         capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/MyCapacityProvider", 
    #         status: "ACTIVE", 
    #         tags: [
    #         ], 
    #       }, 
    #       {
    #         name: "FARGATE", 
    #         capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/FARGATE", 
    #         status: "ACTIVE", 
    #         tags: [
    #         ], 
    #       }, 
    #       {
    #         name: "FARGATE_SPOT", 
    #         capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/FARGATE_SPOT", 
    #         status: "ACTIVE", 
    #         tags: [
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To describe a specific capacity provider
    #
    #   # This example retrieves details about the capacity provider MyCapacityProvider
    #
    #   resp = client.describe_capacity_providers({
    #     capacity_providers: [
    #       "MyCapacityProvider", 
    #     ], 
    #     include: [
    #       "TAGS", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     capacity_providers: [
    #       {
    #         name: "MyCapacityProvider", 
    #         auto_scaling_group_provider: {
    #           auto_scaling_group_arn: "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:a1b2c3d4-5678-90ab-cdef-EXAMPLE11111:autoScalingGroupName/MyAutoScalingGroup", 
    #           managed_scaling: {
    #             maximum_scaling_step_size: 1000, 
    #             minimum_scaling_step_size: 1, 
    #             status: "ENABLED", 
    #             target_capacity: 100, 
    #           }, 
    #           managed_termination_protection: "ENABLED", 
    #         }, 
    #         capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/MyCapacityProvider", 
    #         status: "ACTIVE", 
    #         tags: [
    #           {
    #             key: "environment", 
    #             value: "production", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_capacity_providers({
    #     capacity_providers: ["String"],
    #     include: ["TAGS"], # accepts TAGS
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_providers #=> Array
    #   resp.capacity_providers[0].capacity_provider_arn #=> String
    #   resp.capacity_providers[0].name #=> String
    #   resp.capacity_providers[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.capacity_providers[0].auto_scaling_group_provider.auto_scaling_group_arn #=> String
    #   resp.capacity_providers[0].auto_scaling_group_provider.managed_scaling.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_providers[0].auto_scaling_group_provider.managed_scaling.target_capacity #=> Integer
    #   resp.capacity_providers[0].auto_scaling_group_provider.managed_scaling.minimum_scaling_step_size #=> Integer
    #   resp.capacity_providers[0].auto_scaling_group_provider.managed_scaling.maximum_scaling_step_size #=> Integer
    #   resp.capacity_providers[0].auto_scaling_group_provider.managed_scaling.instance_warmup_period #=> Integer
    #   resp.capacity_providers[0].auto_scaling_group_provider.managed_termination_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_providers[0].auto_scaling_group_provider.managed_draining #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_providers[0].update_status #=> String, one of "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.capacity_providers[0].update_status_reason #=> String
    #   resp.capacity_providers[0].tags #=> Array
    #   resp.capacity_providers[0].tags[0].key #=> String
    #   resp.capacity_providers[0].tags[0].value #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeCapacityProviders AWS API Documentation
    #
    # @overload describe_capacity_providers(params = {})
    # @param [Hash] params ({})
    def describe_capacity_providers(params = {}, options = {})
      req = build_request(:describe_capacity_providers, params)
      req.send_request(options)
    end

    # Describes one or more of your clusters.
    #
    # For CLI examples, see [describe-clusters.rst][1] on GitHub.
    #
    #
    #
    # [1]: https://github.com/aws/aws-cli/blob/develop/awscli/examples/ecs/describe-clusters.rst
    #
    # @option params [Array<String>] :clusters
    #   A list of up to 100 cluster names or full cluster Amazon Resource Name
    #   (ARN) entries. If you do not specify a cluster, the default cluster is
    #   assumed.
    #
    # @option params [Array<String>] :include
    #   Determines whether to include additional information about the
    #   clusters in the response. If this field is omitted, this information
    #   isn't included.
    #
    #   If `ATTACHMENTS` is specified, the attachments for the container
    #   instances or tasks within the cluster are included, for example the
    #   capacity providers.
    #
    #   If `SETTINGS` is specified, the settings for the cluster are included.
    #
    #   If `CONFIGURATIONS` is specified, the configuration for the cluster is
    #   included.
    #
    #   If `STATISTICS` is specified, the task and service count is included,
    #   separated by launch type.
    #
    #   If `TAGS` is specified, the metadata tags associated with the cluster
    #   are included.
    #
    # @return [Types::DescribeClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClustersResponse#clusters #clusters} => Array&lt;Types::Cluster&gt;
    #   * {Types::DescribeClustersResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a cluster
    #
    #   # This example provides a description of the specified cluster in your default region.
    #
    #   resp = client.describe_clusters({
    #     clusters: [
    #       "default", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     clusters: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-east-1:aws_account_id:cluster/default", 
    #         cluster_name: "default", 
    #         status: "ACTIVE", 
    #       }, 
    #     ], 
    #     failures: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters({
    #     clusters: ["String"],
    #     include: ["ATTACHMENTS"], # accepts ATTACHMENTS, CONFIGURATIONS, SETTINGS, STATISTICS, TAGS
    #   })
    #
    # @example Response structure
    #
    #   resp.clusters #=> Array
    #   resp.clusters[0].cluster_arn #=> String
    #   resp.clusters[0].cluster_name #=> String
    #   resp.clusters[0].configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.clusters[0].configuration.execute_command_configuration.logging #=> String, one of "NONE", "DEFAULT", "OVERRIDE"
    #   resp.clusters[0].configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.clusters[0].configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.clusters[0].configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.clusters[0].configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.clusters[0].configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.clusters[0].configuration.managed_storage_configuration.kms_key_id #=> String
    #   resp.clusters[0].configuration.managed_storage_configuration.fargate_ephemeral_storage_kms_key_id #=> String
    #   resp.clusters[0].status #=> String
    #   resp.clusters[0].registered_container_instances_count #=> Integer
    #   resp.clusters[0].running_tasks_count #=> Integer
    #   resp.clusters[0].pending_tasks_count #=> Integer
    #   resp.clusters[0].active_services_count #=> Integer
    #   resp.clusters[0].statistics #=> Array
    #   resp.clusters[0].statistics[0].name #=> String
    #   resp.clusters[0].statistics[0].value #=> String
    #   resp.clusters[0].tags #=> Array
    #   resp.clusters[0].tags[0].key #=> String
    #   resp.clusters[0].tags[0].value #=> String
    #   resp.clusters[0].settings #=> Array
    #   resp.clusters[0].settings[0].name #=> String, one of "containerInsights"
    #   resp.clusters[0].settings[0].value #=> String
    #   resp.clusters[0].capacity_providers #=> Array
    #   resp.clusters[0].capacity_providers[0] #=> String
    #   resp.clusters[0].default_capacity_provider_strategy #=> Array
    #   resp.clusters[0].default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.clusters[0].default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.clusters[0].default_capacity_provider_strategy[0].base #=> Integer
    #   resp.clusters[0].attachments #=> Array
    #   resp.clusters[0].attachments[0].id #=> String
    #   resp.clusters[0].attachments[0].type #=> String
    #   resp.clusters[0].attachments[0].status #=> String
    #   resp.clusters[0].attachments[0].details #=> Array
    #   resp.clusters[0].attachments[0].details[0].name #=> String
    #   resp.clusters[0].attachments[0].details[0].value #=> String
    #   resp.clusters[0].attachments_status #=> String
    #   resp.clusters[0].service_connect_defaults.namespace #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeClusters AWS API Documentation
    #
    # @overload describe_clusters(params = {})
    # @param [Hash] params ({})
    def describe_clusters(params = {}, options = {})
      req = build_request(:describe_clusters, params)
      req.send_request(options)
    end

    # Describes one or more container instances. Returns metadata about each
    # container instance requested.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the container instances to describe. If you do not specify a
    #   cluster, the default cluster is assumed. This parameter is required if
    #   the container instance or container instances you are describing were
    #   launched in any cluster other than the default cluster.
    #
    # @option params [required, Array<String>] :container_instances
    #   A list of up to 100 container instance IDs or full Amazon Resource
    #   Name (ARN) entries.
    #
    # @option params [Array<String>] :include
    #   Specifies whether you want to see the resource tags for the container
    #   instance. If `TAGS` is specified, the tags are included in the
    #   response. If `CONTAINER_INSTANCE_HEALTH` is specified, the container
    #   instance health is included in the response. If this field is omitted,
    #   tags and container instance health status aren't included in the
    #   response.
    #
    # @return [Types::DescribeContainerInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContainerInstancesResponse#container_instances #container_instances} => Array&lt;Types::ContainerInstance&gt;
    #   * {Types::DescribeContainerInstancesResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe container instance
    #
    #   # This example provides a description of the specified container instance in your default region, using the container
    #   # instance UUID as an identifier.
    #
    #   resp = client.describe_container_instances({
    #     cluster: "default", 
    #     container_instances: [
    #       "f2756532-8f13-4d53-87c9-aed50dc94cd7", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_instances: [
    #       {
    #         agent_connected: true, 
    #         container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/default/f2756532-8f13-4d53-87c9-aed50dc94cd7", 
    #         ec2_instance_id: "i-807f3249", 
    #         pending_tasks_count: 0, 
    #         registered_resources: [
    #           {
    #             name: "CPU", 
    #             type: "INTEGER", 
    #             double_value: 0.0, 
    #             integer_value: 2048, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "MEMORY", 
    #             type: "INTEGER", 
    #             double_value: 0.0, 
    #             integer_value: 3768, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "PORTS", 
    #             type: "STRINGSET", 
    #             double_value: 0.0, 
    #             integer_value: 0, 
    #             long_value: 0, 
    #             string_set_value: [
    #               "2376", 
    #               "22", 
    #               "51678", 
    #               "2375", 
    #             ], 
    #           }, 
    #         ], 
    #         remaining_resources: [
    #           {
    #             name: "CPU", 
    #             type: "INTEGER", 
    #             double_value: 0.0, 
    #             integer_value: 1948, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "MEMORY", 
    #             type: "INTEGER", 
    #             double_value: 0.0, 
    #             integer_value: 3668, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "PORTS", 
    #             type: "STRINGSET", 
    #             double_value: 0.0, 
    #             integer_value: 0, 
    #             long_value: 0, 
    #             string_set_value: [
    #               "2376", 
    #               "22", 
    #               "80", 
    #               "51678", 
    #               "2375", 
    #             ], 
    #           }, 
    #         ], 
    #         running_tasks_count: 1, 
    #         status: "ACTIVE", 
    #       }, 
    #     ], 
    #     failures: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_container_instances({
    #     cluster: "String",
    #     container_instances: ["String"], # required
    #     include: ["TAGS"], # accepts TAGS, CONTAINER_INSTANCE_HEALTH
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instances #=> Array
    #   resp.container_instances[0].container_instance_arn #=> String
    #   resp.container_instances[0].ec2_instance_id #=> String
    #   resp.container_instances[0].capacity_provider_name #=> String
    #   resp.container_instances[0].version #=> Integer
    #   resp.container_instances[0].version_info.agent_version #=> String
    #   resp.container_instances[0].version_info.agent_hash #=> String
    #   resp.container_instances[0].version_info.docker_version #=> String
    #   resp.container_instances[0].remaining_resources #=> Array
    #   resp.container_instances[0].remaining_resources[0].name #=> String
    #   resp.container_instances[0].remaining_resources[0].type #=> String
    #   resp.container_instances[0].remaining_resources[0].double_value #=> Float
    #   resp.container_instances[0].remaining_resources[0].long_value #=> Integer
    #   resp.container_instances[0].remaining_resources[0].integer_value #=> Integer
    #   resp.container_instances[0].remaining_resources[0].string_set_value #=> Array
    #   resp.container_instances[0].remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instances[0].registered_resources #=> Array
    #   resp.container_instances[0].registered_resources[0].name #=> String
    #   resp.container_instances[0].registered_resources[0].type #=> String
    #   resp.container_instances[0].registered_resources[0].double_value #=> Float
    #   resp.container_instances[0].registered_resources[0].long_value #=> Integer
    #   resp.container_instances[0].registered_resources[0].integer_value #=> Integer
    #   resp.container_instances[0].registered_resources[0].string_set_value #=> Array
    #   resp.container_instances[0].registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instances[0].status #=> String
    #   resp.container_instances[0].status_reason #=> String
    #   resp.container_instances[0].agent_connected #=> Boolean
    #   resp.container_instances[0].running_tasks_count #=> Integer
    #   resp.container_instances[0].pending_tasks_count #=> Integer
    #   resp.container_instances[0].agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instances[0].attributes #=> Array
    #   resp.container_instances[0].attributes[0].name #=> String
    #   resp.container_instances[0].attributes[0].value #=> String
    #   resp.container_instances[0].attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instances[0].attributes[0].target_id #=> String
    #   resp.container_instances[0].registered_at #=> Time
    #   resp.container_instances[0].attachments #=> Array
    #   resp.container_instances[0].attachments[0].id #=> String
    #   resp.container_instances[0].attachments[0].type #=> String
    #   resp.container_instances[0].attachments[0].status #=> String
    #   resp.container_instances[0].attachments[0].details #=> Array
    #   resp.container_instances[0].attachments[0].details[0].name #=> String
    #   resp.container_instances[0].attachments[0].details[0].value #=> String
    #   resp.container_instances[0].tags #=> Array
    #   resp.container_instances[0].tags[0].key #=> String
    #   resp.container_instances[0].tags[0].value #=> String
    #   resp.container_instances[0].health_status.overall_status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instances[0].health_status.details #=> Array
    #   resp.container_instances[0].health_status.details[0].type #=> String, one of "CONTAINER_RUNTIME"
    #   resp.container_instances[0].health_status.details[0].status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instances[0].health_status.details[0].last_updated #=> Time
    #   resp.container_instances[0].health_status.details[0].last_status_change #=> Time
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeContainerInstances AWS API Documentation
    #
    # @overload describe_container_instances(params = {})
    # @param [Hash] params ({})
    def describe_container_instances(params = {}, options = {})
      req = build_request(:describe_container_instances, params)
      req.send_request(options)
    end

    # Describes one or more of your service deployments.
    #
    # A service deployment happens when you release a software update for
    # the service. For more information, see [View service history using
    # Amazon ECS service deployments][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-deployment.html
    #
    # @option params [required, Array<String>] :service_deployment_arns
    #   The ARN of the service deployment.
    #
    #   You can specify a maximum of 20 ARNs.
    #
    # @return [Types::DescribeServiceDeploymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceDeploymentsResponse#service_deployments #service_deployments} => Array&lt;Types::ServiceDeployment&gt;
    #   * {Types::DescribeServiceDeploymentsResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a service deployment 
    #
    #   # This example describes a service deployment for the service sd-example in the example cluster. 
    #
    #   resp = client.describe_service_deployments({
    #     service_deployment_arns: [
    #       "arn:aws:ecs:us-west-2:123456789012:service-deployment/example/sd-example/NCWGC2ZR-taawPAYrIaU5", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     service_deployments: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/example", 
    #         deployment_configuration: {
    #           deployment_circuit_breaker: {
    #             enable: false, 
    #             rollback: false, 
    #           }, 
    #           maximum_percent: 200, 
    #           minimum_healthy_percent: 100, 
    #         }, 
    #         service_arn: "arn:aws:ecs:us-west-2:123456789012:service/example/sd-example", 
    #         service_deployment_arn: "arn:aws:ecs:us-west-2:123456789012:service-deployment/example/sd-example/NCWGC2ZR-taawPAYrIaU5", 
    #         status: "PENDING", 
    #         target_service_revision: {
    #           arn: "arn:aws:ecs:us-west-2:123456789012:service-revision/example/sd-example/4980306466373577095", 
    #           pending_task_count: 0, 
    #           requested_task_count: 0, 
    #           running_task_count: 0, 
    #         }, 
    #         updated_at: Time.parse("2024-09-10T16:49:35.572000+00:00"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_deployments({
    #     service_deployment_arns: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_deployments #=> Array
    #   resp.service_deployments[0].service_deployment_arn #=> String
    #   resp.service_deployments[0].service_arn #=> String
    #   resp.service_deployments[0].cluster_arn #=> String
    #   resp.service_deployments[0].created_at #=> Time
    #   resp.service_deployments[0].started_at #=> Time
    #   resp.service_deployments[0].finished_at #=> Time
    #   resp.service_deployments[0].stopped_at #=> Time
    #   resp.service_deployments[0].updated_at #=> Time
    #   resp.service_deployments[0].source_service_revisions #=> Array
    #   resp.service_deployments[0].source_service_revisions[0].arn #=> String
    #   resp.service_deployments[0].source_service_revisions[0].requested_task_count #=> Integer
    #   resp.service_deployments[0].source_service_revisions[0].running_task_count #=> Integer
    #   resp.service_deployments[0].source_service_revisions[0].pending_task_count #=> Integer
    #   resp.service_deployments[0].target_service_revision.arn #=> String
    #   resp.service_deployments[0].target_service_revision.requested_task_count #=> Integer
    #   resp.service_deployments[0].target_service_revision.running_task_count #=> Integer
    #   resp.service_deployments[0].target_service_revision.pending_task_count #=> Integer
    #   resp.service_deployments[0].status #=> String, one of "PENDING", "SUCCESSFUL", "STOPPED", "STOP_REQUESTED", "IN_PROGRESS", "ROLLBACK_REQUESTED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_SUCCESSFUL", "ROLLBACK_FAILED"
    #   resp.service_deployments[0].status_reason #=> String
    #   resp.service_deployments[0].lifecycle_stage #=> String, one of "RECONCILE_SERVICE", "PRE_SCALE_UP", "SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT", "BAKE_TIME", "CLEAN_UP"
    #   resp.service_deployments[0].deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.service_deployments[0].deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.service_deployments[0].deployment_configuration.maximum_percent #=> Integer
    #   resp.service_deployments[0].deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.service_deployments[0].deployment_configuration.alarms.alarm_names #=> Array
    #   resp.service_deployments[0].deployment_configuration.alarms.alarm_names[0] #=> String
    #   resp.service_deployments[0].deployment_configuration.alarms.rollback #=> Boolean
    #   resp.service_deployments[0].deployment_configuration.alarms.enable #=> Boolean
    #   resp.service_deployments[0].deployment_configuration.strategy #=> String, one of "ROLLING", "BLUE_GREEN"
    #   resp.service_deployments[0].deployment_configuration.bake_time_in_minutes #=> Integer
    #   resp.service_deployments[0].deployment_configuration.lifecycle_hooks #=> Array
    #   resp.service_deployments[0].deployment_configuration.lifecycle_hooks[0].hook_target_arn #=> String
    #   resp.service_deployments[0].deployment_configuration.lifecycle_hooks[0].role_arn #=> String
    #   resp.service_deployments[0].deployment_configuration.lifecycle_hooks[0].lifecycle_stages #=> Array
    #   resp.service_deployments[0].deployment_configuration.lifecycle_hooks[0].lifecycle_stages[0] #=> String, one of "RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"
    #   resp.service_deployments[0].rollback.reason #=> String
    #   resp.service_deployments[0].rollback.started_at #=> Time
    #   resp.service_deployments[0].rollback.service_revision_arn #=> String
    #   resp.service_deployments[0].deployment_circuit_breaker.status #=> String, one of "TRIGGERED", "MONITORING", "MONITORING_COMPLETE", "DISABLED"
    #   resp.service_deployments[0].deployment_circuit_breaker.failure_count #=> Integer
    #   resp.service_deployments[0].deployment_circuit_breaker.threshold #=> Integer
    #   resp.service_deployments[0].alarms.status #=> String, one of "TRIGGERED", "MONITORING", "MONITORING_COMPLETE", "DISABLED"
    #   resp.service_deployments[0].alarms.alarm_names #=> Array
    #   resp.service_deployments[0].alarms.alarm_names[0] #=> String
    #   resp.service_deployments[0].alarms.triggered_alarm_names #=> Array
    #   resp.service_deployments[0].alarms.triggered_alarm_names[0] #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServiceDeployments AWS API Documentation
    #
    # @overload describe_service_deployments(params = {})
    # @param [Hash] params ({})
    def describe_service_deployments(params = {}, options = {})
      req = build_request(:describe_service_deployments, params)
      req.send_request(options)
    end

    # Describes one or more service revisions.
    #
    # A service revision is a version of the service that includes the
    # values for the Amazon ECS resources (for example, task definition) and
    # the environment resources (for example, load balancers, subnets, and
    # security groups). For more information, see [Amazon ECS service
    # revisions][1].
    #
    # You can't describe a service revision that was created before October
    # 25, 2024.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-revision.html
    #
    # @option params [required, Array<String>] :service_revision_arns
    #   The ARN of the service revision.
    #
    #   You can specify a maximum of 20 ARNs.
    #
    #   You can call [ListServiceDeployments][1] to get the ARNs.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServiceDeployments.html
    #
    # @return [Types::DescribeServiceRevisionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServiceRevisionsResponse#service_revisions #service_revisions} => Array&lt;Types::ServiceRevision&gt;
    #   * {Types::DescribeServiceRevisionsResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a service revision 
    #
    #   # This example describes a service revision with the specified ARN
    #
    #   resp = client.describe_service_revisions({
    #     service_revision_arns: [
    #       "arn:aws:ecs:us-west-2:123456789012:service-revision/testc/sd1/4980306466373577095", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     service_revisions: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/example", 
    #         created_at: Time.parse("2024-09-10T16:49:26.388000+00:00"), 
    #         launch_type: "FARGATE", 
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             assign_public_ip: "ENABLED", 
    #             security_groups: [
    #               "sg-09605d60a6bc1b296", 
    #             ], 
    #             subnets: [
    #               "subnet-0a4040e73895f04e1", 
    #             ], 
    #           }, 
    #         }, 
    #         platform_family: "DockerLinux", 
    #         platform_version: "1.4.0", 
    #         service_arn: "arn:aws:ecs:us-west-2:123456789012:service/example/sd-example", 
    #         service_revision_arn: "arn:aws:ecs:us-west-2:123456789012:service-revision/example/sd-example/4980306466373577095", 
    #         task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/large-ngingx:1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service_revisions({
    #     service_revision_arns: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_revisions #=> Array
    #   resp.service_revisions[0].service_revision_arn #=> String
    #   resp.service_revisions[0].service_arn #=> String
    #   resp.service_revisions[0].cluster_arn #=> String
    #   resp.service_revisions[0].task_definition #=> String
    #   resp.service_revisions[0].capacity_provider_strategy #=> Array
    #   resp.service_revisions[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service_revisions[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.service_revisions[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.service_revisions[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service_revisions[0].platform_version #=> String
    #   resp.service_revisions[0].platform_family #=> String
    #   resp.service_revisions[0].load_balancers #=> Array
    #   resp.service_revisions[0].load_balancers[0].target_group_arn #=> String
    #   resp.service_revisions[0].load_balancers[0].load_balancer_name #=> String
    #   resp.service_revisions[0].load_balancers[0].container_name #=> String
    #   resp.service_revisions[0].load_balancers[0].container_port #=> Integer
    #   resp.service_revisions[0].load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.service_revisions[0].load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.service_revisions[0].load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.service_revisions[0].load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.service_revisions[0].service_registries #=> Array
    #   resp.service_revisions[0].service_registries[0].registry_arn #=> String
    #   resp.service_revisions[0].service_registries[0].port #=> Integer
    #   resp.service_revisions[0].service_registries[0].container_name #=> String
    #   resp.service_revisions[0].service_registries[0].container_port #=> Integer
    #   resp.service_revisions[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service_revisions[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service_revisions[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service_revisions[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service_revisions[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service_revisions[0].container_images #=> Array
    #   resp.service_revisions[0].container_images[0].container_name #=> String
    #   resp.service_revisions[0].container_images[0].image_digest #=> String
    #   resp.service_revisions[0].container_images[0].image #=> String
    #   resp.service_revisions[0].guard_duty_enabled #=> Boolean
    #   resp.service_revisions[0].service_connect_configuration.enabled #=> Boolean
    #   resp.service_revisions[0].service_connect_configuration.namespace #=> String
    #   resp.service_revisions[0].service_connect_configuration.services #=> Array
    #   resp.service_revisions[0].service_connect_configuration.services[0].port_name #=> String
    #   resp.service_revisions[0].service_connect_configuration.services[0].discovery_name #=> String
    #   resp.service_revisions[0].service_connect_configuration.services[0].client_aliases #=> Array
    #   resp.service_revisions[0].service_connect_configuration.services[0].client_aliases[0].port #=> Integer
    #   resp.service_revisions[0].service_connect_configuration.services[0].client_aliases[0].dns_name #=> String
    #   resp.service_revisions[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.name #=> String
    #   resp.service_revisions[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.value.exact #=> String
    #   resp.service_revisions[0].service_connect_configuration.services[0].ingress_port_override #=> Integer
    #   resp.service_revisions[0].service_connect_configuration.services[0].timeout.idle_timeout_seconds #=> Integer
    #   resp.service_revisions[0].service_connect_configuration.services[0].timeout.per_request_timeout_seconds #=> Integer
    #   resp.service_revisions[0].service_connect_configuration.services[0].tls.issuer_certificate_authority.aws_pca_authority_arn #=> String
    #   resp.service_revisions[0].service_connect_configuration.services[0].tls.kms_key #=> String
    #   resp.service_revisions[0].service_connect_configuration.services[0].tls.role_arn #=> String
    #   resp.service_revisions[0].service_connect_configuration.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.service_revisions[0].service_connect_configuration.log_configuration.options #=> Hash
    #   resp.service_revisions[0].service_connect_configuration.log_configuration.options["String"] #=> String
    #   resp.service_revisions[0].service_connect_configuration.log_configuration.secret_options #=> Array
    #   resp.service_revisions[0].service_connect_configuration.log_configuration.secret_options[0].name #=> String
    #   resp.service_revisions[0].service_connect_configuration.log_configuration.secret_options[0].value_from #=> String
    #   resp.service_revisions[0].volume_configurations #=> Array
    #   resp.service_revisions[0].volume_configurations[0].name #=> String
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.encrypted #=> Boolean
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.kms_key_id #=> String
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.volume_type #=> String
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.size_in_gi_b #=> Integer
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.snapshot_id #=> String
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.volume_initialization_rate #=> Integer
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.iops #=> Integer
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.throughput #=> Integer
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.tag_specifications #=> Array
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].resource_type #=> String, one of "volume"
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags #=> Array
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].key #=> String
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].value #=> String
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.role_arn #=> String
    #   resp.service_revisions[0].volume_configurations[0].managed_ebs_volume.filesystem_type #=> String, one of "ext3", "ext4", "xfs", "ntfs"
    #   resp.service_revisions[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.service_revisions[0].created_at #=> Time
    #   resp.service_revisions[0].vpc_lattice_configurations #=> Array
    #   resp.service_revisions[0].vpc_lattice_configurations[0].role_arn #=> String
    #   resp.service_revisions[0].vpc_lattice_configurations[0].target_group_arn #=> String
    #   resp.service_revisions[0].vpc_lattice_configurations[0].port_name #=> String
    #   resp.service_revisions[0].resolved_configuration.load_balancers #=> Array
    #   resp.service_revisions[0].resolved_configuration.load_balancers[0].target_group_arn #=> String
    #   resp.service_revisions[0].resolved_configuration.load_balancers[0].production_listener_rule #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServiceRevisions AWS API Documentation
    #
    # @overload describe_service_revisions(params = {})
    # @param [Hash] params ({})
    def describe_service_revisions(params = {}, options = {})
      req = build_request(:describe_service_revisions, params)
      req.send_request(options)
    end

    # Describes the specified services running in your cluster.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN)the cluster that
    #   hosts the service to describe. If you do not specify a cluster, the
    #   default cluster is assumed. This parameter is required if the service
    #   or services you are describing were launched in any cluster other than
    #   the default cluster.
    #
    # @option params [required, Array<String>] :services
    #   A list of services to describe. You may specify up to 10 services to
    #   describe in a single operation.
    #
    # @option params [Array<String>] :include
    #   Determines whether you want to see the resource tags for the service.
    #   If `TAGS` is specified, the tags are included in the response. If this
    #   field is omitted, tags aren't included in the response.
    #
    # @return [Types::DescribeServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeServicesResponse#services #services} => Array&lt;Types::Service&gt;
    #   * {Types::DescribeServicesResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a service
    #
    #   # This example provides descriptive information about the service named ``ecs-simple-service``.
    #
    #   resp = client.describe_services({
    #     services: [
    #       "ecs-simple-service", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     services: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default", 
    #         created_at: Time.parse("2016-08-29T16:25:52.130Z"), 
    #         deployment_configuration: {
    #           maximum_percent: 200, 
    #           minimum_healthy_percent: 100, 
    #         }, 
    #         deployments: [
    #           {
    #             created_at: Time.parse("2016-08-29T16:25:52.130Z"), 
    #             desired_count: 1, 
    #             id: "ecs-svc/9223370564341623665", 
    #             pending_count: 0, 
    #             running_count: 0, 
    #             status: "PRIMARY", 
    #             task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #             updated_at: Time.parse("2016-08-29T16:25:52.130Z"), 
    #           }, 
    #         ], 
    #         desired_count: 1, 
    #         events: [
    #           {
    #             created_at: Time.parse("2016-08-29T16:25:58.520Z"), 
    #             id: "38c285e5-d335-4b68-8b15-e46dedc8e88d", 
    #             message: "(service ecs-simple-service) was unable to place a task because no container instance met all of its requirements. The closest matching (container-instance 3f4de1c5-ffdd-4954-af7e-75b4be0c8841) is already using a port required by your task. For more information, see the Troubleshooting section of the Amazon ECS Developer Guide.", # In this example, there is a service event that shows unavailable cluster resources.
    #           }, 
    #         ], 
    #         load_balancers: [
    #         ], 
    #         pending_count: 0, 
    #         running_count: 0, 
    #         service_arn: "arn:aws:ecs:us-east-1:012345678910:service/default/ecs-simple-service", 
    #         service_name: "ecs-simple-service", 
    #         status: "ACTIVE", 
    #         task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/default/hello_world:6", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_services({
    #     cluster: "String",
    #     services: ["String"], # required
    #     include: ["TAGS"], # accepts TAGS
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].service_arn #=> String
    #   resp.services[0].service_name #=> String
    #   resp.services[0].cluster_arn #=> String
    #   resp.services[0].load_balancers #=> Array
    #   resp.services[0].load_balancers[0].target_group_arn #=> String
    #   resp.services[0].load_balancers[0].load_balancer_name #=> String
    #   resp.services[0].load_balancers[0].container_name #=> String
    #   resp.services[0].load_balancers[0].container_port #=> Integer
    #   resp.services[0].load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.services[0].load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.services[0].load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.services[0].load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.services[0].service_registries #=> Array
    #   resp.services[0].service_registries[0].registry_arn #=> String
    #   resp.services[0].service_registries[0].port #=> Integer
    #   resp.services[0].service_registries[0].container_name #=> String
    #   resp.services[0].service_registries[0].container_port #=> Integer
    #   resp.services[0].status #=> String
    #   resp.services[0].desired_count #=> Integer
    #   resp.services[0].running_count #=> Integer
    #   resp.services[0].pending_count #=> Integer
    #   resp.services[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.services[0].capacity_provider_strategy #=> Array
    #   resp.services[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.services[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.services[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.services[0].platform_version #=> String
    #   resp.services[0].platform_family #=> String
    #   resp.services[0].task_definition #=> String
    #   resp.services[0].deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.services[0].deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.services[0].deployment_configuration.maximum_percent #=> Integer
    #   resp.services[0].deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.services[0].deployment_configuration.alarms.alarm_names #=> Array
    #   resp.services[0].deployment_configuration.alarms.alarm_names[0] #=> String
    #   resp.services[0].deployment_configuration.alarms.rollback #=> Boolean
    #   resp.services[0].deployment_configuration.alarms.enable #=> Boolean
    #   resp.services[0].deployment_configuration.strategy #=> String, one of "ROLLING", "BLUE_GREEN"
    #   resp.services[0].deployment_configuration.bake_time_in_minutes #=> Integer
    #   resp.services[0].deployment_configuration.lifecycle_hooks #=> Array
    #   resp.services[0].deployment_configuration.lifecycle_hooks[0].hook_target_arn #=> String
    #   resp.services[0].deployment_configuration.lifecycle_hooks[0].role_arn #=> String
    #   resp.services[0].deployment_configuration.lifecycle_hooks[0].lifecycle_stages #=> Array
    #   resp.services[0].deployment_configuration.lifecycle_hooks[0].lifecycle_stages[0] #=> String, one of "RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"
    #   resp.services[0].task_sets #=> Array
    #   resp.services[0].task_sets[0].id #=> String
    #   resp.services[0].task_sets[0].task_set_arn #=> String
    #   resp.services[0].task_sets[0].service_arn #=> String
    #   resp.services[0].task_sets[0].cluster_arn #=> String
    #   resp.services[0].task_sets[0].started_by #=> String
    #   resp.services[0].task_sets[0].external_id #=> String
    #   resp.services[0].task_sets[0].status #=> String
    #   resp.services[0].task_sets[0].task_definition #=> String
    #   resp.services[0].task_sets[0].computed_desired_count #=> Integer
    #   resp.services[0].task_sets[0].pending_count #=> Integer
    #   resp.services[0].task_sets[0].running_count #=> Integer
    #   resp.services[0].task_sets[0].created_at #=> Time
    #   resp.services[0].task_sets[0].updated_at #=> Time
    #   resp.services[0].task_sets[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.services[0].task_sets[0].capacity_provider_strategy #=> Array
    #   resp.services[0].task_sets[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.services[0].task_sets[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.services[0].task_sets[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.services[0].task_sets[0].platform_version #=> String
    #   resp.services[0].task_sets[0].platform_family #=> String
    #   resp.services[0].task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.services[0].task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.services[0].task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.services[0].task_sets[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.services[0].task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.services[0].task_sets[0].load_balancers #=> Array
    #   resp.services[0].task_sets[0].load_balancers[0].target_group_arn #=> String
    #   resp.services[0].task_sets[0].load_balancers[0].load_balancer_name #=> String
    #   resp.services[0].task_sets[0].load_balancers[0].container_name #=> String
    #   resp.services[0].task_sets[0].load_balancers[0].container_port #=> Integer
    #   resp.services[0].task_sets[0].load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.services[0].task_sets[0].load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.services[0].task_sets[0].load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.services[0].task_sets[0].load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.services[0].task_sets[0].service_registries #=> Array
    #   resp.services[0].task_sets[0].service_registries[0].registry_arn #=> String
    #   resp.services[0].task_sets[0].service_registries[0].port #=> Integer
    #   resp.services[0].task_sets[0].service_registries[0].container_name #=> String
    #   resp.services[0].task_sets[0].service_registries[0].container_port #=> Integer
    #   resp.services[0].task_sets[0].scale.value #=> Float
    #   resp.services[0].task_sets[0].scale.unit #=> String, one of "PERCENT"
    #   resp.services[0].task_sets[0].stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.services[0].task_sets[0].stability_status_at #=> Time
    #   resp.services[0].task_sets[0].tags #=> Array
    #   resp.services[0].task_sets[0].tags[0].key #=> String
    #   resp.services[0].task_sets[0].tags[0].value #=> String
    #   resp.services[0].task_sets[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.services[0].deployments #=> Array
    #   resp.services[0].deployments[0].id #=> String
    #   resp.services[0].deployments[0].status #=> String
    #   resp.services[0].deployments[0].task_definition #=> String
    #   resp.services[0].deployments[0].desired_count #=> Integer
    #   resp.services[0].deployments[0].pending_count #=> Integer
    #   resp.services[0].deployments[0].running_count #=> Integer
    #   resp.services[0].deployments[0].failed_tasks #=> Integer
    #   resp.services[0].deployments[0].created_at #=> Time
    #   resp.services[0].deployments[0].updated_at #=> Time
    #   resp.services[0].deployments[0].capacity_provider_strategy #=> Array
    #   resp.services[0].deployments[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.services[0].deployments[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.services[0].deployments[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.services[0].deployments[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.services[0].deployments[0].platform_version #=> String
    #   resp.services[0].deployments[0].platform_family #=> String
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.services[0].deployments[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.services[0].deployments[0].rollout_state #=> String, one of "COMPLETED", "FAILED", "IN_PROGRESS"
    #   resp.services[0].deployments[0].rollout_state_reason #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.enabled #=> Boolean
    #   resp.services[0].deployments[0].service_connect_configuration.namespace #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.services #=> Array
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].port_name #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].discovery_name #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].client_aliases #=> Array
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].client_aliases[0].port #=> Integer
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].client_aliases[0].dns_name #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.name #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.value.exact #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].ingress_port_override #=> Integer
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].timeout.idle_timeout_seconds #=> Integer
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].timeout.per_request_timeout_seconds #=> Integer
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].tls.issuer_certificate_authority.aws_pca_authority_arn #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].tls.kms_key #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.services[0].tls.role_arn #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.services[0].deployments[0].service_connect_configuration.log_configuration.options #=> Hash
    #   resp.services[0].deployments[0].service_connect_configuration.log_configuration.options["String"] #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.log_configuration.secret_options #=> Array
    #   resp.services[0].deployments[0].service_connect_configuration.log_configuration.secret_options[0].name #=> String
    #   resp.services[0].deployments[0].service_connect_configuration.log_configuration.secret_options[0].value_from #=> String
    #   resp.services[0].deployments[0].service_connect_resources #=> Array
    #   resp.services[0].deployments[0].service_connect_resources[0].discovery_name #=> String
    #   resp.services[0].deployments[0].service_connect_resources[0].discovery_arn #=> String
    #   resp.services[0].deployments[0].volume_configurations #=> Array
    #   resp.services[0].deployments[0].volume_configurations[0].name #=> String
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.encrypted #=> Boolean
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.kms_key_id #=> String
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.volume_type #=> String
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.size_in_gi_b #=> Integer
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.snapshot_id #=> String
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.volume_initialization_rate #=> Integer
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.iops #=> Integer
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.throughput #=> Integer
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications #=> Array
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].resource_type #=> String, one of "volume"
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags #=> Array
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].key #=> String
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].value #=> String
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.role_arn #=> String
    #   resp.services[0].deployments[0].volume_configurations[0].managed_ebs_volume.filesystem_type #=> String, one of "ext3", "ext4", "xfs", "ntfs"
    #   resp.services[0].deployments[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.services[0].deployments[0].vpc_lattice_configurations #=> Array
    #   resp.services[0].deployments[0].vpc_lattice_configurations[0].role_arn #=> String
    #   resp.services[0].deployments[0].vpc_lattice_configurations[0].target_group_arn #=> String
    #   resp.services[0].deployments[0].vpc_lattice_configurations[0].port_name #=> String
    #   resp.services[0].role_arn #=> String
    #   resp.services[0].events #=> Array
    #   resp.services[0].events[0].id #=> String
    #   resp.services[0].events[0].created_at #=> Time
    #   resp.services[0].events[0].message #=> String
    #   resp.services[0].created_at #=> Time
    #   resp.services[0].placement_constraints #=> Array
    #   resp.services[0].placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.services[0].placement_constraints[0].expression #=> String
    #   resp.services[0].placement_strategy #=> Array
    #   resp.services[0].placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.services[0].placement_strategy[0].field #=> String
    #   resp.services[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.services[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.services[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.services[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.services[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.services[0].health_check_grace_period_seconds #=> Integer
    #   resp.services[0].scheduling_strategy #=> String, one of "REPLICA", "DAEMON"
    #   resp.services[0].deployment_controller.type #=> String, one of "ECS", "CODE_DEPLOY", "EXTERNAL"
    #   resp.services[0].tags #=> Array
    #   resp.services[0].tags[0].key #=> String
    #   resp.services[0].tags[0].value #=> String
    #   resp.services[0].created_by #=> String
    #   resp.services[0].enable_ecs_managed_tags #=> Boolean
    #   resp.services[0].propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.services[0].enable_execute_command #=> Boolean
    #   resp.services[0].availability_zone_rebalancing #=> String, one of "ENABLED", "DISABLED"
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * services_inactive
    #   * services_stable
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeServices AWS API Documentation
    #
    # @overload describe_services(params = {})
    # @param [Hash] params ({})
    def describe_services(params = {}, options = {})
      req = build_request(:describe_services, params)
      req.send_request(options)
    end

    # Describes a task definition. You can specify a `family` and `revision`
    # to find information about a specific task definition, or you can
    # simply specify the family to find the latest `ACTIVE` revision in that
    # family.
    #
    # <note markdown="1"> You can only describe `INACTIVE` task definitions while an active task
    # or service references them.
    #
    #  </note>
    #
    # @option params [required, String] :task_definition
    #   The `family` for the latest `ACTIVE` revision, `family` and `revision`
    #   (`family:revision`) for a specific revision in the family, or full
    #   Amazon Resource Name (ARN) of the task definition to describe.
    #
    # @option params [Array<String>] :include
    #   Determines whether to see the resource tags for the task definition.
    #   If `TAGS` is specified, the tags are included in the response. If this
    #   field is omitted, tags aren't included in the response.
    #
    # @return [Types::DescribeTaskDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTaskDefinitionResponse#task_definition #task_definition} => Types::TaskDefinition
    #   * {Types::DescribeTaskDefinitionResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: To describe a task definition
    #
    #   # This example provides a description of the specified task definition.
    #
    #   resp = client.describe_task_definition({
    #     task_definition: "hello_world:8", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition: {
    #       container_definitions: [
    #         {
    #           name: "wordpress", 
    #           cpu: 10, 
    #           environment: [
    #           ], 
    #           essential: true, 
    #           image: "wordpress", 
    #           links: [
    #             "mysql", 
    #           ], 
    #           memory: 500, 
    #           mount_points: [
    #           ], 
    #           port_mappings: [
    #             {
    #               container_port: 80, 
    #               host_port: 80, 
    #             }, 
    #           ], 
    #           volumes_from: [
    #           ], 
    #         }, 
    #         {
    #           name: "mysql", 
    #           cpu: 10, 
    #           environment: [
    #             {
    #               name: "MYSQL_ROOT_PASSWORD", 
    #               value: "password", 
    #             }, 
    #           ], 
    #           essential: true, 
    #           image: "mysql", 
    #           memory: 500, 
    #           mount_points: [
    #           ], 
    #           port_mappings: [
    #           ], 
    #           volumes_from: [
    #           ], 
    #         }, 
    #       ], 
    #       family: "hello_world", 
    #       revision: 8, 
    #       task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/hello_world:8", 
    #       volumes: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task_definition({
    #     task_definition: "String", # required
    #     include: ["TAGS"], # accepts TAGS
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definition.task_definition_arn #=> String
    #   resp.task_definition.container_definitions #=> Array
    #   resp.task_definition.container_definitions[0].name #=> String
    #   resp.task_definition.container_definitions[0].image #=> String
    #   resp.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.task_definition.container_definitions[0].memory #=> Integer
    #   resp.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.task_definition.container_definitions[0].links #=> Array
    #   resp.task_definition.container_definitions[0].links[0] #=> String
    #   resp.task_definition.container_definitions[0].port_mappings #=> Array
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task_definition.container_definitions[0].port_mappings[0].name #=> String
    #   resp.task_definition.container_definitions[0].port_mappings[0].app_protocol #=> String, one of "http", "http2", "grpc"
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port_range #=> String
    #   resp.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.task_definition.container_definitions[0].restart_policy.enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].restart_policy.ignored_exit_codes #=> Array
    #   resp.task_definition.container_definitions[0].restart_policy.ignored_exit_codes[0] #=> Integer
    #   resp.task_definition.container_definitions[0].restart_policy.restart_attempt_period #=> Integer
    #   resp.task_definition.container_definitions[0].entry_point #=> Array
    #   resp.task_definition.container_definitions[0].entry_point[0] #=> String
    #   resp.task_definition.container_definitions[0].command #=> Array
    #   resp.task_definition.container_definitions[0].command[0] #=> String
    #   resp.task_definition.container_definitions[0].environment #=> Array
    #   resp.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.task_definition.container_definitions[0].environment_files #=> Array
    #   resp.task_definition.container_definitions[0].environment_files[0].value #=> String
    #   resp.task_definition.container_definitions[0].environment_files[0].type #=> String, one of "s3"
    #   resp.task_definition.container_definitions[0].mount_points #=> Array
    #   resp.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].volumes_from #=> Array
    #   resp.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of "read", "write", "mknod"
    #   resp.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.max_swap #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.swappiness #=> Integer
    #   resp.task_definition.container_definitions[0].secrets #=> Array
    #   resp.task_definition.container_definitions[0].secrets[0].name #=> String
    #   resp.task_definition.container_definitions[0].secrets[0].value_from #=> String
    #   resp.task_definition.container_definitions[0].depends_on #=> Array
    #   resp.task_definition.container_definitions[0].depends_on[0].container_name #=> String
    #   resp.task_definition.container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.task_definition.container_definitions[0].start_timeout #=> Integer
    #   resp.task_definition.container_definitions[0].stop_timeout #=> Integer
    #   resp.task_definition.container_definitions[0].version_consistency #=> String, one of "enabled", "disabled"
    #   resp.task_definition.container_definitions[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].user #=> String
    #   resp.task_definition.container_definitions[0].working_directory #=> String
    #   resp.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.task_definition.container_definitions[0].dns_servers #=> Array
    #   resp.task_definition.container_definitions[0].dns_servers[0] #=> String
    #   resp.task_definition.container_definitions[0].dns_search_domains #=> Array
    #   resp.task_definition.container_definitions[0].dns_search_domains[0] #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts #=> Array
    #   resp.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.task_definition.container_definitions[0].docker_security_options #=> Array
    #   resp.task_definition.container_definitions[0].docker_security_options[0] #=> String
    #   resp.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.task_definition.container_definitions[0].docker_labels #=> Hash
    #   resp.task_definition.container_definitions[0].docker_labels["String"] #=> String
    #   resp.task_definition.container_definitions[0].ulimits #=> Array
    #   resp.task_definition.container_definitions[0].ulimits[0].name #=> String, one of "core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"
    #   resp.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.task_definition.container_definitions[0].log_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].log_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options #=> Array
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options[0].name #=> String
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options[0].value_from #=> String
    #   resp.task_definition.container_definitions[0].health_check.command #=> Array
    #   resp.task_definition.container_definitions[0].health_check.command[0] #=> String
    #   resp.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.task_definition.container_definitions[0].system_controls #=> Array
    #   resp.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.task_definition.container_definitions[0].resource_requirements #=> Array
    #   resp.task_definition.container_definitions[0].resource_requirements[0].value #=> String
    #   resp.task_definition.container_definitions[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.task_definition.container_definitions[0].firelens_configuration.type #=> String, one of "fluentd", "fluentbit"
    #   resp.task_definition.container_definitions[0].firelens_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].firelens_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].credential_specs #=> Array
    #   resp.task_definition.container_definitions[0].credential_specs[0] #=> String
    #   resp.task_definition.family #=> String
    #   resp.task_definition.task_role_arn #=> String
    #   resp.task_definition.execution_role_arn #=> String
    #   resp.task_definition.network_mode #=> String, one of "bridge", "host", "awsvpc", "none"
    #   resp.task_definition.revision #=> Integer
    #   resp.task_definition.volumes #=> Array
    #   resp.task_definition.volumes[0].name #=> String
    #   resp.task_definition.volumes[0].host.source_path #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of "task", "shared"
    #   resp.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts["String"] #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels["String"] #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.transit_encryption #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_definition.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.task_definition.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.file_system_id #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.root_directory #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.credentials_parameter #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.domain #=> String
    #   resp.task_definition.volumes[0].configured_at_launch #=> Boolean
    #   resp.task_definition.status #=> String, one of "ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"
    #   resp.task_definition.requires_attributes #=> Array
    #   resp.task_definition.requires_attributes[0].name #=> String
    #   resp.task_definition.requires_attributes[0].value #=> String
    #   resp.task_definition.requires_attributes[0].target_type #=> String, one of "container-instance"
    #   resp.task_definition.requires_attributes[0].target_id #=> String
    #   resp.task_definition.placement_constraints #=> Array
    #   resp.task_definition.placement_constraints[0].type #=> String, one of "memberOf"
    #   resp.task_definition.placement_constraints[0].expression #=> String
    #   resp.task_definition.compatibilities #=> Array
    #   resp.task_definition.compatibilities[0] #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_definition.runtime_platform.cpu_architecture #=> String, one of "X86_64", "ARM64"
    #   resp.task_definition.runtime_platform.operating_system_family #=> String, one of "WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"
    #   resp.task_definition.requires_compatibilities #=> Array
    #   resp.task_definition.requires_compatibilities[0] #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_definition.cpu #=> String
    #   resp.task_definition.memory #=> String
    #   resp.task_definition.inference_accelerators #=> Array
    #   resp.task_definition.inference_accelerators[0].device_name #=> String
    #   resp.task_definition.inference_accelerators[0].device_type #=> String
    #   resp.task_definition.pid_mode #=> String, one of "host", "task"
    #   resp.task_definition.ipc_mode #=> String, one of "host", "task", "none"
    #   resp.task_definition.proxy_configuration.type #=> String, one of "APPMESH"
    #   resp.task_definition.proxy_configuration.container_name #=> String
    #   resp.task_definition.proxy_configuration.properties #=> Array
    #   resp.task_definition.proxy_configuration.properties[0].name #=> String
    #   resp.task_definition.proxy_configuration.properties[0].value #=> String
    #   resp.task_definition.registered_at #=> Time
    #   resp.task_definition.deregistered_at #=> Time
    #   resp.task_definition.registered_by #=> String
    #   resp.task_definition.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.task_definition.enable_fault_injection #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskDefinition AWS API Documentation
    #
    # @overload describe_task_definition(params = {})
    # @param [Hash] params ({})
    def describe_task_definition(params = {}, options = {})
      req = build_request(:describe_task_definition, params)
      req.send_request(options)
    end

    # Describes the task sets in the specified cluster and service. This is
    # used when a service uses the `EXTERNAL` deployment controller type.
    # For more information, see [Amazon ECS Deployment Types][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service that the task sets exist in.
    #
    # @option params [required, String] :service
    #   The short name or full Amazon Resource Name (ARN) of the service that
    #   the task sets exist in.
    #
    # @option params [Array<String>] :task_sets
    #   The ID or full Amazon Resource Name (ARN) of task sets to describe.
    #
    # @option params [Array<String>] :include
    #   Specifies whether to see the resource tags for the task set. If `TAGS`
    #   is specified, the tags are included in the response. If this field is
    #   omitted, tags aren't included in the response.
    #
    # @return [Types::DescribeTaskSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTaskSetsResponse#task_sets #task_sets} => Array&lt;Types::TaskSet&gt;
    #   * {Types::DescribeTaskSetsResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a task set 
    #
    #   # This example describes a task set in service MyService that uses an EXTERNAL deployment controller. 
    #
    #   resp = client.describe_task_sets({
    #     cluster: "MyCluster", 
    #     service: "MyService", 
    #     task_sets: [
    #       "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     task_sets: [
    #       {
    #         computed_desired_count: 0, 
    #         created_at: Time.parse(1557207715.195), 
    #         id: "ecs-svc/1234567890123456789", 
    #         launch_type: "EC2", 
    #         load_balancers: [
    #         ], 
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             assign_public_ip: "DISABLED", 
    #             security_groups: [
    #               "sg-1234431", 
    #             ], 
    #             subnets: [
    #               "subnet-12344321", 
    #             ], 
    #           }, 
    #         }, 
    #         pending_count: 0, 
    #         running_count: 0, 
    #         scale: {
    #           value: 0, 
    #           unit: "PERCENT", 
    #         }, 
    #         service_registries: [
    #         ], 
    #         stability_status: "STEADY_STATE", 
    #         stability_status_at: Time.parse(1557207740.014), 
    #         status: "ACTIVE", 
    #         task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/sample-fargate:2", 
    #         task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #         updated_at: Time.parse(1557207740.014), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task_sets({
    #     cluster: "String", # required
    #     service: "String", # required
    #     task_sets: ["String"],
    #     include: ["TAGS"], # accepts TAGS
    #   })
    #
    # @example Response structure
    #
    #   resp.task_sets #=> Array
    #   resp.task_sets[0].id #=> String
    #   resp.task_sets[0].task_set_arn #=> String
    #   resp.task_sets[0].service_arn #=> String
    #   resp.task_sets[0].cluster_arn #=> String
    #   resp.task_sets[0].started_by #=> String
    #   resp.task_sets[0].external_id #=> String
    #   resp.task_sets[0].status #=> String
    #   resp.task_sets[0].task_definition #=> String
    #   resp.task_sets[0].computed_desired_count #=> Integer
    #   resp.task_sets[0].pending_count #=> Integer
    #   resp.task_sets[0].running_count #=> Integer
    #   resp.task_sets[0].created_at #=> Time
    #   resp.task_sets[0].updated_at #=> Time
    #   resp.task_sets[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_sets[0].capacity_provider_strategy #=> Array
    #   resp.task_sets[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.task_sets[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.task_sets[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.task_sets[0].platform_version #=> String
    #   resp.task_sets[0].platform_family #=> String
    #   resp.task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.task_sets[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_sets[0].load_balancers #=> Array
    #   resp.task_sets[0].load_balancers[0].target_group_arn #=> String
    #   resp.task_sets[0].load_balancers[0].load_balancer_name #=> String
    #   resp.task_sets[0].load_balancers[0].container_name #=> String
    #   resp.task_sets[0].load_balancers[0].container_port #=> Integer
    #   resp.task_sets[0].load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.task_sets[0].load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.task_sets[0].load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.task_sets[0].load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.task_sets[0].service_registries #=> Array
    #   resp.task_sets[0].service_registries[0].registry_arn #=> String
    #   resp.task_sets[0].service_registries[0].port #=> Integer
    #   resp.task_sets[0].service_registries[0].container_name #=> String
    #   resp.task_sets[0].service_registries[0].container_port #=> Integer
    #   resp.task_sets[0].scale.value #=> Float
    #   resp.task_sets[0].scale.unit #=> String, one of "PERCENT"
    #   resp.task_sets[0].stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.task_sets[0].stability_status_at #=> Time
    #   resp.task_sets[0].tags #=> Array
    #   resp.task_sets[0].tags[0].key #=> String
    #   resp.task_sets[0].tags[0].value #=> String
    #   resp.task_sets[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTaskSets AWS API Documentation
    #
    # @overload describe_task_sets(params = {})
    # @param [Hash] params ({})
    def describe_task_sets(params = {}, options = {})
      req = build_request(:describe_task_sets, params)
      req.send_request(options)
    end

    # Describes a specified task or tasks.
    #
    # Currently, stopped tasks appear in the returned results for at least
    # one hour.
    #
    # If you have tasks with tags, and then delete the cluster, the tagged
    # tasks are returned in the response. If you create a new cluster with
    # the same name as the deleted cluster, the tagged tasks are not
    # included in the response.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the task or tasks to describe. If you do not specify a cluster,
    #   the default cluster is assumed. If you do not specify a value, the
    #   `default` cluster is used.
    #
    # @option params [required, Array<String>] :tasks
    #   A list of up to 100 task IDs or full ARN entries.
    #
    # @option params [Array<String>] :include
    #   Specifies whether you want to see the resource tags for the task. If
    #   `TAGS` is specified, the tags are included in the response. If this
    #   field is omitted, tags aren't included in the response.
    #
    # @return [Types::DescribeTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTasksResponse#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::DescribeTasksResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To describe a task
    #
    #   # This example provides a description of the specified task, using the task UUID as an identifier.
    #
    #   resp = client.describe_tasks({
    #     tasks: [
    #       "c5cba4eb-5dad-405e-96db-71ef8eefe6a8", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     tasks: [
    #       {
    #         cluster_arn: "arn:aws:ecs:<region>:<aws_account_id>:cluster/default", 
    #         container_instance_arn: "arn:aws:ecs:<region>:<aws_account_id>:container-instance/default/18f9eda5-27d7-4c19-b133-45adc516e8fb", 
    #         containers: [
    #           {
    #             name: "ecs-demo", 
    #             container_arn: "arn:aws:ecs:<region>:<aws_account_id>:container/7c01765b-c588-45b3-8290-4ba38bd6c5a6", 
    #             last_status: "RUNNING", 
    #             network_bindings: [
    #               {
    #                 bind_ip: "0.0.0.0", 
    #                 container_port: 80, 
    #                 host_port: 80, 
    #               }, 
    #             ], 
    #             task_arn: "arn:aws:ecs:<region>:<aws_account_id>:task/default/c5cba4eb-5dad-405e-96db-71ef8eefe6a8", 
    #           }, 
    #         ], 
    #         desired_status: "RUNNING", 
    #         last_status: "RUNNING", 
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "ecs-demo", 
    #             }, 
    #           ], 
    #         }, 
    #         started_by: "ecs-svc/9223370608528463088", 
    #         task_arn: "arn:aws:ecs:<region>:<aws_account_id>:task/default/c5cba4eb-5dad-405e-96db-71ef8eefe6a8", 
    #         task_definition_arn: "arn:aws:ecs:<region>:<aws_account_id>:task-definition/amazon-ecs-sample:1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tasks({
    #     cluster: "String",
    #     tasks: ["String"], # required
    #     include: ["TAGS"], # accepts TAGS
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].attachments #=> Array
    #   resp.tasks[0].attachments[0].id #=> String
    #   resp.tasks[0].attachments[0].type #=> String
    #   resp.tasks[0].attachments[0].status #=> String
    #   resp.tasks[0].attachments[0].details #=> Array
    #   resp.tasks[0].attachments[0].details[0].name #=> String
    #   resp.tasks[0].attachments[0].details[0].value #=> String
    #   resp.tasks[0].attributes #=> Array
    #   resp.tasks[0].attributes[0].name #=> String
    #   resp.tasks[0].attributes[0].value #=> String
    #   resp.tasks[0].attributes[0].target_type #=> String, one of "container-instance"
    #   resp.tasks[0].attributes[0].target_id #=> String
    #   resp.tasks[0].availability_zone #=> String
    #   resp.tasks[0].capacity_provider_name #=> String
    #   resp.tasks[0].cluster_arn #=> String
    #   resp.tasks[0].connectivity #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.tasks[0].connectivity_at #=> Time
    #   resp.tasks[0].container_instance_arn #=> String
    #   resp.tasks[0].containers #=> Array
    #   resp.tasks[0].containers[0].container_arn #=> String
    #   resp.tasks[0].containers[0].task_arn #=> String
    #   resp.tasks[0].containers[0].name #=> String
    #   resp.tasks[0].containers[0].image #=> String
    #   resp.tasks[0].containers[0].image_digest #=> String
    #   resp.tasks[0].containers[0].runtime_id #=> String
    #   resp.tasks[0].containers[0].last_status #=> String
    #   resp.tasks[0].containers[0].exit_code #=> Integer
    #   resp.tasks[0].containers[0].reason #=> String
    #   resp.tasks[0].containers[0].network_bindings #=> Array
    #   resp.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.tasks[0].containers[0].network_bindings[0].container_port_range #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].host_port_range #=> String
    #   resp.tasks[0].containers[0].network_interfaces #=> Array
    #   resp.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].private_ipv_4_address #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.tasks[0].containers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].containers[0].managed_agents #=> Array
    #   resp.tasks[0].containers[0].managed_agents[0].last_started_at #=> Time
    #   resp.tasks[0].containers[0].managed_agents[0].name #=> String, one of "ExecuteCommandAgent"
    #   resp.tasks[0].containers[0].managed_agents[0].reason #=> String
    #   resp.tasks[0].containers[0].managed_agents[0].last_status #=> String
    #   resp.tasks[0].containers[0].cpu #=> String
    #   resp.tasks[0].containers[0].memory #=> String
    #   resp.tasks[0].containers[0].memory_reservation #=> String
    #   resp.tasks[0].containers[0].gpu_ids #=> Array
    #   resp.tasks[0].containers[0].gpu_ids[0] #=> String
    #   resp.tasks[0].cpu #=> String
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].desired_status #=> String
    #   resp.tasks[0].enable_execute_command #=> Boolean
    #   resp.tasks[0].execution_stopped_at #=> Time
    #   resp.tasks[0].group #=> String
    #   resp.tasks[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].inference_accelerators #=> Array
    #   resp.tasks[0].inference_accelerators[0].device_name #=> String
    #   resp.tasks[0].inference_accelerators[0].device_type #=> String
    #   resp.tasks[0].last_status #=> String
    #   resp.tasks[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.tasks[0].memory #=> String
    #   resp.tasks[0].overrides.container_overrides #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].command #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment_files #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment_files[0].type #=> String, one of "s3"
    #   resp.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.tasks[0].overrides.cpu #=> String
    #   resp.tasks[0].overrides.inference_accelerator_overrides #=> Array
    #   resp.tasks[0].overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.tasks[0].overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.tasks[0].overrides.execution_role_arn #=> String
    #   resp.tasks[0].overrides.memory #=> String
    #   resp.tasks[0].overrides.task_role_arn #=> String
    #   resp.tasks[0].overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].platform_version #=> String
    #   resp.tasks[0].platform_family #=> String
    #   resp.tasks[0].pull_started_at #=> Time
    #   resp.tasks[0].pull_stopped_at #=> Time
    #   resp.tasks[0].started_at #=> Time
    #   resp.tasks[0].started_by #=> String
    #   resp.tasks[0].stop_code #=> String, one of "TaskFailedToStart", "EssentialContainerExited", "UserInitiated", "ServiceSchedulerInitiated", "SpotInterruption", "TerminationNotice"
    #   resp.tasks[0].stopped_at #=> Time
    #   resp.tasks[0].stopped_reason #=> String
    #   resp.tasks[0].stopping_at #=> Time
    #   resp.tasks[0].tags #=> Array
    #   resp.tasks[0].tags[0].key #=> String
    #   resp.tasks[0].tags[0].value #=> String
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].task_definition_arn #=> String
    #   resp.tasks[0].version #=> Integer
    #   resp.tasks[0].ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].fargate_ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * tasks_running
    #   * tasks_stopped
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DescribeTasks AWS API Documentation
    #
    # @overload describe_tasks(params = {})
    # @param [Hash] params ({})
    def describe_tasks(params = {}, options = {})
      req = build_request(:describe_tasks, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Returns an endpoint for the Amazon ECS agent to poll for updates.
    #
    # @option params [String] :container_instance
    #   The container instance ID or full ARN of the container instance. For
    #   more information about the ARN format, see [Amazon Resource Name
    #   (ARN)][1] in the *Amazon ECS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   the container instance belongs to.
    #
    # @return [Types::DiscoverPollEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DiscoverPollEndpointResponse#endpoint #endpoint} => String
    #   * {Types::DiscoverPollEndpointResponse#telemetry_endpoint #telemetry_endpoint} => String
    #   * {Types::DiscoverPollEndpointResponse#service_connect_endpoint #service_connect_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_poll_endpoint({
    #     container_instance: "String",
    #     cluster: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint #=> String
    #   resp.telemetry_endpoint #=> String
    #   resp.service_connect_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/DiscoverPollEndpoint AWS API Documentation
    #
    # @overload discover_poll_endpoint(params = {})
    # @param [Hash] params ({})
    def discover_poll_endpoint(params = {}, options = {})
      req = build_request(:discover_poll_endpoint, params)
      req.send_request(options)
    end

    # Runs a command remotely on a container within a task.
    #
    # If you use a condition key in your IAM policy to refine the conditions
    # for the policy statement, for example limit the actions to a specific
    # cluster, you receive an `AccessDeniedException` when there is a
    # mismatch between the condition key value and the corresponding
    # parameter value.
    #
    # For information about required permissions and considerations, see
    # [Using Amazon ECS Exec for debugging][1] in the *Amazon ECS Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html
    #
    # @option params [String] :cluster
    #   The Amazon Resource Name (ARN) or short name of the cluster the task
    #   is running in. If you do not specify a cluster, the default cluster is
    #   assumed.
    #
    # @option params [String] :container
    #   The name of the container to execute the command on. A container name
    #   only needs to be specified for tasks containing multiple containers.
    #
    # @option params [required, String] :command
    #   The command to run on the container.
    #
    # @option params [required, Boolean] :interactive
    #   Use this flag to run your command in interactive mode.
    #
    # @option params [required, String] :task
    #   The Amazon Resource Name (ARN) or ID of the task the container is part
    #   of.
    #
    # @return [Types::ExecuteCommandResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteCommandResponse#cluster_arn #cluster_arn} => String
    #   * {Types::ExecuteCommandResponse#container_arn #container_arn} => String
    #   * {Types::ExecuteCommandResponse#container_name #container_name} => String
    #   * {Types::ExecuteCommandResponse#interactive #interactive} => Boolean
    #   * {Types::ExecuteCommandResponse#session #session} => Types::Session
    #   * {Types::ExecuteCommandResponse#task_arn #task_arn} => String
    #
    #
    # @example Example: To run a command remotely on a container in a task
    #
    #   # This example runs an interactive /bin/sh command on a container MyContainer. 
    #
    #   resp = client.execute_command({
    #     cluster: "MyCluster", 
    #     command: "/bin/sh", 
    #     container: "MyContainer", 
    #     interactive: true, 
    #     task: "arn:aws:ecs:us-east-1:123456789012:task/MyCluster/d789e94343414c25b9f6bd59eEXAMPLE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_arn: "arn:aws:ecs:us-east-1:123456789012:cluster/MyCluster", 
    #     container_arn: "arn:aws:ecs:us-east-1:123456789012:container/MyCluster/d789e94343414c25b9f6bd59eEXAMPLE/43ba4b77-37f7-4a41-b923-69d4abEXAMPLE", 
    #     container_name: "MyContainer", 
    #     interactive: true, 
    #     session: {
    #       session_id: "ecs-execute-command-794nnsxobsg4p2hiur6gxu9a9e", 
    #       stream_url: "wss://ssmmessages.us-east-1.amazonaws.com/v1/data-channel/ecs-execute-command-794nnsxobsg4p2hiur6gxu9a9e?role=publish_subscribe&cell-number=AAEAAfiZG4oybxqsYj3Zhm15s4J0W1k7d9nxVRenNO8Kl5nzAAAAAGdbWGl479/y/4IrTWPadUic3eBrMu3vmB7aPvI+s12lbpDc142y1KZy", 
    #       token_value: "AAEAAcVb7ww10N9aNUI5Cl7K7DbHjbD2Ed4Mw6uaGYIc+UFNAAAAAGdbWGmMDaPbGfDkzrVIhyKEsc4CPT2hcToPU6yzlddPm7rRZvYQtpaAgsvQdjbCAd9OB6ohtDYfqZI9gzMqLKegXq0E+KbDcGPnQVODFNHmQxnR1BvC6vNcHqh6HAJuKnQD7RSYx/J5bfYNHj4hCYHuN0HNcueSDOOTRB/MBt5DBDY7Djv2uzs9FD0N1kcsGljZkZWLuPTVKHHyrU3zh0awfrFFC3RXvgaUCBnloIIvZeq2CjTesxn9JJS+3N4I0DVxfkHdWWBbBY/5+wH82JVTJpqN3yOAt74u/W7TvYBd7Xu2lQbvtpuAnEszl++bFG2ZoV3dfnmBkSnfD/qV1FJcEskbxUHKgmqe0Paouv4zwrQKNfWYfcv9xkWskqcExh07IeaxZz1tp/WegZ5D76sD6xYeuH+35TMNXMoY7oudLgxIXsA7b39ElM7orGi4Jy3W2tLyuNIvDoI2JI6ww4tYdEjYZnld9rhKwV9rDHk1Z8wjHMs++3BIkHrFQRsv7BFUWlZ9lyqO9GWlXeBe7dQtOeFNahBuJUE9z/xLHJn1x13VkdROKqUVHTJrT4sXAnI5roWiGPoQPVY7aHVYJnwjSxrPRWJBsgyHiVN3dAWTmeVMjp0VbOiJaLlpBI+AUWs8OeVRzuJSZ+1alETpK7Ukag7ma9K4lxq/N7IxYo2ub0cG/bvX42zQqdJAW+9St9sQ1QMaMvkSq1tdbLoOuY0QjN7JrkuKLFQA5bhs+o1YwItzIp7bNrzQ9Z9IN51qoGL5HDXQzi1kNFfYtAryhwt6BgtQU9Z0k+RpE+V5G+V68E0MMUvb313f0nRBYj1u5VKonWb708wADPbUU+s7nvbWuD5oLp1Z6A4iqI9Om0R4RrFASj/7fVY7r3raNXcIYA=", 
    #     }, 
    #     task_arn: "arn:aws:ecs:us-east-1:123456789012:task/MyCluster/d789e94343414c25b9f6bd59eEXAMPLE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_command({
    #     cluster: "String",
    #     container: "String",
    #     command: "String", # required
    #     interactive: false, # required
    #     task: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arn #=> String
    #   resp.container_arn #=> String
    #   resp.container_name #=> String
    #   resp.interactive #=> Boolean
    #   resp.session.session_id #=> String
    #   resp.session.stream_url #=> String
    #   resp.session.token_value #=> String
    #   resp.task_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ExecuteCommand AWS API Documentation
    #
    # @overload execute_command(params = {})
    # @param [Hash] params ({})
    def execute_command(params = {}, options = {})
      req = build_request(:execute_command, params)
      req.send_request(options)
    end

    # Retrieves the protection status of tasks in an Amazon ECS service.
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service that the task sets exist in.
    #
    # @option params [Array<String>] :tasks
    #   A list of up to 100 task IDs or full ARN entries.
    #
    # @return [Types::GetTaskProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaskProtectionResponse#protected_tasks #protected_tasks} => Array&lt;Types::ProtectedTask&gt;
    #   * {Types::GetTaskProtectionResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To get the protection status of a task
    #
    #   # In this example, we get the protection status for a single task.
    #
    #   resp = client.get_task_protection({
    #     cluster: "test-task-protection", 
    #     tasks: [
    #       "b8b1cf532d0e46ba8d44a40d1de16772", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     protected_tasks: [
    #       {
    #         expiration_date: Time.parse("2022-11-02T06:56:32.553Z"), 
    #         protection_enabled: true, 
    #         task_arn: "arn:aws:ecs:us-west-2:012345678910:task/default/b8b1cf532d0e46ba8d44a40d1de16772", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_task_protection({
    #     cluster: "String", # required
    #     tasks: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.protected_tasks #=> Array
    #   resp.protected_tasks[0].task_arn #=> String
    #   resp.protected_tasks[0].protection_enabled #=> Boolean
    #   resp.protected_tasks[0].expiration_date #=> Time
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/GetTaskProtection AWS API Documentation
    #
    # @overload get_task_protection(params = {})
    # @param [Hash] params ({})
    def get_task_protection(params = {}, options = {})
      req = build_request(:get_task_protection, params)
      req.send_request(options)
    end

    # Lists the account settings for a specified principal.
    #
    # @option params [String] :name
    #   The name of the account setting you want to list the settings for.
    #
    # @option params [String] :value
    #   The value of the account settings to filter results with. You must
    #   also specify an account setting name to use this parameter.
    #
    # @option params [String] :principal_arn
    #   The ARN of the principal, which can be a user, role, or the root user.
    #   If this field is omitted, the account settings are listed only for the
    #   authenticated user.
    #
    #   In order to use this parameter, you must be the root user, or the
    #   principal.
    #
    #   <note markdown="1"> Federated users assume the account setting of the root user and can't
    #   have explicit account settings set for them.
    #
    #    </note>
    #
    # @option params [Boolean] :effective_settings
    #   Determines whether to return the effective settings. If `true`, the
    #   account settings for the root user or the default setting for the
    #   `principalArn` are returned. If `false`, the account settings for the
    #   `principalArn` are returned if they're set. Otherwise, no account
    #   settings are returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListAccountSettings` request
    #   indicating that more results are available to fulfill the request and
    #   further calls will be needed. If `maxResults` was provided, it's
    #   possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of account setting results returned by
    #   `ListAccountSettings` in paginated output. When this parameter is
    #   used, `ListAccountSettings` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListAccountSettings` request with the returned `nextToken` value.
    #   This value can be between 1 and 10. If this parameter isn't used,
    #   then `ListAccountSettings` returns up to 10 results and a `nextToken`
    #   value if applicable.
    #
    # @return [Types::ListAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountSettingsResponse#settings #settings} => Array&lt;Types::Setting&gt;
    #   * {Types::ListAccountSettingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To view your effective account settings
    #
    #   # This example displays the effective account settings for your account.
    #
    #   resp = client.list_account_settings({
    #     effective_settings: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     settings: [
    #       {
    #         name: "containerInstanceLongArnFormat", 
    #         value: "disabled", 
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #       }, 
    #       {
    #         name: "serviceLongArnFormat", 
    #         value: "enabled", 
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #       }, 
    #       {
    #         name: "taskLongArnFormat", 
    #         value: "disabled", 
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To view the effective account settings for a specific IAM user or IAM role
    #
    #   # This example displays the effective account settings for the specified user or role.
    #
    #   resp = client.list_account_settings({
    #     effective_settings: true, 
    #     principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     settings: [
    #       {
    #         name: "containerInstanceLongArnFormat", 
    #         value: "disabled", 
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #       }, 
    #       {
    #         name: "serviceLongArnFormat", 
    #         value: "enabled", 
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #       }, 
    #       {
    #         name: "taskLongArnFormat", 
    #         value: "disabled", 
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_settings({
    #     name: "serviceLongArnFormat", # accepts serviceLongArnFormat, taskLongArnFormat, containerInstanceLongArnFormat, awsvpcTrunking, containerInsights, fargateFIPSMode, tagResourceAuthorization, fargateTaskRetirementWaitPeriod, guardDutyActivate, defaultLogDriverMode
    #     value: "String",
    #     principal_arn: "String",
    #     effective_settings: false,
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.settings #=> Array
    #   resp.settings[0].name #=> String, one of "serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"
    #   resp.settings[0].value #=> String
    #   resp.settings[0].principal_arn #=> String
    #   resp.settings[0].type #=> String, one of "user", "aws_managed"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAccountSettings AWS API Documentation
    #
    # @overload list_account_settings(params = {})
    # @param [Hash] params ({})
    def list_account_settings(params = {}, options = {})
      req = build_request(:list_account_settings, params)
      req.send_request(options)
    end

    # Lists the attributes for Amazon ECS resources within a specified
    # target type and cluster. When you specify a target type and cluster,
    # `ListAttributes` returns a list of attribute objects, one for each
    # attribute on each resource. You can filter the list of results to a
    # single attribute name to only return results that have that name. You
    # can also filter the results by attribute name and value. You can do
    # this, for example, to see which container instances in a cluster are
    # running a Linux AMI (`ecs.os-type=linux`).
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   list attributes. If you do not specify a cluster, the default cluster
    #   is assumed.
    #
    # @option params [required, String] :target_type
    #   The type of the target to list attributes with.
    #
    # @option params [String] :attribute_name
    #   The name of the attribute to filter the results with.
    #
    # @option params [String] :attribute_value
    #   The value of the attribute to filter results with. You must also
    #   specify an attribute name to use this parameter.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListAttributes` request
    #   indicating that more results are available to fulfill the request and
    #   further calls are needed. If `maxResults` was provided, it's possible
    #   the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of cluster results that `ListAttributes` returned
    #   in paginated output. When this parameter is used, `ListAttributes`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListAttributes` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter isn't used, then `ListAttributes` returns up to 100
    #   results and a `nextToken` value if applicable.
    #
    # @return [Types::ListAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttributesResponse#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #   * {Types::ListAttributesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list container instances that have a specific attribute
    #
    #   # This example lists attributes for a container instance with the attribute "stack" equal to the value "production".
    #
    #   resp = client.list_attributes({
    #     attribute_name: "stack", 
    #     attribute_value: "production", 
    #     cluster: "MyCluster", 
    #     target_type: "container-instance", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         name: "stack", 
    #         value: "production", 
    #         target_id: "arn:aws:ecs:us-west-2:123456789012:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attributes({
    #     cluster: "String",
    #     target_type: "container-instance", # required, accepts container-instance
    #     attribute_name: "String",
    #     attribute_value: "String",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.attributes[0].target_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListAttributes AWS API Documentation
    #
    # @overload list_attributes(params = {})
    # @param [Hash] params ({})
    def list_attributes(params = {}, options = {})
      req = build_request(:list_attributes, params)
      req.send_request(options)
    end

    # Returns a list of existing clusters.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListClusters` request
    #   indicating that more results are available to fulfill the request and
    #   further calls are needed. If `maxResults` was provided, it's possible
    #   the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of cluster results that `ListClusters` returned in
    #   paginated output. When this parameter is used, `ListClusters` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListClusters` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter isn't used, then `ListClusters` returns up to 100 results
    #   and a `nextToken` value if applicable.
    #
    # @return [Types::ListClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResponse#cluster_arns #cluster_arns} => Array&lt;String&gt;
    #   * {Types::ListClustersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list your available clusters
    #
    #   # This example lists all of your available clusters in your default region.
    #
    #   resp = client.list_clusters({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/test", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/default", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_arns #=> Array
    #   resp.cluster_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # Returns a list of container instances in a specified cluster. You can
    # filter the results of a `ListContainerInstances` operation with
    # cluster query language statements inside the `filter` parameter. For
    # more information, see [Cluster Query Language][1] in the *Amazon
    # Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the container instances to list. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [String] :filter
    #   You can filter the results of a `ListContainerInstances` operation
    #   with cluster query language statements. For more information, see
    #   [Cluster Query Language][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListContainerInstances` request
    #   indicating that more results are available to fulfill the request and
    #   further calls are needed. If `maxResults` was provided, it's possible
    #   the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of container instance results that
    #   `ListContainerInstances` returned in paginated output. When this
    #   parameter is used, `ListContainerInstances` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListContainerInstances` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter isn't
    #   used, then `ListContainerInstances` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #
    # @option params [String] :status
    #   Filters the container instances by status. For example, if you specify
    #   the `DRAINING` status, the results include only container instances
    #   that have been set to `DRAINING` using
    #   [UpdateContainerInstancesState][1]. If you don't specify this
    #   parameter, the default is to include container instances set to all
    #   states other than `INACTIVE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateContainerInstancesState.html
    #
    # @return [Types::ListContainerInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainerInstancesResponse#container_instance_arns #container_instance_arns} => Array&lt;String&gt;
    #   * {Types::ListContainerInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list your available container instances in a cluster
    #
    #   # This example lists all of your available container instances in the specified cluster in your default region.
    #
    #   resp = client.list_container_instances({
    #     cluster: "default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_instance_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/default/f6bbb147-5370-4ace-8c73-c7181ded911f", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/default/ffe3d344-77e2-476c-a4d0-bf560ad50acb", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_container_instances({
    #     cluster: "String",
    #     filter: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, DRAINING, REGISTERING, DEREGISTERING, REGISTRATION_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instance_arns #=> Array
    #   resp.container_instance_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListContainerInstances AWS API Documentation
    #
    # @overload list_container_instances(params = {})
    # @param [Hash] params ({})
    def list_container_instances(params = {}, options = {})
      req = build_request(:list_container_instances, params)
      req.send_request(options)
    end

    # This operation lists all the service deployments that meet the
    # specified filter criteria.
    #
    # A service deployment happens when you release a software update for
    # the service. You route traffic from the running service revisions to
    # the new service revison and control the number of running tasks.
    #
    # This API returns the values that you use for the request parameters in
    # [DescribeServiceRevisions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServiceRevisions.html
    #
    # @option params [required, String] :service
    #   The ARN or name of the service
    #
    # @option params [String] :cluster
    #   The cluster that hosts the service. This can either be the cluster
    #   name or ARN. Starting April 15, 2023, Amazon Web Services will not
    #   onboard new customers to Amazon Elastic Inference (EI), and will help
    #   current customers migrate their workloads to options that offer better
    #   price and performance. If you don't specify a cluster, `default` is
    #   used.
    #
    # @option params [Array<String>] :status
    #   An optional filter you can use to narrow the results. If you do not
    #   specify a status, then all status values are included in the result.
    #
    # @option params [Types::CreatedAt] :created_at
    #   An optional filter you can use to narrow the results by the service
    #   creation date. If you do not specify a value, the result includes all
    #   services created before the current time. The format is yyyy-MM-dd
    #   HH:mm:ss.SSSSSS.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListServiceDeployments` request
    #   indicating that more results are available to fulfill the request and
    #   further calls are needed. If you provided `maxResults`, it's possible
    #   the number of results is fewer than `maxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of service deployment results that
    #   `ListServiceDeployments` returned in paginated output. When this
    #   parameter is used, `ListServiceDeployments` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListServiceDeployments` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter isn't
    #   used, then `ListServiceDeployments` returns up to 20 results and a
    #   `nextToken` value if applicable.
    #
    # @return [Types::ListServiceDeploymentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceDeploymentsResponse#service_deployments #service_deployments} => Array&lt;Types::ServiceDeploymentBrief&gt;
    #   * {Types::ListServiceDeploymentsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list service deployments that meet the specified criteria
    #
    #   # This example lists all successful service deployments for the service "sd-example" in the cluster "example".
    #
    #   resp = client.list_service_deployments({
    #     cluster: "example", 
    #     service: "sd-example", 
    #     status: [
    #       "SUCCESSFUL", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service_deployments: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/example", 
    #         service_arn: "arn:aws:ecs:us-west-2:123456789012:service/example/sd-example", 
    #         service_deployment_arn: "arn:aws:ecs:us-west-2:123456789012:service-deployment/example/sd-example/NCWGC2ZR-taawPAYrIaU5", 
    #         status: "SUCCESSFUL", 
    #         target_service_revision_arn: "arn:aws:ecs:us-west-2:123456789012:service-revision/example/sd-example/4980306466373577095", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_deployments({
    #     service: "String", # required
    #     cluster: "String",
    #     status: ["PENDING"], # accepts PENDING, SUCCESSFUL, STOPPED, STOP_REQUESTED, IN_PROGRESS, ROLLBACK_REQUESTED, ROLLBACK_IN_PROGRESS, ROLLBACK_SUCCESSFUL, ROLLBACK_FAILED
    #     created_at: {
    #       before: Time.now,
    #       after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.service_deployments #=> Array
    #   resp.service_deployments[0].service_deployment_arn #=> String
    #   resp.service_deployments[0].service_arn #=> String
    #   resp.service_deployments[0].cluster_arn #=> String
    #   resp.service_deployments[0].started_at #=> Time
    #   resp.service_deployments[0].created_at #=> Time
    #   resp.service_deployments[0].finished_at #=> Time
    #   resp.service_deployments[0].target_service_revision_arn #=> String
    #   resp.service_deployments[0].status #=> String, one of "PENDING", "SUCCESSFUL", "STOPPED", "STOP_REQUESTED", "IN_PROGRESS", "ROLLBACK_REQUESTED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_SUCCESSFUL", "ROLLBACK_FAILED"
    #   resp.service_deployments[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServiceDeployments AWS API Documentation
    #
    # @overload list_service_deployments(params = {})
    # @param [Hash] params ({})
    def list_service_deployments(params = {}, options = {})
      req = build_request(:list_service_deployments, params)
      req.send_request(options)
    end

    # Returns a list of services. You can filter the results by cluster,
    # launch type, and scheduling strategy.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   use when filtering the `ListServices` results. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListServices` request
    #   indicating that more results are available to fulfill the request and
    #   further calls will be needed. If `maxResults` was provided, it is
    #   possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of service results that `ListServices` returned in
    #   paginated output. When this parameter is used, `ListServices` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListServices` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter isn't used, then `ListServices` returns up to 10 results
    #   and a `nextToken` value if applicable.
    #
    # @option params [String] :launch_type
    #   The launch type to use when filtering the `ListServices` results.
    #
    # @option params [String] :scheduling_strategy
    #   The scheduling strategy to use when filtering the `ListServices`
    #   results.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#service_arns #service_arns} => Array&lt;String&gt;
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the services in a cluster
    #
    #   # This example lists the services running in the default cluster for an account.
    #
    #   resp = client.list_services({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:service/default/my-http-service", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     cluster: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #     scheduling_strategy: "REPLICA", # accepts REPLICA, DAEMON
    #   })
    #
    # @example Response structure
    #
    #   resp.service_arns #=> Array
    #   resp.service_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # This operation lists all of the services that are associated with a
    # Cloud Map namespace. This list might include services in different
    # clusters. In contrast, `ListServices` can only list services in one
    # cluster at a time. If you need to filter the list of services in a
    # single cluster by various parameters, use `ListServices`. For more
    # information, see [Service Connect][1] in the *Amazon Elastic Container
    # Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @option params [required, String] :namespace
    #   The namespace name or full Amazon Resource Name (ARN) of the Cloud Map
    #   namespace to list the services in.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all of
    #   the clusters in the namespace. Tasks connect through a managed proxy
    #   container that collects logs and metrics for increased visibility.
    #   Only the tasks that Amazon ECS services create are supported with
    #   Service Connect. For more information, see [Service Connect][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @option params [String] :next_token
    #   The `nextToken` value that's returned from a
    #   `ListServicesByNamespace` request. It indicates that more results are
    #   available to fulfill the request and further calls are needed. If
    #   `maxResults` is returned, it is possible the number of results is less
    #   than `maxResults`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of service results that `ListServicesByNamespace`
    #   returns in paginated output. When this parameter is used,
    #   `ListServicesByNamespace` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListServicesByNamespace` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter isn't used,
    #   then `ListServicesByNamespace` returns up to 10 results and a
    #   `nextToken` value if applicable.
    #
    # @return [Types::ListServicesByNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesByNamespaceResponse#service_arns #service_arns} => Array&lt;String&gt;
    #   * {Types::ListServicesByNamespaceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services_by_namespace({
    #     namespace: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.service_arns #=> Array
    #   resp.service_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListServicesByNamespace AWS API Documentation
    #
    # @overload list_services_by_namespace(params = {})
    # @param [Hash] params ({})
    def list_services_by_namespace(params = {}, options = {})
      req = build_request(:list_services_by_namespace, params)
      req.send_request(options)
    end

    # List the tags for an Amazon ECS resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resources are Amazon ECS tasks,
    #   services, task definitions, clusters, and container instances.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: To list the tags for a cluster.
    #
    #   # This example lists the tags for the 'dev' cluster.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:ecs:region:aws_account_id:cluster/dev", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "team", 
    #         value: "dev", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of task definition families that are registered to your
    # account. This list includes task definition families that no longer
    # have any `ACTIVE` task definition revisions.
    #
    # You can filter out task definition families that don't contain any
    # `ACTIVE` task definition revisions by setting the `status` parameter
    # to `ACTIVE`. You can also filter the results with the `familyPrefix`
    # parameter.
    #
    # @option params [String] :family_prefix
    #   The `familyPrefix` is a string that's used to filter the results of
    #   `ListTaskDefinitionFamilies`. If you specify a `familyPrefix`, only
    #   task definition family names that begin with the `familyPrefix` string
    #   are returned.
    #
    # @option params [String] :status
    #   The task definition family status to filter the
    #   `ListTaskDefinitionFamilies` results with. By default, both `ACTIVE`
    #   and `INACTIVE` task definition families are listed. If this parameter
    #   is set to `ACTIVE`, only task definition families that have an
    #   `ACTIVE` task definition revision are returned. If this parameter is
    #   set to `INACTIVE`, only task definition families that do not have any
    #   `ACTIVE` task definition revisions are returned. If you paginate the
    #   resulting output, be sure to keep the `status` value constant in each
    #   subsequent request.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListTaskDefinitionFamilies`
    #   request indicating that more results are available to fulfill the
    #   request and further calls will be needed. If `maxResults` was
    #   provided, it is possible the number of results to be fewer than
    #   `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of task definition family results that
    #   `ListTaskDefinitionFamilies` returned in paginated output. When this
    #   parameter is used, `ListTaskDefinitions` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListTaskDefinitionFamilies` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter isn't used, then `ListTaskDefinitionFamilies` returns up to
    #   100 results and a `nextToken` value if applicable.
    #
    # @return [Types::ListTaskDefinitionFamiliesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskDefinitionFamiliesResponse#families #families} => Array&lt;String&gt;
    #   * {Types::ListTaskDefinitionFamiliesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list your registered task definition families
    #
    #   # This example lists all of your registered task definition families.
    #
    #   resp = client.list_task_definition_families({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     families: [
    #       "node-js-app", 
    #       "web-timer", 
    #       "hpcc", 
    #       "hpcc-c4-8xlarge", 
    #     ], 
    #   }
    #
    # @example Example: To filter your registered task definition families
    #
    #   # This example lists the task definition revisions that start with "hpcc".
    #
    #   resp = client.list_task_definition_families({
    #     family_prefix: "hpcc", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     families: [
    #       "hpcc", 
    #       "hpcc-c4-8xlarge", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_definition_families({
    #     family_prefix: "String",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE, ALL
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.families #=> Array
    #   resp.families[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitionFamilies AWS API Documentation
    #
    # @overload list_task_definition_families(params = {})
    # @param [Hash] params ({})
    def list_task_definition_families(params = {}, options = {})
      req = build_request(:list_task_definition_families, params)
      req.send_request(options)
    end

    # Returns a list of task definitions that are registered to your
    # account. You can filter the results by family name with the
    # `familyPrefix` parameter or by status with the `status` parameter.
    #
    # @option params [String] :family_prefix
    #   The full family name to filter the `ListTaskDefinitions` results with.
    #   Specifying a `familyPrefix` limits the listed task definitions to task
    #   definition revisions that belong to that family.
    #
    # @option params [String] :status
    #   The task definition status to filter the `ListTaskDefinitions` results
    #   with. By default, only `ACTIVE` task definitions are listed. By
    #   setting this parameter to `INACTIVE`, you can view task definitions
    #   that are `INACTIVE` as long as an active task or service still
    #   references them. If you paginate the resulting output, be sure to keep
    #   the `status` value constant in each subsequent request.
    #
    # @option params [String] :sort
    #   The order to sort the results in. Valid values are `ASC` and `DESC`.
    #   By default, (`ASC`) task definitions are listed lexicographically by
    #   family name and in ascending numerical order by revision so that the
    #   newest task definitions in a family are listed last. Setting this
    #   parameter to `DESC` reverses the sort order on family name and
    #   revision. This is so that the newest task definitions in a family are
    #   listed first.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListTaskDefinitions` request
    #   indicating that more results are available to fulfill the request and
    #   further calls will be needed. If `maxResults` was provided, it is
    #   possible the number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of task definition results that
    #   `ListTaskDefinitions` returned in paginated output. When this
    #   parameter is used, `ListTaskDefinitions` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListTaskDefinitions` request with the returned `nextToken`
    #   value. This value can be between 1 and 100. If this parameter isn't
    #   used, then `ListTaskDefinitions` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #
    # @return [Types::ListTaskDefinitionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskDefinitionsResponse#task_definition_arns #task_definition_arns} => Array&lt;String&gt;
    #   * {Types::ListTaskDefinitionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list your registered task definitions
    #
    #   # This example lists all of your registered task definitions.
    #
    #   resp = client.list_task_definitions({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep300:2", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6", 
    #     ], 
    #   }
    #
    # @example Example: To list the registered task definitions in a family
    #
    #   # This example lists the task definition revisions of a specified family.
    #
    #   resp = client.list_task_definitions({
    #     family_prefix: "wordpress", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5", 
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_definitions({
    #     family_prefix: "String",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE, DELETE_IN_PROGRESS
    #     sort: "ASC", # accepts ASC, DESC
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definition_arns #=> Array
    #   resp.task_definition_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTaskDefinitions AWS API Documentation
    #
    # @overload list_task_definitions(params = {})
    # @param [Hash] params ({})
    def list_task_definitions(params = {}, options = {})
      req = build_request(:list_task_definitions, params)
      req.send_request(options)
    end

    # Returns a list of tasks. You can filter the results by cluster, task
    # definition family, container instance, launch type, what IAM principal
    # started the task, or by the desired status of the task.
    #
    # Recently stopped tasks might appear in the returned results.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   use when filtering the `ListTasks` results. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [String] :container_instance
    #   The container instance ID or full ARN of the container instance to use
    #   when filtering the `ListTasks` results. Specifying a
    #   `containerInstance` limits the results to tasks that belong to that
    #   container instance.
    #
    # @option params [String] :family
    #   The name of the task definition family to use when filtering the
    #   `ListTasks` results. Specifying a `family` limits the results to tasks
    #   that belong to that family.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a `ListTasks` request indicating
    #   that more results are available to fulfill the request and further
    #   calls will be needed. If `maxResults` was provided, it's possible the
    #   number of results to be fewer than `maxResults`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of task results that `ListTasks` returned in
    #   paginated output. When this parameter is used, `ListTasks` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListTasks` request with the returned
    #   `nextToken` value. This value can be between 1 and 100. If this
    #   parameter isn't used, then `ListTasks` returns up to 100 results and
    #   a `nextToken` value if applicable.
    #
    # @option params [String] :started_by
    #   The `startedBy` value to filter the task results with. Specifying a
    #   `startedBy` value limits the results to tasks that were started with
    #   that value.
    #
    #   When you specify `startedBy` as the filter, it must be the only filter
    #   that you use.
    #
    # @option params [String] :service_name
    #   The name of the service to use when filtering the `ListTasks` results.
    #   Specifying a `serviceName` limits the results to tasks that belong to
    #   that service.
    #
    # @option params [String] :desired_status
    #   The task desired status to use when filtering the `ListTasks` results.
    #   Specifying a `desiredStatus` of `STOPPED` limits the results to tasks
    #   that Amazon ECS has set the desired status to `STOPPED`. This can be
    #   useful for debugging tasks that aren't starting properly or have died
    #   or finished. The default status filter is `RUNNING`, which shows tasks
    #   that Amazon ECS has set the desired status to `RUNNING`.
    #
    #   <note markdown="1"> Although you can filter results based on a desired status of
    #   `PENDING`, this doesn't return any results. Amazon ECS never sets the
    #   desired status of a task to that value (only a task's `lastStatus`
    #   may have a value of `PENDING`).
    #
    #    </note>
    #
    # @option params [String] :launch_type
    #   The launch type to use when filtering the `ListTasks` results.
    #
    # @return [Types::ListTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTasksResponse#task_arns #task_arns} => Array&lt;String&gt;
    #   * {Types::ListTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list the tasks in a cluster
    #
    #   # This example lists all of the tasks in a cluster.
    #
    #   resp = client.list_tasks({
    #     cluster: "default", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:task/default/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84", 
    #       "arn:aws:ecs:us-east-1:012345678910:task/default/6b809ef6-c67e-4467-921f-ee261c15a0a1", 
    #     ], 
    #   }
    #
    # @example Example: To list the tasks on a particular container instance
    #
    #   # This example lists the tasks of a specified container instance. Specifying a ``containerInstance`` value limits  the 
    #   # results  to  tasks  that belong to that container instance.
    #
    #   resp = client.list_tasks({
    #     cluster: "default", 
    #     container_instance: "f6bbb147-5370-4ace-8c73-c7181ded911f", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:task/default/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks({
    #     cluster: "String",
    #     container_instance: "String",
    #     family: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     started_by: "String",
    #     service_name: "String",
    #     desired_status: "RUNNING", # accepts RUNNING, PENDING, STOPPED
    #     launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #   })
    #
    # @example Response structure
    #
    #   resp.task_arns #=> Array
    #   resp.task_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/ListTasks AWS API Documentation
    #
    # @overload list_tasks(params = {})
    # @param [Hash] params ({})
    def list_tasks(params = {}, options = {})
      req = build_request(:list_tasks, params)
      req.send_request(options)
    end

    # Modifies an account setting. Account settings are set on a per-Region
    # basis.
    #
    # If you change the root user account setting, the default settings are
    # reset for users and roles that do not have specified individual
    # account settings. For more information, see [Account Settings][1] in
    # the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html
    #
    # @option params [required, String] :name
    #   The Amazon ECS account setting name to modify.
    #
    #   The following are the valid values for the account setting name.
    #
    #   * `serviceLongArnFormat` - When modified, the Amazon Resource Name
    #     (ARN) and resource ID format of the resource type for a specified
    #     user, role, or the root user for an account is affected. The opt-in
    #     and opt-out account setting must be set for each Amazon ECS resource
    #     separately. The ARN and resource ID format of a resource is defined
    #     by the opt-in status of the user or role that created the resource.
    #     You must turn on this setting to use Amazon ECS features such as
    #     resource tagging.
    #
    #   * `taskLongArnFormat` - When modified, the Amazon Resource Name (ARN)
    #     and resource ID format of the resource type for a specified user,
    #     role, or the root user for an account is affected. The opt-in and
    #     opt-out account setting must be set for each Amazon ECS resource
    #     separately. The ARN and resource ID format of a resource is defined
    #     by the opt-in status of the user or role that created the resource.
    #     You must turn on this setting to use Amazon ECS features such as
    #     resource tagging.
    #
    #   * `containerInstanceLongArnFormat` - When modified, the Amazon
    #     Resource Name (ARN) and resource ID format of the resource type for
    #     a specified user, role, or the root user for an account is affected.
    #     The opt-in and opt-out account setting must be set for each Amazon
    #     ECS resource separately. The ARN and resource ID format of a
    #     resource is defined by the opt-in status of the user or role that
    #     created the resource. You must turn on this setting to use Amazon
    #     ECS features such as resource tagging.
    #
    #   * `awsvpcTrunking` - When modified, the elastic network interface
    #     (ENI) limit for any new container instances that support the feature
    #     is changed. If `awsvpcTrunking` is turned on, any new container
    #     instances that support the feature are launched have the increased
    #     ENI limits available to them. For more information, see [Elastic
    #     Network Interface Trunking][1] in the *Amazon Elastic Container
    #     Service Developer Guide*.
    #
    #   * `containerInsights` - Container Insights with enhanced observability
    #     provides all the Container Insights metrics, plus additional task
    #     and container metrics. This version supports enhanced observability
    #     for Amazon ECS clusters using the Amazon EC2 and Fargate launch
    #     types. After you configure Container Insights with enhanced
    #     observability on Amazon ECS, Container Insights auto-collects
    #     detailed infrastructure telemetry from the cluster level down to the
    #     container level in your environment and displays these critical
    #     performance data in curated dashboards removing the heavy lifting in
    #     observability set-up.
    #
    #     To use Container Insights with enhanced observability, set the
    #     `containerInsights` account setting to `enhanced`.
    #
    #     To use Container Insights, set the `containerInsights` account
    #     setting to `enabled`.
    #
    #     For more information, see [Monitor Amazon ECS containers using
    #     Container Insights with enhanced observability][2] in the *Amazon
    #     Elastic Container Service Developer Guide*.
    #
    #   * `dualStackIPv6` - When turned on, when using a VPC in dual stack
    #     mode, your tasks using the `awsvpc` network mode can have an IPv6
    #     address assigned. For more information on using IPv6 with tasks
    #     launched on Amazon EC2 instances, see [Using a VPC in dual-stack
    #     mode][3]. For more information on using IPv6 with tasks launched on
    #     Fargate, see [Using a VPC in dual-stack mode][4].
    #
    #   * `fargateTaskRetirementWaitPeriod` - When Amazon Web Services
    #     determines that a security or infrastructure update is needed for an
    #     Amazon ECS task hosted on Fargate, the tasks need to be stopped and
    #     new tasks launched to replace them. Use
    #     `fargateTaskRetirementWaitPeriod` to configure the wait time to
    #     retire a Fargate task. For information about the Fargate tasks
    #     maintenance, see [Amazon Web Services Fargate task maintenance][5]
    #     in the *Amazon ECS Developer Guide*.
    #
    #   * `tagResourceAuthorization` - Amazon ECS is introducing tagging
    #     authorization for resource creation. Users must have permissions for
    #     actions that create the resource, such as `ecsCreateCluster`. If
    #     tags are specified when you create a resource, Amazon Web Services
    #     performs additional authorization to verify if users or roles have
    #     permissions to create tags. Therefore, you must grant explicit
    #     permissions to use the `ecs:TagResource` action. For more
    #     information, see [Grant permission to tag resources on creation][6]
    #     in the *Amazon ECS Developer Guide*.
    #
    #   * `defaultLogDriverMode` - Amazon ECS supports setting a default
    #     delivery mode of log messages from a container to the `logDriver`
    #     that you specify in the container's `logConfiguration`. The
    #     delivery mode affects application stability when the flow of logs
    #     from the container to the log driver is interrupted. The
    #     `defaultLogDriverMode` setting supports two values: `blocking` and
    #     `non-blocking`. If you don't specify a delivery mode in your
    #     container definition's `logConfiguration`, the mode you specify
    #     using this account setting will be used as the default. For more
    #     information about log delivery modes, see [LogConfiguration][7].
    #
    #     <note markdown="1"> On June 25, 2025, Amazon ECS changed the default log driver mode
    #     from `blocking` to `non-blocking` to prioritize task availability
    #     over logging. To continue using the `blocking` mode after this
    #     change, do one of the following:
    #
    #      * Set the `mode` option in your container definition's
    #       `logConfiguration` as `blocking`.
    #
    #     * Set the `defaultLogDriverMode` account setting to `blocking`.
    #
    #      </note>
    #
    #   * `guardDutyActivate` - The `guardDutyActivate` parameter is read-only
    #     in Amazon ECS and indicates whether Amazon ECS Runtime Monitoring is
    #     enabled or disabled by your security administrator in your Amazon
    #     ECS account. Amazon GuardDuty controls this account setting on your
    #     behalf. For more information, see [Protecting Amazon ECS workloads
    #     with Amazon ECS Runtime Monitoring][8].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking-awsvpc.html#task-networking-vpc-dual-stack
    #   [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-task-networking.html#fargate-task-networking-vpc-dual-stack
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-maintenance.html
    #   [6]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/supported-iam-actions-tagging.html
    #   [7]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html
    #   [8]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-guard-duty-integration.html
    #
    # @option params [required, String] :value
    #   The account setting value for the specified principal ARN. Accepted
    #   values are `enabled`, `disabled`, `enhanced`, `on`, and `off`.
    #
    #   When you specify `fargateTaskRetirementWaitPeriod` for the `name`, the
    #   following are the valid values:
    #
    #   * `0` - Amazon Web Services sends the notification, and immediately
    #     retires the affected tasks.
    #
    #   * `7` - Amazon Web Services sends the notification, and waits 7
    #     calendar days to retire the tasks.
    #
    #   * `14` - Amazon Web Services sends the notification, and waits 14
    #     calendar days to retire the tasks.
    #
    # @option params [String] :principal_arn
    #   The ARN of the principal, which can be a user, role, or the root user.
    #   If you specify the root user, it modifies the account setting for all
    #   users, roles, and the root user of the account unless a user or role
    #   explicitly overrides these settings. If this field is omitted, the
    #   setting is changed only for the authenticated user.
    #
    #   In order to use this parameter, you must be the root user, or the
    #   principal.
    #
    #   <note markdown="1"> You must use the root user when you set the Fargate wait time
    #   (`fargateTaskRetirementWaitPeriod`).
    #
    #    Federated users assume the account setting of the root user and can't
    #   have explicit account settings set for them.
    #
    #    </note>
    #
    # @return [Types::PutAccountSettingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAccountSettingResponse#setting #setting} => Types::Setting
    #
    #
    # @example Example: To modify your account settings
    #
    #   # This example modifies your account settings to opt in to the new ARN and resource ID format for Amazon ECS services. If
    #   # you’re using this command as the root user, then changes apply to the entire AWS account, unless an IAM user or role
    #   # explicitly overrides these settings for themselves.
    #
    #   resp = client.put_account_setting({
    #     name: "serviceLongArnFormat", 
    #     value: "enabled", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     setting: {
    #       name: "serviceLongArnFormat", 
    #       value: "enabled", 
    #       principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #     }, 
    #   }
    #
    # @example Example: To modify the account settings for a specific IAM user or IAM role
    #
    #   # This example modifies the account setting for a specific IAM user or IAM role to opt in to the new ARN and resource ID
    #   # format for Amazon ECS container instances. If you’re using this command as the root user, then changes apply to the
    #   # entire AWS account, unless an IAM user or role explicitly overrides these settings for themselves.
    #
    #   resp = client.put_account_setting({
    #     name: "containerInstanceLongArnFormat", 
    #     value: "enabled", 
    #     principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     setting: {
    #       name: "containerInstanceLongArnFormat", 
    #       value: "enabled", 
    #       principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_setting({
    #     name: "serviceLongArnFormat", # required, accepts serviceLongArnFormat, taskLongArnFormat, containerInstanceLongArnFormat, awsvpcTrunking, containerInsights, fargateFIPSMode, tagResourceAuthorization, fargateTaskRetirementWaitPeriod, guardDutyActivate, defaultLogDriverMode
    #     value: "String", # required
    #     principal_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.setting.name #=> String, one of "serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"
    #   resp.setting.value #=> String
    #   resp.setting.principal_arn #=> String
    #   resp.setting.type #=> String, one of "user", "aws_managed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAccountSetting AWS API Documentation
    #
    # @overload put_account_setting(params = {})
    # @param [Hash] params ({})
    def put_account_setting(params = {}, options = {})
      req = build_request(:put_account_setting, params)
      req.send_request(options)
    end

    # Modifies an account setting for all users on an account for whom no
    # individual account setting has been specified. Account settings are
    # set on a per-Region basis.
    #
    # @option params [required, String] :name
    #   The resource name for which to modify the account setting.
    #
    #   The following are the valid values for the account setting name.
    #
    #   * `serviceLongArnFormat` - When modified, the Amazon Resource Name
    #     (ARN) and resource ID format of the resource type for a specified
    #     user, role, or the root user for an account is affected. The opt-in
    #     and opt-out account setting must be set for each Amazon ECS resource
    #     separately. The ARN and resource ID format of a resource is defined
    #     by the opt-in status of the user or role that created the resource.
    #     You must turn on this setting to use Amazon ECS features such as
    #     resource tagging.
    #
    #   * `taskLongArnFormat` - When modified, the Amazon Resource Name (ARN)
    #     and resource ID format of the resource type for a specified user,
    #     role, or the root user for an account is affected. The opt-in and
    #     opt-out account setting must be set for each Amazon ECS resource
    #     separately. The ARN and resource ID format of a resource is defined
    #     by the opt-in status of the user or role that created the resource.
    #     You must turn on this setting to use Amazon ECS features such as
    #     resource tagging.
    #
    #   * `containerInstanceLongArnFormat` - When modified, the Amazon
    #     Resource Name (ARN) and resource ID format of the resource type for
    #     a specified user, role, or the root user for an account is affected.
    #     The opt-in and opt-out account setting must be set for each Amazon
    #     ECS resource separately. The ARN and resource ID format of a
    #     resource is defined by the opt-in status of the user or role that
    #     created the resource. You must turn on this setting to use Amazon
    #     ECS features such as resource tagging.
    #
    #   * `awsvpcTrunking` - When modified, the elastic network interface
    #     (ENI) limit for any new container instances that support the feature
    #     is changed. If `awsvpcTrunking` is turned on, any new container
    #     instances that support the feature are launched have the increased
    #     ENI limits available to them. For more information, see [Elastic
    #     Network Interface Trunking][1] in the *Amazon Elastic Container
    #     Service Developer Guide*.
    #
    #   * `containerInsights` - Container Insights with enhanced observability
    #     provides all the Container Insights metrics, plus additional task
    #     and container metrics. This version supports enhanced observability
    #     for Amazon ECS clusters using the Amazon EC2 and Fargate launch
    #     types. After you configure Container Insights with enhanced
    #     observability on Amazon ECS, Container Insights auto-collects
    #     detailed infrastructure telemetry from the cluster level down to the
    #     container level in your environment and displays these critical
    #     performance data in curated dashboards removing the heavy lifting in
    #     observability set-up.
    #
    #     To use Container Insights with enhanced observability, set the
    #     `containerInsights` account setting to `enhanced`.
    #
    #     To use Container Insights, set the `containerInsights` account
    #     setting to `enabled`.
    #
    #     For more information, see [Monitor Amazon ECS containers using
    #     Container Insights with enhanced observability][2] in the *Amazon
    #     Elastic Container Service Developer Guide*.
    #
    #   * `dualStackIPv6` - When turned on, when using a VPC in dual stack
    #     mode, your tasks using the `awsvpc` network mode can have an IPv6
    #     address assigned. For more information on using IPv6 with tasks
    #     launched on Amazon EC2 instances, see [Using a VPC in dual-stack
    #     mode][3]. For more information on using IPv6 with tasks launched on
    #     Fargate, see [Using a VPC in dual-stack mode][4].
    #
    #   * `fargateFIPSMode` - If you specify `fargateFIPSMode`, Fargate FIPS
    #     140 compliance is affected.
    #
    #   * `fargateTaskRetirementWaitPeriod` - When Amazon Web Services
    #     determines that a security or infrastructure update is needed for an
    #     Amazon ECS task hosted on Fargate, the tasks need to be stopped and
    #     new tasks launched to replace them. Use
    #     `fargateTaskRetirementWaitPeriod` to configure the wait time to
    #     retire a Fargate task. For information about the Fargate tasks
    #     maintenance, see [Amazon Web Services Fargate task maintenance][5]
    #     in the *Amazon ECS Developer Guide*.
    #
    #   * `tagResourceAuthorization` - Amazon ECS is introducing tagging
    #     authorization for resource creation. Users must have permissions for
    #     actions that create the resource, such as `ecsCreateCluster`. If
    #     tags are specified when you create a resource, Amazon Web Services
    #     performs additional authorization to verify if users or roles have
    #     permissions to create tags. Therefore, you must grant explicit
    #     permissions to use the `ecs:TagResource` action. For more
    #     information, see [Grant permission to tag resources on creation][6]
    #     in the *Amazon ECS Developer Guide*.
    #
    #   * `defaultLogDriverMode` -Amazon ECS supports setting a default
    #     delivery mode of log messages from a container to the `logDriver`
    #     that you specify in the container's `logConfiguration`. The
    #     delivery mode affects application stability when the flow of logs
    #     from the container to the log driver is interrupted. The
    #     `defaultLogDriverMode` setting supports two values: `blocking` and
    #     `non-blocking`. If you don't specify a delivery mode in your
    #     container definition's `logConfiguration`, the mode you specify
    #     using this account setting will be used as the default. For more
    #     information about log delivery modes, see [LogConfiguration][7].
    #
    #     <note markdown="1"> On June 25, 2025, Amazon ECS changed the default log driver mode
    #     from `blocking` to `non-blocking` to prioritize task availability
    #     over logging. To continue using the `blocking` mode after this
    #     change, do one of the following:
    #
    #      * Set the `mode` option in your container definition's
    #       `logConfiguration` as `blocking`.
    #
    #     * Set the `defaultLogDriverMode` account setting to `blocking`.
    #
    #      </note>
    #
    #   * `guardDutyActivate` - The `guardDutyActivate` parameter is read-only
    #     in Amazon ECS and indicates whether Amazon ECS Runtime Monitoring is
    #     enabled or disabled by your security administrator in your Amazon
    #     ECS account. Amazon GuardDuty controls this account setting on your
    #     behalf. For more information, see [Protecting Amazon ECS workloads
    #     with Amazon ECS Runtime Monitoring][8].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html
    #   [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking-awsvpc.html#task-networking-vpc-dual-stack
    #   [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-task-networking.html#fargate-task-networking-vpc-dual-stack
    #   [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-maintenance.html
    #   [6]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/supported-iam-actions-tagging.html
    #   [7]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html
    #   [8]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-guard-duty-integration.html
    #
    # @option params [required, String] :value
    #   The account setting value for the specified principal ARN. Accepted
    #   values are `enabled`, `disabled`, `on`, `enhanced`, and `off`.
    #
    #   When you specify `fargateTaskRetirementWaitPeriod` for the `name`, the
    #   following are the valid values:
    #
    #   * `0` - Amazon Web Services sends the notification, and immediately
    #     retires the affected tasks.
    #
    #   * `7` - Amazon Web Services sends the notification, and waits 7
    #     calendar days to retire the tasks.
    #
    #   * `14` - Amazon Web Services sends the notification, and waits 14
    #     calendar days to retire the tasks.
    #
    # @return [Types::PutAccountSettingDefaultResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAccountSettingDefaultResponse#setting #setting} => Types::Setting
    #
    #
    # @example Example: To modify the default account settings for all IAM users or roles on an account
    #
    #   # This example modifies the default account setting for the specified resource for all IAM users or roles on an account.
    #   # These changes apply to the entire AWS account, unless an IAM user or role explicitly overrides these settings for
    #   # themselves.
    #
    #   resp = client.put_account_setting_default({
    #     name: "serviceLongArnFormat", 
    #     value: "enabled", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     setting: {
    #       name: "serviceLongArnFormat", 
    #       value: "enabled", 
    #       principal_arn: "arn:aws:iam::<aws_account_id>:root", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_setting_default({
    #     name: "serviceLongArnFormat", # required, accepts serviceLongArnFormat, taskLongArnFormat, containerInstanceLongArnFormat, awsvpcTrunking, containerInsights, fargateFIPSMode, tagResourceAuthorization, fargateTaskRetirementWaitPeriod, guardDutyActivate, defaultLogDriverMode
    #     value: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.setting.name #=> String, one of "serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"
    #   resp.setting.value #=> String
    #   resp.setting.principal_arn #=> String
    #   resp.setting.type #=> String, one of "user", "aws_managed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAccountSettingDefault AWS API Documentation
    #
    # @overload put_account_setting_default(params = {})
    # @param [Hash] params ({})
    def put_account_setting_default(params = {}, options = {})
      req = build_request(:put_account_setting_default, params)
      req.send_request(options)
    end

    # Create or update an attribute on an Amazon ECS resource. If the
    # attribute doesn't exist, it's created. If the attribute exists, its
    # value is replaced with the specified value. To delete an attribute,
    # use [DeleteAttributes][1]. For more information, see [Attributes][2]
    # in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteAttributes.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   contains the resource to apply attributes. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, Array<Types::Attribute>] :attributes
    #   The attributes to apply to your resource. You can specify up to 10
    #   custom attributes for each resource. You can specify up to 10
    #   attributes in a single call.
    #
    # @return [Types::PutAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAttributesResponse#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #
    #
    # @example Example: To create or update an attribute on a resource
    #
    #   # This example adds an attribute "stack" with the value "production" to a container instance.
    #
    #   resp = client.put_attributes({
    #     attributes: [
    #       {
    #         name: "stack", 
    #         value: "production", 
    #         target_id: "arn:aws:ecs:us-west-2:123456789012:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34", 
    #       }, 
    #     ], 
    #     cluster: "MyCluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     attributes: [
    #       {
    #         name: "stack", 
    #         value: "production", 
    #         target_id: "arn:aws:ecs:us-west-2:123456789012:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_attributes({
    #     cluster: "String",
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance", # accepts container-instance
    #         target_id: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].value #=> String
    #   resp.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.attributes[0].target_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutAttributes AWS API Documentation
    #
    # @overload put_attributes(params = {})
    # @param [Hash] params ({})
    def put_attributes(params = {}, options = {})
      req = build_request(:put_attributes, params)
      req.send_request(options)
    end

    # Modifies the available capacity providers and the default capacity
    # provider strategy for a cluster.
    #
    # You must specify both the available capacity providers and a default
    # capacity provider strategy for the cluster. If the specified cluster
    # has existing capacity providers associated with it, you must specify
    # all existing capacity providers in addition to any new ones you want
    # to add. Any existing capacity providers that are associated with a
    # cluster that are omitted from a [PutClusterCapacityProviders][1] API
    # call will be disassociated with the cluster. You can only disassociate
    # an existing capacity provider from a cluster if it's not being used
    # by any existing tasks.
    #
    # When creating a service or running a task on a cluster, if no capacity
    # provider or launch type is specified, then the cluster's default
    # capacity provider strategy is used. We recommend that you define a
    # default capacity provider strategy for your cluster. However, you must
    # specify an empty array (`[]`) to bypass defining a default strategy.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   modify the capacity provider settings for. If you don't specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, Array<String>] :capacity_providers
    #   The name of one or more capacity providers to associate with the
    #   cluster.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group, the
    #   capacity provider must already be created. New capacity providers can
    #   be created with the [CreateCapacityProvider][1] API operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers are
    #   available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html
    #
    # @option params [required, Array<Types::CapacityProviderStrategyItem>] :default_capacity_provider_strategy
    #   The capacity provider strategy to use by default for the cluster.
    #
    #   When creating a service or running a task on a cluster, if no capacity
    #   provider or launch type is specified then the default capacity
    #   provider strategy for the cluster is used.
    #
    #   A capacity provider strategy consists of one or more capacity
    #   providers along with the `base` and `weight` to assign to them. A
    #   capacity provider must be associated with the cluster to be used in a
    #   capacity provider strategy. The [PutClusterCapacityProviders][1] API
    #   is used to associate a capacity provider with a cluster. Only capacity
    #   providers with an `ACTIVE` or `UPDATING` status can be used.
    #
    #   If specifying a capacity provider that uses an Auto Scaling group, the
    #   capacity provider must already be created. New capacity providers can
    #   be created with the [CreateCapacityProvider][2] API operation.
    #
    #   To use a Fargate capacity provider, specify either the `FARGATE` or
    #   `FARGATE_SPOT` capacity providers. The Fargate capacity providers are
    #   available to all accounts and only need to be associated with a
    #   cluster to be used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html
    #
    # @return [Types::PutClusterCapacityProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutClusterCapacityProvidersResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To add an existing capacity provider to a cluuster
    #
    #   # This example adds an existing capacity provider "MyCapacityProvider2" to a cluster that already has the capacity
    #   # provider "MyCapacityProvider1" associated with it. Both "MyCapacityProvider2" and "MyCapacityProvider1" need to be
    #   # specified. 
    #
    #   resp = client.put_cluster_capacity_providers({
    #     capacity_providers: [
    #       "MyCapacityProvider1", 
    #       "MyCapacityProvider2", 
    #     ], 
    #     cluster: "MyCluster", 
    #     default_capacity_provider_strategy: [
    #       {
    #         capacity_provider: "MyCapacityProvider1", 
    #         weight: 1, 
    #       }, 
    #       {
    #         capacity_provider: "MyCapacityProvider2", 
    #         weight: 1, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       attachments: [
    #         {
    #           type: "as_policy", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "MyCapacityProvider1", 
    #             }, 
    #             {
    #               name: "scalingPolicyName", 
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #             }, 
    #           ], 
    #           id: "0fb0c8f4-6edd-4de1-9b09-17e470ee1918", 
    #           status: "ACTIVE", 
    #         }, 
    #         {
    #           type: "as_policy", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "MyCapacityProvider2", 
    #             }, 
    #             {
    #               name: "scalingPolicyName", 
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #             }, 
    #           ], 
    #           id: "ae592060-2382-4663-9476-b015c685593c", 
    #           status: "ACTIVE", 
    #         }, 
    #       ], 
    #       attachments_status: "UPDATE_IN_PROGRESS", 
    #       capacity_providers: [
    #         "MyCapacityProvider1", 
    #         "MyCapacityProvider2", 
    #       ], 
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/MyCluster", 
    #       cluster_name: "MyCluster", 
    #       default_capacity_provider_strategy: [
    #         {
    #           base: 0, 
    #           capacity_provider: "MyCapacityProvider1", 
    #           weight: 1, 
    #         }, 
    #         {
    #           base: 0, 
    #           capacity_provider: "MyCapacityProvider2", 
    #           weight: 1, 
    #         }, 
    #       ], 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       settings: [
    #         {
    #           name: "containerInsights", 
    #           value: "enabled", 
    #         }, 
    #       ], 
    #       statistics: [
    #       ], 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Example: To remove a capacity provider from a cluster
    #
    #   # This example removes a capacity provider "MyCapacityProvider2" from a cluster that has both "MyCapacityProvider2" and
    #   # "MyCapacityProvider1" associated with it. Only "MyCapacityProvider1" needs to be specified in this scenario. 
    #
    #   resp = client.put_cluster_capacity_providers({
    #     capacity_providers: [
    #       "MyCapacityProvider1", 
    #     ], 
    #     cluster: "MyCluster", 
    #     default_capacity_provider_strategy: [
    #       {
    #         base: 0, 
    #         capacity_provider: "MyCapacityProvider1", 
    #         weight: 1, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       attachments: [
    #         {
    #           type: "as_policy", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "MyCapacityProvider1", 
    #             }, 
    #             {
    #               name: "scalingPolicyName", 
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #             }, 
    #           ], 
    #           id: "0fb0c8f4-6edd-4de1-9b09-17e470ee1918", 
    #           status: "ACTIVE", 
    #         }, 
    #         {
    #           type: "as_policy", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "MyCapacityProvider2", 
    #             }, 
    #             {
    #               name: "scalingPolicyName", 
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #             }, 
    #           ], 
    #           id: "ae592060-2382-4663-9476-b015c685593c", 
    #           status: "DELETING", 
    #         }, 
    #       ], 
    #       attachments_status: "UPDATE_IN_PROGRESS", 
    #       capacity_providers: [
    #         "MyCapacityProvider1", 
    #       ], 
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/MyCluster", 
    #       cluster_name: "MyCluster", 
    #       default_capacity_provider_strategy: [
    #         {
    #           base: 0, 
    #           capacity_provider: "MyCapacityProvider1", 
    #           weight: 1, 
    #         }, 
    #       ], 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       settings: [
    #         {
    #           name: "containerInsights", 
    #           value: "enabled", 
    #         }, 
    #       ], 
    #       statistics: [
    #       ], 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Example: To remove all capacity providers from a cluster
    #
    #   # This example removes all capacity providers associated with a cluster. 
    #
    #   resp = client.put_cluster_capacity_providers({
    #     capacity_providers: [
    #     ], 
    #     cluster: "MyCluster", 
    #     default_capacity_provider_strategy: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       attachments: [
    #         {
    #           type: "as_policy", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "MyCapacityProvider1", 
    #             }, 
    #             {
    #               name: "scalingPolicyName", 
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE11111", 
    #             }, 
    #           ], 
    #           id: "0fb0c8f4-6edd-4de1-9b09-17e470ee1918", 
    #           status: "DELETING", 
    #         }, 
    #         {
    #           type: "as_policy", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "MyCapacityProvider2", 
    #             }, 
    #             {
    #               name: "scalingPolicyName", 
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE22222", 
    #             }, 
    #           ], 
    #           id: "ae592060-2382-4663-9476-b015c685593c", 
    #           status: "DELETING", 
    #         }, 
    #       ], 
    #       attachments_status: "UPDATE_IN_PROGRESS", 
    #       capacity_providers: [
    #       ], 
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/MyCluster", 
    #       cluster_name: "MyCluster", 
    #       default_capacity_provider_strategy: [
    #       ], 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       settings: [
    #         {
    #           name: "containerInsights", 
    #           value: "enabled", 
    #         }, 
    #       ], 
    #       statistics: [
    #       ], 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_cluster_capacity_providers({
    #     cluster: "String", # required
    #     capacity_providers: ["String"], # required
    #     default_capacity_provider_strategy: [ # required
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.execute_command_configuration.logging #=> String, one of "NONE", "DEFAULT", "OVERRIDE"
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.cluster.configuration.managed_storage_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.managed_storage_configuration.fargate_ephemeral_storage_kms_key_id #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.registered_container_instances_count #=> Integer
    #   resp.cluster.running_tasks_count #=> Integer
    #   resp.cluster.pending_tasks_count #=> Integer
    #   resp.cluster.active_services_count #=> Integer
    #   resp.cluster.statistics #=> Array
    #   resp.cluster.statistics[0].name #=> String
    #   resp.cluster.statistics[0].value #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.settings #=> Array
    #   resp.cluster.settings[0].name #=> String, one of "containerInsights"
    #   resp.cluster.settings[0].value #=> String
    #   resp.cluster.capacity_providers #=> Array
    #   resp.cluster.capacity_providers[0] #=> String
    #   resp.cluster.default_capacity_provider_strategy #=> Array
    #   resp.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.cluster.attachments #=> Array
    #   resp.cluster.attachments[0].id #=> String
    #   resp.cluster.attachments[0].type #=> String
    #   resp.cluster.attachments[0].status #=> String
    #   resp.cluster.attachments[0].details #=> Array
    #   resp.cluster.attachments[0].details[0].name #=> String
    #   resp.cluster.attachments[0].details[0].value #=> String
    #   resp.cluster.attachments_status #=> String
    #   resp.cluster.service_connect_defaults.namespace #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/PutClusterCapacityProviders AWS API Documentation
    #
    # @overload put_cluster_capacity_providers(params = {})
    # @param [Hash] params ({})
    def put_cluster_capacity_providers(params = {}, options = {})
      req = build_request(:put_cluster_capacity_providers, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Registers an EC2 instance into the specified cluster. This instance
    # becomes available to place containers on.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   register your container instance with. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [String] :instance_identity_document
    #   The instance identity document for the EC2 instance to register. This
    #   document can be found by running the following command from the
    #   instance: `curl
    #   http://169.254.169.254/latest/dynamic/instance-identity/document/`
    #
    # @option params [String] :instance_identity_document_signature
    #   The instance identity document signature for the EC2 instance to
    #   register. This signature can be found by running the following command
    #   from the instance: `curl
    #   http://169.254.169.254/latest/dynamic/instance-identity/signature/`
    #
    # @option params [Array<Types::Resource>] :total_resources
    #   The resources available on the instance.
    #
    # @option params [Types::VersionInfo] :version_info
    #   The version information for the Amazon ECS container agent and Docker
    #   daemon that runs on the container instance.
    #
    # @option params [String] :container_instance_arn
    #   The ARN of the container instance (if it was previously registered).
    #
    # @option params [Array<Types::Attribute>] :attributes
    #   The container instance attributes that this container instance
    #   supports.
    #
    # @option params [Array<Types::PlatformDevice>] :platform_devices
    #   The devices that are available on the container instance. The only
    #   supported device type is a GPU.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the container instance to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value. You define both.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @return [Types::RegisterContainerInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterContainerInstanceResponse#container_instance #container_instance} => Types::ContainerInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_container_instance({
    #     cluster: "String",
    #     instance_identity_document: "String",
    #     instance_identity_document_signature: "String",
    #     total_resources: [
    #       {
    #         name: "String",
    #         type: "String",
    #         double_value: 1.0,
    #         long_value: 1,
    #         integer_value: 1,
    #         string_set_value: ["String"],
    #       },
    #     ],
    #     version_info: {
    #       agent_version: "String",
    #       agent_hash: "String",
    #       docker_version: "String",
    #     },
    #     container_instance_arn: "String",
    #     attributes: [
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance", # accepts container-instance
    #         target_id: "String",
    #       },
    #     ],
    #     platform_devices: [
    #       {
    #         id: "String", # required
    #         type: "GPU", # required, accepts GPU
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instance.container_instance_arn #=> String
    #   resp.container_instance.ec2_instance_id #=> String
    #   resp.container_instance.capacity_provider_name #=> String
    #   resp.container_instance.version #=> Integer
    #   resp.container_instance.version_info.agent_version #=> String
    #   resp.container_instance.version_info.agent_hash #=> String
    #   resp.container_instance.version_info.docker_version #=> String
    #   resp.container_instance.remaining_resources #=> Array
    #   resp.container_instance.remaining_resources[0].name #=> String
    #   resp.container_instance.remaining_resources[0].type #=> String
    #   resp.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.container_instance.remaining_resources[0].string_set_value #=> Array
    #   resp.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.registered_resources #=> Array
    #   resp.container_instance.registered_resources[0].name #=> String
    #   resp.container_instance.registered_resources[0].type #=> String
    #   resp.container_instance.registered_resources[0].double_value #=> Float
    #   resp.container_instance.registered_resources[0].long_value #=> Integer
    #   resp.container_instance.registered_resources[0].integer_value #=> Integer
    #   resp.container_instance.registered_resources[0].string_set_value #=> Array
    #   resp.container_instance.registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.status #=> String
    #   resp.container_instance.status_reason #=> String
    #   resp.container_instance.agent_connected #=> Boolean
    #   resp.container_instance.running_tasks_count #=> Integer
    #   resp.container_instance.pending_tasks_count #=> Integer
    #   resp.container_instance.agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instance.attributes #=> Array
    #   resp.container_instance.attributes[0].name #=> String
    #   resp.container_instance.attributes[0].value #=> String
    #   resp.container_instance.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instance.attributes[0].target_id #=> String
    #   resp.container_instance.registered_at #=> Time
    #   resp.container_instance.attachments #=> Array
    #   resp.container_instance.attachments[0].id #=> String
    #   resp.container_instance.attachments[0].type #=> String
    #   resp.container_instance.attachments[0].status #=> String
    #   resp.container_instance.attachments[0].details #=> Array
    #   resp.container_instance.attachments[0].details[0].name #=> String
    #   resp.container_instance.attachments[0].details[0].value #=> String
    #   resp.container_instance.tags #=> Array
    #   resp.container_instance.tags[0].key #=> String
    #   resp.container_instance.tags[0].value #=> String
    #   resp.container_instance.health_status.overall_status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instance.health_status.details #=> Array
    #   resp.container_instance.health_status.details[0].type #=> String, one of "CONTAINER_RUNTIME"
    #   resp.container_instance.health_status.details[0].status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instance.health_status.details[0].last_updated #=> Time
    #   resp.container_instance.health_status.details[0].last_status_change #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterContainerInstance AWS API Documentation
    #
    # @overload register_container_instance(params = {})
    # @param [Hash] params ({})
    def register_container_instance(params = {}, options = {})
      req = build_request(:register_container_instance, params)
      req.send_request(options)
    end

    # Registers a new task definition from the supplied `family` and
    # `containerDefinitions`. Optionally, you can add data volumes to your
    # containers with the `volumes` parameter. For more information about
    # task definition parameters and defaults, see [Amazon ECS Task
    # Definitions][1] in the *Amazon Elastic Container Service Developer
    # Guide*.
    #
    # You can specify a role for your task with the `taskRoleArn` parameter.
    # When you specify a role for a task, its containers can then use the
    # latest versions of the CLI or SDKs to make API requests to the Amazon
    # Web Services services that are specified in the policy that's
    # associated with the role. For more information, see [IAM Roles for
    # Tasks][2] in the *Amazon Elastic Container Service Developer Guide*.
    #
    # You can specify a Docker networking mode for the containers in your
    # task definition with the `networkMode` parameter. If you specify the
    # `awsvpc` network mode, the task is allocated an elastic network
    # interface, and you must specify a [NetworkConfiguration][3] when you
    # create a service or run a task with the task definition. For more
    # information, see [Task Networking][4] in the *Amazon Elastic Container
    # Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html
    # [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #
    # @option params [required, String] :family
    #   You must specify a `family` for a task definition. You can use it
    #   track multiple versions of the same task definition. The `family` is
    #   used as a name for your task definition. Up to 255 letters (uppercase
    #   and lowercase), numbers, underscores, and hyphens are allowed.
    #
    # @option params [String] :task_role_arn
    #   The short name or full Amazon Resource Name (ARN) of the IAM role that
    #   containers in this task can assume. All containers in this task are
    #   granted the permissions that are specified in this role. For more
    #   information, see [IAM Roles for Tasks][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the task execution role that grants
    #   the Amazon ECS container agent permission to make Amazon Web Services
    #   API calls on your behalf. For informationabout the required IAM roles
    #   for Amazon ECS, see [IAM roles for Amazon ECS][1] in the *Amazon
    #   Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security-ecs-iam-role-overview.html
    #
    # @option params [String] :network_mode
    #   The Docker networking mode to use for the containers in the task. The
    #   valid values are `none`, `bridge`, `awsvpc`, and `host`. If no network
    #   mode is specified, the default is `bridge`.
    #
    #   For Amazon ECS tasks on Fargate, the `awsvpc` network mode is
    #   required. For Amazon ECS tasks on Amazon EC2 Linux instances, any
    #   network mode can be used. For Amazon ECS tasks on Amazon EC2 Windows
    #   instances, `<default>` or `awsvpc` can be used. If the network mode is
    #   set to `none`, you cannot specify port mappings in your container
    #   definitions, and the tasks containers do not have external
    #   connectivity. The `host` and `awsvpc` network modes offer the highest
    #   networking performance for containers because they use the EC2 network
    #   stack instead of the virtualized network stack provided by the
    #   `bridge` mode.
    #
    #   With the `host` and `awsvpc` network modes, exposed container ports
    #   are mapped directly to the corresponding host port (for the `host`
    #   network mode) or the attached elastic network interface port (for the
    #   `awsvpc` network mode), so you cannot take advantage of dynamic host
    #   port mappings.
    #
    #   When using the `host` network mode, you should not run containers
    #   using the root user (UID 0). It is considered best practice to use a
    #   non-root user.
    #
    #   If the network mode is `awsvpc`, the task is allocated an elastic
    #   network interface, and you must specify a [NetworkConfiguration][1]
    #   value when you create a service or run a task with the task
    #   definition. For more information, see [Task Networking][2] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   If the network mode is `host`, you cannot run multiple instantiations
    #   of the same task on a single container instance when port mappings are
    #   used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #
    # @option params [required, Array<Types::ContainerDefinition>] :container_definitions
    #   A list of container definitions in JSON format that describe the
    #   different containers that make up your task.
    #
    # @option params [Array<Types::Volume>] :volumes
    #   A list of volume definitions in JSON format that containers in your
    #   task might use.
    #
    # @option params [Array<Types::TaskDefinitionPlacementConstraint>] :placement_constraints
    #   An array of placement constraint objects to use for the task. You can
    #   specify a maximum of 10 constraints for each task. This limit includes
    #   constraints in the task definition and those specified at runtime.
    #
    # @option params [Array<String>] :requires_compatibilities
    #   The task launch type that Amazon ECS validates the task definition
    #   against. A client exception is returned if the task definition
    #   doesn't validate against the compatibilities specified. If no value
    #   is specified, the parameter is omitted from the response.
    #
    # @option params [String] :cpu
    #   The number of CPU units used by the task. It can be expressed as an
    #   integer using CPU units (for example, `1024`) or as a string using
    #   vCPUs (for example, `1 vCPU` or `1 vcpu`) in a task definition. String
    #   values are converted to an integer indicating the CPU units when the
    #   task definition is registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If you're using the EC2 launch type or external launch type, this
    #   field is optional. Supported values are between `128` CPU units
    #   (`0.125` vCPUs) and `196608` CPU units (`192` vCPUs). If you do not
    #   specify a value, the parameter is ignored.
    #
    #   This field is required for Fargate. For information about the valid
    #   values, see [Task size][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size
    #
    # @option params [String] :memory
    #   The amount of memory (in MiB) used by the task. It can be expressed as
    #   an integer using MiB (for example ,`1024`) or as a string using GB
    #   (for example, `1GB` or `1 GB`) in a task definition. String values are
    #   converted to an integer indicating the MiB when the task definition is
    #   registered.
    #
    #   <note markdown="1"> Task-level CPU and memory parameters are ignored for Windows
    #   containers. We recommend specifying container-level resources for
    #   Windows containers.
    #
    #    </note>
    #
    #   If using the EC2 launch type, this field is optional.
    #
    #   If using the Fargate launch type, this field is required and you must
    #   use one of the following values. This determines your range of
    #   supported values for the `cpu` parameter.
    #
    #   The CPU units cannot be less than 1 vCPU when you use Windows
    #   containers on Fargate.
    #
    #   * 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available `cpu` values: 256
    #     (.25 vCPU)
    #
    #   * 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available `cpu`
    #     values: 512 (.5 vCPU)
    #
    #   * 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB),
    #     7168 (7 GB), 8192 (8 GB) - Available `cpu` values: 1024 (1 vCPU)
    #
    #   * Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) -
    #     Available `cpu` values: 2048 (2 vCPU)
    #
    #   * Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) -
    #     Available `cpu` values: 4096 (4 vCPU)
    #
    #   * Between 16 GB and 60 GB in 4 GB increments - Available `cpu` values:
    #     8192 (8 vCPU)
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    #   * Between 32GB and 120 GB in 8 GB increments - Available `cpu` values:
    #     16384 (16 vCPU)
    #
    #     This option requires Linux platform `1.4.0` or later.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the task definition to help you
    #   categorize and organize them. Each tag consists of a key and an
    #   optional value. You define both of them.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @option params [String] :pid_mode
    #   The process namespace to use for the containers in the task. The valid
    #   values are `host` or `task`. On Fargate for Linux containers, the only
    #   valid value is `task`. For example, monitoring sidecars might need
    #   `pidMode` to access information about other containers running in the
    #   same task.
    #
    #   If `host` is specified, all containers within the tasks that specified
    #   the `host` PID mode on the same container instance share the same
    #   process namespace with the host Amazon EC2 instance.
    #
    #   If `task` is specified, all containers within the specified task share
    #   the same process namespace.
    #
    #   If no value is specified, the default is a private namespace for each
    #   container.
    #
    #   If the `host` PID mode is used, there's a heightened risk of
    #   undesired process namespace exposure.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers.
    #
    #    </note>
    #
    #   <note markdown="1"> This parameter is only supported for tasks that are hosted on Fargate
    #   if the tasks are using platform version `1.4.0` or later (Linux). This
    #   isn't supported for Windows containers on Fargate.
    #
    #    </note>
    #
    # @option params [String] :ipc_mode
    #   The IPC resource namespace to use for the containers in the task. The
    #   valid values are `host`, `task`, or `none`. If `host` is specified,
    #   then all containers within the tasks that specified the `host` IPC
    #   mode on the same container instance share the same IPC resources with
    #   the host Amazon EC2 instance. If `task` is specified, all containers
    #   within the specified task share the same IPC resources. If `none` is
    #   specified, then IPC resources within the containers of a task are
    #   private and not shared with other containers in a task or on the
    #   container instance. If no value is specified, then the IPC resource
    #   namespace sharing depends on the Docker daemon setting on the
    #   container instance.
    #
    #   If the `host` IPC mode is used, be aware that there is a heightened
    #   risk of undesired IPC namespace expose.
    #
    #   If you are setting namespaced kernel parameters using `systemControls`
    #   for the containers in the task, the following will apply to your IPC
    #   resource namespace. For more information, see [System Controls][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #   * For tasks that use the `host` IPC mode, IPC namespace related
    #     `systemControls` are not supported.
    #
    #   * For tasks that use the `task` IPC mode, IPC namespace related
    #     `systemControls` will apply to all containers within a task.
    #
    #   <note markdown="1"> This parameter is not supported for Windows containers or tasks run on
    #   Fargate.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html
    #
    # @option params [Types::ProxyConfiguration] :proxy_configuration
    #   The configuration details for the App Mesh proxy.
    #
    #   For tasks hosted on Amazon EC2 instances, the container instances
    #   require at least version `1.26.0` of the container agent and at least
    #   version `1.26.0-1` of the `ecs-init` package to use a proxy
    #   configuration. If your container instances are launched from the
    #   Amazon ECS-optimized AMI version `20190301` or later, then they
    #   contain the required versions of the container agent and `ecs-init`.
    #   For more information, see [Amazon ECS-optimized AMI versions][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-ami-versions.html
    #
    # @option params [Array<Types::InferenceAccelerator>] :inference_accelerators
    #   The Elastic Inference accelerators to use for the containers in the
    #   task.
    #
    # @option params [Types::EphemeralStorage] :ephemeral_storage
    #   The amount of ephemeral storage to allocate for the task. This
    #   parameter is used to expand the total amount of ephemeral storage
    #   available, beyond the default amount, for tasks hosted on Fargate. For
    #   more information, see [Using data volumes in tasks][1] in the *Amazon
    #   ECS Developer Guide*.
    #
    #   <note markdown="1"> For tasks using the Fargate launch type, the task requires the
    #   following platforms:
    #
    #    * Linux platform version `1.4.0` or later.
    #
    #   * Windows platform version `1.0.0` or later.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html
    #
    # @option params [Types::RuntimePlatform] :runtime_platform
    #   The operating system that your tasks definitions run on. A platform
    #   family is specified only for tasks using the Fargate launch type.
    #
    # @option params [Boolean] :enable_fault_injection
    #   Enables fault injection when you register your task definition and
    #   allows for fault injection requests to be accepted from the task's
    #   containers. The default value is `false`.
    #
    # @return [Types::RegisterTaskDefinitionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTaskDefinitionResponse#task_definition #task_definition} => Types::TaskDefinition
    #   * {Types::RegisterTaskDefinitionResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: To register a task definition
    #
    #   # This example registers a task definition to the specified family.
    #
    #   resp = client.register_task_definition({
    #     container_definitions: [
    #       {
    #         name: "sleep", 
    #         command: [
    #           "sleep", 
    #           "360", 
    #         ], 
    #         cpu: 10, 
    #         essential: true, 
    #         image: "public.ecr.aws/docker/library/busybox:latest", 
    #         memory: 10, 
    #       }, 
    #     ], 
    #     family: "sleep360", 
    #     task_role_arn: "", 
    #     volumes: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_definition: {
    #       container_definitions: [
    #         {
    #           name: "sleep", 
    #           command: [
    #             "sleep", 
    #             "360", 
    #           ], 
    #           cpu: 10, 
    #           environment: [
    #           ], 
    #           essential: true, 
    #           image: "public.ecr.aws/docker/library/busybox:latest", 
    #           memory: 10, 
    #           mount_points: [
    #           ], 
    #           port_mappings: [
    #           ], 
    #           volumes_from: [
    #           ], 
    #         }, 
    #       ], 
    #       family: "sleep360", 
    #       revision: 1, 
    #       task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:19", 
    #       volumes: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_task_definition({
    #     family: "String", # required
    #     task_role_arn: "String",
    #     execution_role_arn: "String",
    #     network_mode: "bridge", # accepts bridge, host, awsvpc, none
    #     container_definitions: [ # required
    #       {
    #         name: "String",
    #         image: "String",
    #         repository_credentials: {
    #           credentials_parameter: "String", # required
    #         },
    #         cpu: 1,
    #         memory: 1,
    #         memory_reservation: 1,
    #         links: ["String"],
    #         port_mappings: [
    #           {
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #             name: "String",
    #             app_protocol: "http", # accepts http, http2, grpc
    #             container_port_range: "String",
    #           },
    #         ],
    #         essential: false,
    #         restart_policy: {
    #           enabled: false, # required
    #           ignored_exit_codes: [1],
    #           restart_attempt_period: 1,
    #         },
    #         entry_point: ["String"],
    #         command: ["String"],
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #         environment_files: [
    #           {
    #             value: "String", # required
    #             type: "s3", # required, accepts s3
    #           },
    #         ],
    #         mount_points: [
    #           {
    #             source_volume: "String",
    #             container_path: "String",
    #             read_only: false,
    #           },
    #         ],
    #         volumes_from: [
    #           {
    #             source_container: "String",
    #             read_only: false,
    #           },
    #         ],
    #         linux_parameters: {
    #           capabilities: {
    #             add: ["String"],
    #             drop: ["String"],
    #           },
    #           devices: [
    #             {
    #               host_path: "String", # required
    #               container_path: "String",
    #               permissions: ["read"], # accepts read, write, mknod
    #             },
    #           ],
    #           init_process_enabled: false,
    #           shared_memory_size: 1,
    #           tmpfs: [
    #             {
    #               container_path: "String", # required
    #               size: 1, # required
    #               mount_options: ["String"],
    #             },
    #           ],
    #           max_swap: 1,
    #           swappiness: 1,
    #         },
    #         secrets: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           },
    #         ],
    #         depends_on: [
    #           {
    #             container_name: "String", # required
    #             condition: "START", # required, accepts START, COMPLETE, SUCCESS, HEALTHY
    #           },
    #         ],
    #         start_timeout: 1,
    #         stop_timeout: 1,
    #         version_consistency: "enabled", # accepts enabled, disabled
    #         hostname: "String",
    #         user: "String",
    #         working_directory: "String",
    #         disable_networking: false,
    #         privileged: false,
    #         readonly_root_filesystem: false,
    #         dns_servers: ["String"],
    #         dns_search_domains: ["String"],
    #         extra_hosts: [
    #           {
    #             hostname: "String", # required
    #             ip_address: "String", # required
    #           },
    #         ],
    #         docker_security_options: ["String"],
    #         interactive: false,
    #         pseudo_terminal: false,
    #         docker_labels: {
    #           "String" => "String",
    #         },
    #         ulimits: [
    #           {
    #             name: "core", # required, accepts core, cpu, data, fsize, locks, memlock, msgqueue, nice, nofile, nproc, rss, rtprio, rttime, sigpending, stack
    #             soft_limit: 1, # required
    #             hard_limit: 1, # required
    #           },
    #         ],
    #         log_configuration: {
    #           log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk, awsfirelens
    #           options: {
    #             "String" => "String",
    #           },
    #           secret_options: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             },
    #           ],
    #         },
    #         health_check: {
    #           command: ["String"], # required
    #           interval: 1,
    #           timeout: 1,
    #           retries: 1,
    #           start_period: 1,
    #         },
    #         system_controls: [
    #           {
    #             namespace: "String",
    #             value: "String",
    #           },
    #         ],
    #         resource_requirements: [
    #           {
    #             value: "String", # required
    #             type: "GPU", # required, accepts GPU, InferenceAccelerator
    #           },
    #         ],
    #         firelens_configuration: {
    #           type: "fluentd", # required, accepts fluentd, fluentbit
    #           options: {
    #             "String" => "String",
    #           },
    #         },
    #         credential_specs: ["String"],
    #       },
    #     ],
    #     volumes: [
    #       {
    #         name: "String",
    #         host: {
    #           source_path: "String",
    #         },
    #         docker_volume_configuration: {
    #           scope: "task", # accepts task, shared
    #           autoprovision: false,
    #           driver: "String",
    #           driver_opts: {
    #             "String" => "String",
    #           },
    #           labels: {
    #             "String" => "String",
    #           },
    #         },
    #         efs_volume_configuration: {
    #           file_system_id: "String", # required
    #           root_directory: "String",
    #           transit_encryption: "ENABLED", # accepts ENABLED, DISABLED
    #           transit_encryption_port: 1,
    #           authorization_config: {
    #             access_point_id: "String",
    #             iam: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         fsx_windows_file_server_volume_configuration: {
    #           file_system_id: "String", # required
    #           root_directory: "String", # required
    #           authorization_config: { # required
    #             credentials_parameter: "String", # required
    #             domain: "String", # required
    #           },
    #         },
    #         configured_at_launch: false,
    #       },
    #     ],
    #     placement_constraints: [
    #       {
    #         type: "memberOf", # accepts memberOf
    #         expression: "String",
    #       },
    #     ],
    #     requires_compatibilities: ["EC2"], # accepts EC2, FARGATE, EXTERNAL
    #     cpu: "String",
    #     memory: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     pid_mode: "host", # accepts host, task
    #     ipc_mode: "host", # accepts host, task, none
    #     proxy_configuration: {
    #       type: "APPMESH", # accepts APPMESH
    #       container_name: "String", # required
    #       properties: [
    #         {
    #           name: "String",
    #           value: "String",
    #         },
    #       ],
    #     },
    #     inference_accelerators: [
    #       {
    #         device_name: "String", # required
    #         device_type: "String", # required
    #       },
    #     ],
    #     ephemeral_storage: {
    #       size_in_gi_b: 1, # required
    #     },
    #     runtime_platform: {
    #       cpu_architecture: "X86_64", # accepts X86_64, ARM64
    #       operating_system_family: "WINDOWS_SERVER_2019_FULL", # accepts WINDOWS_SERVER_2019_FULL, WINDOWS_SERVER_2019_CORE, WINDOWS_SERVER_2016_FULL, WINDOWS_SERVER_2004_CORE, WINDOWS_SERVER_2022_CORE, WINDOWS_SERVER_2022_FULL, WINDOWS_SERVER_2025_CORE, WINDOWS_SERVER_2025_FULL, WINDOWS_SERVER_20H2_CORE, LINUX
    #     },
    #     enable_fault_injection: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.task_definition.task_definition_arn #=> String
    #   resp.task_definition.container_definitions #=> Array
    #   resp.task_definition.container_definitions[0].name #=> String
    #   resp.task_definition.container_definitions[0].image #=> String
    #   resp.task_definition.container_definitions[0].repository_credentials.credentials_parameter #=> String
    #   resp.task_definition.container_definitions[0].cpu #=> Integer
    #   resp.task_definition.container_definitions[0].memory #=> Integer
    #   resp.task_definition.container_definitions[0].memory_reservation #=> Integer
    #   resp.task_definition.container_definitions[0].links #=> Array
    #   resp.task_definition.container_definitions[0].links[0] #=> String
    #   resp.task_definition.container_definitions[0].port_mappings #=> Array
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].host_port #=> Integer
    #   resp.task_definition.container_definitions[0].port_mappings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task_definition.container_definitions[0].port_mappings[0].name #=> String
    #   resp.task_definition.container_definitions[0].port_mappings[0].app_protocol #=> String, one of "http", "http2", "grpc"
    #   resp.task_definition.container_definitions[0].port_mappings[0].container_port_range #=> String
    #   resp.task_definition.container_definitions[0].essential #=> Boolean
    #   resp.task_definition.container_definitions[0].restart_policy.enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].restart_policy.ignored_exit_codes #=> Array
    #   resp.task_definition.container_definitions[0].restart_policy.ignored_exit_codes[0] #=> Integer
    #   resp.task_definition.container_definitions[0].restart_policy.restart_attempt_period #=> Integer
    #   resp.task_definition.container_definitions[0].entry_point #=> Array
    #   resp.task_definition.container_definitions[0].entry_point[0] #=> String
    #   resp.task_definition.container_definitions[0].command #=> Array
    #   resp.task_definition.container_definitions[0].command[0] #=> String
    #   resp.task_definition.container_definitions[0].environment #=> Array
    #   resp.task_definition.container_definitions[0].environment[0].name #=> String
    #   resp.task_definition.container_definitions[0].environment[0].value #=> String
    #   resp.task_definition.container_definitions[0].environment_files #=> Array
    #   resp.task_definition.container_definitions[0].environment_files[0].value #=> String
    #   resp.task_definition.container_definitions[0].environment_files[0].type #=> String, one of "s3"
    #   resp.task_definition.container_definitions[0].mount_points #=> Array
    #   resp.task_definition.container_definitions[0].mount_points[0].source_volume #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].mount_points[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].volumes_from #=> Array
    #   resp.task_definition.container_definitions[0].volumes_from[0].source_container #=> String
    #   resp.task_definition.container_definitions[0].volumes_from[0].read_only #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.add[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.capabilities.drop[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].host_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.devices[0].permissions[0] #=> String, one of "read", "write", "mknod"
    #   resp.task_definition.container_definitions[0].linux_parameters.init_process_enabled #=> Boolean
    #   resp.task_definition.container_definitions[0].linux_parameters.shared_memory_size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].container_path #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].size #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options #=> Array
    #   resp.task_definition.container_definitions[0].linux_parameters.tmpfs[0].mount_options[0] #=> String
    #   resp.task_definition.container_definitions[0].linux_parameters.max_swap #=> Integer
    #   resp.task_definition.container_definitions[0].linux_parameters.swappiness #=> Integer
    #   resp.task_definition.container_definitions[0].secrets #=> Array
    #   resp.task_definition.container_definitions[0].secrets[0].name #=> String
    #   resp.task_definition.container_definitions[0].secrets[0].value_from #=> String
    #   resp.task_definition.container_definitions[0].depends_on #=> Array
    #   resp.task_definition.container_definitions[0].depends_on[0].container_name #=> String
    #   resp.task_definition.container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.task_definition.container_definitions[0].start_timeout #=> Integer
    #   resp.task_definition.container_definitions[0].stop_timeout #=> Integer
    #   resp.task_definition.container_definitions[0].version_consistency #=> String, one of "enabled", "disabled"
    #   resp.task_definition.container_definitions[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].user #=> String
    #   resp.task_definition.container_definitions[0].working_directory #=> String
    #   resp.task_definition.container_definitions[0].disable_networking #=> Boolean
    #   resp.task_definition.container_definitions[0].privileged #=> Boolean
    #   resp.task_definition.container_definitions[0].readonly_root_filesystem #=> Boolean
    #   resp.task_definition.container_definitions[0].dns_servers #=> Array
    #   resp.task_definition.container_definitions[0].dns_servers[0] #=> String
    #   resp.task_definition.container_definitions[0].dns_search_domains #=> Array
    #   resp.task_definition.container_definitions[0].dns_search_domains[0] #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts #=> Array
    #   resp.task_definition.container_definitions[0].extra_hosts[0].hostname #=> String
    #   resp.task_definition.container_definitions[0].extra_hosts[0].ip_address #=> String
    #   resp.task_definition.container_definitions[0].docker_security_options #=> Array
    #   resp.task_definition.container_definitions[0].docker_security_options[0] #=> String
    #   resp.task_definition.container_definitions[0].interactive #=> Boolean
    #   resp.task_definition.container_definitions[0].pseudo_terminal #=> Boolean
    #   resp.task_definition.container_definitions[0].docker_labels #=> Hash
    #   resp.task_definition.container_definitions[0].docker_labels["String"] #=> String
    #   resp.task_definition.container_definitions[0].ulimits #=> Array
    #   resp.task_definition.container_definitions[0].ulimits[0].name #=> String, one of "core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"
    #   resp.task_definition.container_definitions[0].ulimits[0].soft_limit #=> Integer
    #   resp.task_definition.container_definitions[0].ulimits[0].hard_limit #=> Integer
    #   resp.task_definition.container_definitions[0].log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.task_definition.container_definitions[0].log_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].log_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options #=> Array
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options[0].name #=> String
    #   resp.task_definition.container_definitions[0].log_configuration.secret_options[0].value_from #=> String
    #   resp.task_definition.container_definitions[0].health_check.command #=> Array
    #   resp.task_definition.container_definitions[0].health_check.command[0] #=> String
    #   resp.task_definition.container_definitions[0].health_check.interval #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.timeout #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.retries #=> Integer
    #   resp.task_definition.container_definitions[0].health_check.start_period #=> Integer
    #   resp.task_definition.container_definitions[0].system_controls #=> Array
    #   resp.task_definition.container_definitions[0].system_controls[0].namespace #=> String
    #   resp.task_definition.container_definitions[0].system_controls[0].value #=> String
    #   resp.task_definition.container_definitions[0].resource_requirements #=> Array
    #   resp.task_definition.container_definitions[0].resource_requirements[0].value #=> String
    #   resp.task_definition.container_definitions[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.task_definition.container_definitions[0].firelens_configuration.type #=> String, one of "fluentd", "fluentbit"
    #   resp.task_definition.container_definitions[0].firelens_configuration.options #=> Hash
    #   resp.task_definition.container_definitions[0].firelens_configuration.options["String"] #=> String
    #   resp.task_definition.container_definitions[0].credential_specs #=> Array
    #   resp.task_definition.container_definitions[0].credential_specs[0] #=> String
    #   resp.task_definition.family #=> String
    #   resp.task_definition.task_role_arn #=> String
    #   resp.task_definition.execution_role_arn #=> String
    #   resp.task_definition.network_mode #=> String, one of "bridge", "host", "awsvpc", "none"
    #   resp.task_definition.revision #=> Integer
    #   resp.task_definition.volumes #=> Array
    #   resp.task_definition.volumes[0].name #=> String
    #   resp.task_definition.volumes[0].host.source_path #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.scope #=> String, one of "task", "shared"
    #   resp.task_definition.volumes[0].docker_volume_configuration.autoprovision #=> Boolean
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.driver_opts["String"] #=> String
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels #=> Hash
    #   resp.task_definition.volumes[0].docker_volume_configuration.labels["String"] #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.file_system_id #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.root_directory #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.transit_encryption #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_definition.volumes[0].efs_volume_configuration.transit_encryption_port #=> Integer
    #   resp.task_definition.volumes[0].efs_volume_configuration.authorization_config.access_point_id #=> String
    #   resp.task_definition.volumes[0].efs_volume_configuration.authorization_config.iam #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.file_system_id #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.root_directory #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.credentials_parameter #=> String
    #   resp.task_definition.volumes[0].fsx_windows_file_server_volume_configuration.authorization_config.domain #=> String
    #   resp.task_definition.volumes[0].configured_at_launch #=> Boolean
    #   resp.task_definition.status #=> String, one of "ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"
    #   resp.task_definition.requires_attributes #=> Array
    #   resp.task_definition.requires_attributes[0].name #=> String
    #   resp.task_definition.requires_attributes[0].value #=> String
    #   resp.task_definition.requires_attributes[0].target_type #=> String, one of "container-instance"
    #   resp.task_definition.requires_attributes[0].target_id #=> String
    #   resp.task_definition.placement_constraints #=> Array
    #   resp.task_definition.placement_constraints[0].type #=> String, one of "memberOf"
    #   resp.task_definition.placement_constraints[0].expression #=> String
    #   resp.task_definition.compatibilities #=> Array
    #   resp.task_definition.compatibilities[0] #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_definition.runtime_platform.cpu_architecture #=> String, one of "X86_64", "ARM64"
    #   resp.task_definition.runtime_platform.operating_system_family #=> String, one of "WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"
    #   resp.task_definition.requires_compatibilities #=> Array
    #   resp.task_definition.requires_compatibilities[0] #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_definition.cpu #=> String
    #   resp.task_definition.memory #=> String
    #   resp.task_definition.inference_accelerators #=> Array
    #   resp.task_definition.inference_accelerators[0].device_name #=> String
    #   resp.task_definition.inference_accelerators[0].device_type #=> String
    #   resp.task_definition.pid_mode #=> String, one of "host", "task"
    #   resp.task_definition.ipc_mode #=> String, one of "host", "task", "none"
    #   resp.task_definition.proxy_configuration.type #=> String, one of "APPMESH"
    #   resp.task_definition.proxy_configuration.container_name #=> String
    #   resp.task_definition.proxy_configuration.properties #=> Array
    #   resp.task_definition.proxy_configuration.properties[0].name #=> String
    #   resp.task_definition.proxy_configuration.properties[0].value #=> String
    #   resp.task_definition.registered_at #=> Time
    #   resp.task_definition.deregistered_at #=> Time
    #   resp.task_definition.registered_by #=> String
    #   resp.task_definition.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.task_definition.enable_fault_injection #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RegisterTaskDefinition AWS API Documentation
    #
    # @overload register_task_definition(params = {})
    # @param [Hash] params ({})
    def register_task_definition(params = {}, options = {})
      req = build_request(:register_task_definition, params)
      req.send_request(options)
    end

    # Starts a new task using the specified task definition.
    #
    # <note markdown="1"> On March 21, 2024, a change was made to resolve the task definition
    # revision before authorization. When a task definition revision is not
    # specified, authorization will occur using the latest revision of a
    # task definition.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Elastic Inference (EI) is no longer available to customers.
    #
    #  </note>
    #
    # You can allow Amazon ECS to place tasks for you, or you can customize
    # how Amazon ECS places tasks using placement constraints and placement
    # strategies. For more information, see [Scheduling Tasks][1] in the
    # *Amazon Elastic Container Service Developer Guide*.
    #
    # Alternatively, you can use `StartTask` to use your own scheduler or
    # place tasks manually on specific container instances.
    #
    # You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
    # the volume when creating or updating a service. For more information,
    # see [Amazon EBS volumes][2] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    # The Amazon ECS API follows an eventual consistency model. This is
    # because of the distributed nature of the system supporting the API.
    # This means that the result of an API command you run that affects your
    # Amazon ECS resources might not be immediately visible to all
    # subsequent commands you run. Keep this in mind when you carry out an
    # API command that immediately follows a previous API command.
    #
    # To manage eventual consistency, you can do the following:
    #
    # * Confirm the state of the resource before you run a command to modify
    #   it. Run the DescribeTasks command using an exponential backoff
    #   algorithm to ensure that you allow enough time for the previous
    #   command to propagate through the system. To do this, run the
    #   DescribeTasks command repeatedly, starting with a couple of seconds
    #   of wait time and increasing gradually up to five minutes of wait
    #   time.
    #
    # * Add wait time between subsequent commands, even if the DescribeTasks
    #   command returns an accurate response. Apply an exponential backoff
    #   algorithm starting with a couple of seconds of wait time, and
    #   increase gradually up to about five minutes of wait time.
    #
    # If you get a `ConflictException` error, the `RunTask` request could
    # not be processed due to conflicts. The provided `clientToken` is
    # already in use with a different `RunTask` request. The `resourceIds`
    # are the existing task ARNs which are already associated with the
    # `clientToken`.
    #
    # To fix this issue:
    #
    # * Run `RunTask` with a unique `clientToken`.
    #
    # * Run `RunTask` with the `clientToken` and the original set of
    #   parameters
    #
    # If you get a `ClientException`error, the `RunTask` could not be
    # processed because you use managed scaling and there is a capacity
    # error because the quota of tasks in the `PROVISIONING` per cluster has
    # been reached. For information about the service quotas, see [Amazon
    # ECS service quotas][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html
    #
    # @option params [Array<Types::CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   The capacity provider strategy to use for the task.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   `launchType` is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #
    #   When you use cluster auto scaling, you must specify
    #   `capacityProviderStrategy` and not `launchType`.
    #
    #   A capacity provider strategy can contain a maximum of 20 capacity
    #   providers.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster to
    #   run your task on. If you do not specify a cluster, the default cluster
    #   is assumed.
    #
    #   Each account receives a default cluster the first time you use the
    #   service, but you may also create other clusters.
    #
    # @option params [Integer] :count
    #   The number of instantiations of the specified task to place on your
    #   cluster. You can specify up to 10 tasks for each call.
    #
    # @option params [Boolean] :enable_ecs_managed_tags
    #   Specifies whether to use Amazon ECS managed tags for the task. For
    #   more information, see [Tagging Your Amazon ECS Resources][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #
    # @option params [Boolean] :enable_execute_command
    #   Determines whether to use the execute command functionality for the
    #   containers in this task. If `true`, this enables execute command
    #   functionality on all containers in the task.
    #
    #   If `true`, then the task definition must have a task role, or you must
    #   provide one as an override.
    #
    # @option params [String] :group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   `family:my-family-name`).
    #
    # @option params [String] :launch_type
    #   The infrastructure to run your standalone task on. For more
    #   information, see [Amazon ECS launch types][1] in the *Amazon Elastic
    #   Container Service Developer Guide*.
    #
    #   The `FARGATE` launch type runs your tasks on Fargate On-Demand
    #   infrastructure.
    #
    #   <note markdown="1"> Fargate Spot infrastructure is available for use but a capacity
    #   provider strategy must be used. For more information, see [Fargate
    #   capacity providers][2] in the *Amazon ECS Developer Guide*.
    #
    #    </note>
    #
    #   The `EC2` launch type runs your tasks on Amazon EC2 instances
    #   registered to your cluster.
    #
    #   The `EXTERNAL` launch type runs your tasks on your on-premises server
    #   or virtual machine (VM) capacity registered to your cluster.
    #
    #   A task can use either a launch type or a capacity provider strategy.
    #   If a `launchType` is specified, the `capacityProviderStrategy`
    #   parameter must be omitted.
    #
    #   When you use cluster auto scaling, you must specify
    #   `capacityProviderStrategy` and not `launchType`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The network configuration for the task. This parameter is required for
    #   task definitions that use the `awsvpc` network mode to receive their
    #   own elastic network interface, and it isn't supported for other
    #   network modes. For more information, see [Task networking][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html
    #
    # @option params [Types::TaskOverride] :overrides
    #   A list of container overrides in JSON format that specify the name of
    #   a container in the specified task definition and the overrides it
    #   should receive. You can override the default command for a container
    #   (that's specified in the task definition or Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the task definition or Docker image)
    #   on a container or add new environment variables to it with an
    #   `environment` override.
    #
    #   A total of 8192 characters are allowed for overrides. This limit
    #   includes the JSON formatting characters of the override structure.
    #
    # @option params [Array<Types::PlacementConstraint>] :placement_constraints
    #   An array of placement constraint objects to use for the task. You can
    #   specify up to 10 constraints for each task (including constraints in
    #   the task definition and those specified at runtime).
    #
    # @option params [Array<Types::PlacementStrategy>] :placement_strategy
    #   The placement strategy objects to use for the task. You can specify a
    #   maximum of 5 strategy rules for each task.
    #
    # @option params [String] :platform_version
    #   The platform version the task uses. A platform version is only
    #   specified for tasks hosted on Fargate. If one isn't specified, the
    #   `LATEST` platform version is used. For more information, see [Fargate
    #   platform versions][1] in the *Amazon Elastic Container Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #
    # @option params [String] :propagate_tags
    #   Specifies whether to propagate the tags from the task definition to
    #   the task. If no value is specified, the tags aren't propagated. Tags
    #   can only be propagated to the task during task creation. To add tags
    #   to a task after task creation, use the[TagResource][1] API action.
    #
    #   <note markdown="1"> An error will be received if you specify the `SERVICE` option when
    #   running a task.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html
    #
    # @option params [String] :reference_id
    #   This parameter is only used by Amazon ECS. It is not intended for use
    #   by customers.
    #
    # @option params [String] :started_by
    #   An optional tag specified when a task is started. For example, if you
    #   automatically trigger a task to run a batch process job, you could
    #   apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a [ListTasks][1] call with the
    #   `startedBy` value. Up to 128 letters (uppercase and lowercase),
    #   numbers, hyphens (-), forward slash (/), and underscores (\_) are
    #   allowed.
    #
    #   If a task is started by an Amazon ECS service, then the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the task to help you categorize and
    #   organize them. Each tag consists of a key and an optional value, both
    #   of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @option params [required, String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run. If a `revision` isn't specified, the latest
    #   `ACTIVE` revision is used.
    #
    #   The full ARN value must match the value that you specified as the
    #   `Resource` of the principal's permissions policy.
    #
    #   When you specify a task definition, you must either specify a specific
    #   revision, or all revisions in the ARN.
    #
    #   To specify a specific revision, include the revision number in the
    #   ARN. For example, to specify revision 2, use
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:2`.
    #
    #   To specify all revisions, use the wildcard (*) in the ARN. For
    #   example, to specify all revisions, use
    #   `arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:*`.
    #
    #   For more information, see [Policy Resources for Amazon ECS][1] in the
    #   Amazon Elastic Container Service Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-resources
    #
    # @option params [String] :client_token
    #   An identifier that you provide to ensure the idempotency of the
    #   request. It must be unique and is case sensitive. Up to 64 characters
    #   are allowed. The valid characters are characters in the range of
    #   33-126, inclusive. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/ECS_Idempotency.html
    #
    # @option params [Array<Types::TaskVolumeConfiguration>] :volume_configurations
    #   The details of the volume that was `configuredAtLaunch`. You can
    #   configure the size, volumeType, IOPS, throughput, snapshot and
    #   encryption in in [TaskManagedEBSVolumeConfiguration][1]. The `name` of
    #   the volume must match the `name` from the task definition.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TaskManagedEBSVolumeConfiguration.html
    #
    # @return [Types::RunTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RunTaskResponse#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::RunTaskResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To run a task on your default cluster
    #
    #   # This example runs the specified task definition on your default cluster.
    #
    #   resp = client.run_task({
    #     cluster: "default", 
    #     task_definition: "sleep360:1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tasks: [
    #       {
    #         container_instance_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/default/ffe3d344-77e2-476c-a4d0-bf560ad50acb", 
    #         containers: [
    #           {
    #             name: "sleep", 
    #             container_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:container/default/58591c8e-be29-4ddf-95aa-ee459d4c59fd", 
    #             last_status: "PENDING", 
    #             task_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task/default/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0", 
    #           }, 
    #         ], 
    #         desired_status: "RUNNING", 
    #         last_status: "PENDING", 
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "sleep", 
    #             }, 
    #           ], 
    #         }, 
    #         task_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task/default/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0", 
    #         task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.run_task({
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1,
    #       },
    #     ],
    #     cluster: "String",
    #     count: 1,
    #     enable_ecs_managed_tags: false,
    #     enable_execute_command: false,
    #     group: "String",
    #     launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     overrides: {
    #       container_overrides: [
    #         {
    #           name: "String",
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           environment_files: [
    #             {
    #               value: "String", # required
    #               type: "s3", # required, accepts s3
    #             },
    #           ],
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU", # required, accepts GPU, InferenceAccelerator
    #             },
    #           ],
    #         },
    #       ],
    #       cpu: "String",
    #       inference_accelerator_overrides: [
    #         {
    #           device_name: "String",
    #           device_type: "String",
    #         },
    #       ],
    #       execution_role_arn: "String",
    #       memory: "String",
    #       task_role_arn: "String",
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       },
    #     },
    #     placement_constraints: [
    #       {
    #         type: "distinctInstance", # accepts distinctInstance, memberOf
    #         expression: "String",
    #       },
    #     ],
    #     placement_strategy: [
    #       {
    #         type: "random", # accepts random, spread, binpack
    #         field: "String",
    #       },
    #     ],
    #     platform_version: "String",
    #     propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE, NONE
    #     reference_id: "String",
    #     started_by: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     task_definition: "String", # required
    #     client_token: "String",
    #     volume_configurations: [
    #       {
    #         name: "ECSVolumeName", # required
    #         managed_ebs_volume: {
    #           encrypted: false,
    #           kms_key_id: "EBSKMSKeyId",
    #           volume_type: "EBSVolumeType",
    #           size_in_gi_b: 1,
    #           snapshot_id: "EBSSnapshotId",
    #           volume_initialization_rate: 1,
    #           iops: 1,
    #           throughput: 1,
    #           tag_specifications: [
    #             {
    #               resource_type: "volume", # required, accepts volume
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue",
    #                 },
    #               ],
    #               propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE, NONE
    #             },
    #           ],
    #           role_arn: "IAMRoleArn", # required
    #           termination_policy: {
    #             delete_on_termination: false, # required
    #           },
    #           filesystem_type: "ext3", # accepts ext3, ext4, xfs, ntfs
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].attachments #=> Array
    #   resp.tasks[0].attachments[0].id #=> String
    #   resp.tasks[0].attachments[0].type #=> String
    #   resp.tasks[0].attachments[0].status #=> String
    #   resp.tasks[0].attachments[0].details #=> Array
    #   resp.tasks[0].attachments[0].details[0].name #=> String
    #   resp.tasks[0].attachments[0].details[0].value #=> String
    #   resp.tasks[0].attributes #=> Array
    #   resp.tasks[0].attributes[0].name #=> String
    #   resp.tasks[0].attributes[0].value #=> String
    #   resp.tasks[0].attributes[0].target_type #=> String, one of "container-instance"
    #   resp.tasks[0].attributes[0].target_id #=> String
    #   resp.tasks[0].availability_zone #=> String
    #   resp.tasks[0].capacity_provider_name #=> String
    #   resp.tasks[0].cluster_arn #=> String
    #   resp.tasks[0].connectivity #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.tasks[0].connectivity_at #=> Time
    #   resp.tasks[0].container_instance_arn #=> String
    #   resp.tasks[0].containers #=> Array
    #   resp.tasks[0].containers[0].container_arn #=> String
    #   resp.tasks[0].containers[0].task_arn #=> String
    #   resp.tasks[0].containers[0].name #=> String
    #   resp.tasks[0].containers[0].image #=> String
    #   resp.tasks[0].containers[0].image_digest #=> String
    #   resp.tasks[0].containers[0].runtime_id #=> String
    #   resp.tasks[0].containers[0].last_status #=> String
    #   resp.tasks[0].containers[0].exit_code #=> Integer
    #   resp.tasks[0].containers[0].reason #=> String
    #   resp.tasks[0].containers[0].network_bindings #=> Array
    #   resp.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.tasks[0].containers[0].network_bindings[0].container_port_range #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].host_port_range #=> String
    #   resp.tasks[0].containers[0].network_interfaces #=> Array
    #   resp.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].private_ipv_4_address #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.tasks[0].containers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].containers[0].managed_agents #=> Array
    #   resp.tasks[0].containers[0].managed_agents[0].last_started_at #=> Time
    #   resp.tasks[0].containers[0].managed_agents[0].name #=> String, one of "ExecuteCommandAgent"
    #   resp.tasks[0].containers[0].managed_agents[0].reason #=> String
    #   resp.tasks[0].containers[0].managed_agents[0].last_status #=> String
    #   resp.tasks[0].containers[0].cpu #=> String
    #   resp.tasks[0].containers[0].memory #=> String
    #   resp.tasks[0].containers[0].memory_reservation #=> String
    #   resp.tasks[0].containers[0].gpu_ids #=> Array
    #   resp.tasks[0].containers[0].gpu_ids[0] #=> String
    #   resp.tasks[0].cpu #=> String
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].desired_status #=> String
    #   resp.tasks[0].enable_execute_command #=> Boolean
    #   resp.tasks[0].execution_stopped_at #=> Time
    #   resp.tasks[0].group #=> String
    #   resp.tasks[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].inference_accelerators #=> Array
    #   resp.tasks[0].inference_accelerators[0].device_name #=> String
    #   resp.tasks[0].inference_accelerators[0].device_type #=> String
    #   resp.tasks[0].last_status #=> String
    #   resp.tasks[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.tasks[0].memory #=> String
    #   resp.tasks[0].overrides.container_overrides #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].command #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment_files #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment_files[0].type #=> String, one of "s3"
    #   resp.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.tasks[0].overrides.cpu #=> String
    #   resp.tasks[0].overrides.inference_accelerator_overrides #=> Array
    #   resp.tasks[0].overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.tasks[0].overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.tasks[0].overrides.execution_role_arn #=> String
    #   resp.tasks[0].overrides.memory #=> String
    #   resp.tasks[0].overrides.task_role_arn #=> String
    #   resp.tasks[0].overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].platform_version #=> String
    #   resp.tasks[0].platform_family #=> String
    #   resp.tasks[0].pull_started_at #=> Time
    #   resp.tasks[0].pull_stopped_at #=> Time
    #   resp.tasks[0].started_at #=> Time
    #   resp.tasks[0].started_by #=> String
    #   resp.tasks[0].stop_code #=> String, one of "TaskFailedToStart", "EssentialContainerExited", "UserInitiated", "ServiceSchedulerInitiated", "SpotInterruption", "TerminationNotice"
    #   resp.tasks[0].stopped_at #=> Time
    #   resp.tasks[0].stopped_reason #=> String
    #   resp.tasks[0].stopping_at #=> Time
    #   resp.tasks[0].tags #=> Array
    #   resp.tasks[0].tags[0].key #=> String
    #   resp.tasks[0].tags[0].value #=> String
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].task_definition_arn #=> String
    #   resp.tasks[0].version #=> Integer
    #   resp.tasks[0].ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].fargate_ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/RunTask AWS API Documentation
    #
    # @overload run_task(params = {})
    # @param [Hash] params ({})
    def run_task(params = {}, options = {})
      req = build_request(:run_task, params)
      req.send_request(options)
    end

    # Starts a new task from the specified task definition on the specified
    # container instance or instances.
    #
    # <note markdown="1"> On March 21, 2024, a change was made to resolve the task definition
    # revision before authorization. When a task definition revision is not
    # specified, authorization will occur using the latest revision of a
    # task definition.
    #
    #  </note>
    #
    # <note markdown="1"> Amazon Elastic Inference (EI) is no longer available to customers.
    #
    #  </note>
    #
    # Alternatively, you can use`RunTask` to place tasks for you. For more
    # information, see [Scheduling Tasks][1] in the *Amazon Elastic
    # Container Service Developer Guide*.
    #
    # You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
    # the volume when creating or updating a service. For more information,
    # see [Amazon EBS volumes][2] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster where
    #   to start your task. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    # @option params [required, Array<String>] :container_instances
    #   The container instance IDs or full ARN entries for the container
    #   instances where you would like to place your task. You can specify up
    #   to 10 container instances.
    #
    # @option params [Boolean] :enable_ecs_managed_tags
    #   Specifies whether to use Amazon ECS managed tags for the task. For
    #   more information, see [Tagging Your Amazon ECS Resources][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #
    # @option params [Boolean] :enable_execute_command
    #   Whether or not the execute command functionality is turned on for the
    #   task. If `true`, this turns on the execute command functionality on
    #   all containers in the task.
    #
    # @option params [String] :group
    #   The name of the task group to associate with the task. The default
    #   value is the family name of the task definition (for example,
    #   family:my-family-name).
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   The VPC subnet and security group configuration for tasks that receive
    #   their own elastic network interface by using the `awsvpc` networking
    #   mode.
    #
    # @option params [Types::TaskOverride] :overrides
    #   A list of container overrides in JSON format that specify the name of
    #   a container in the specified task definition and the overrides it
    #   receives. You can override the default command for a container
    #   (that's specified in the task definition or Docker image) with a
    #   `command` override. You can also override existing environment
    #   variables (that are specified in the task definition or Docker image)
    #   on a container or add new environment variables to it with an
    #   `environment` override.
    #
    #   <note markdown="1"> A total of 8192 characters are allowed for overrides. This limit
    #   includes the JSON formatting characters of the override structure.
    #
    #    </note>
    #
    # @option params [String] :propagate_tags
    #   Specifies whether to propagate the tags from the task definition or
    #   the service to the task. If no value is specified, the tags aren't
    #   propagated.
    #
    # @option params [String] :reference_id
    #   This parameter is only used by Amazon ECS. It is not intended for use
    #   by customers.
    #
    # @option params [String] :started_by
    #   An optional tag specified when a task is started. For example, if you
    #   automatically trigger a task to run a batch process job, you could
    #   apply a unique identifier for that job to your task with the
    #   `startedBy` parameter. You can then identify which tasks belong to
    #   that job by filtering the results of a [ListTasks][1] call with the
    #   `startedBy` value. Up to 36 letters (uppercase and lowercase),
    #   numbers, hyphens (-), forward slash (/), and underscores (\_) are
    #   allowed.
    #
    #   If a task is started by an Amazon ECS service, the `startedBy`
    #   parameter contains the deployment ID of the service that starts it.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the task to help you categorize and
    #   organize them. Each tag consists of a key and an optional value, both
    #   of which you define.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @option params [required, String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to start. If a `revision` isn't specified, the latest
    #   `ACTIVE` revision is used.
    #
    # @option params [Array<Types::TaskVolumeConfiguration>] :volume_configurations
    #   The details of the volume that was `configuredAtLaunch`. You can
    #   configure the size, volumeType, IOPS, throughput, snapshot and
    #   encryption in [TaskManagedEBSVolumeConfiguration][1]. The `name` of
    #   the volume must match the `name` from the task definition.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TaskManagedEBSVolumeConfiguration.html
    #
    # @return [Types::StartTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTaskResponse#tasks #tasks} => Array&lt;Types::Task&gt;
    #   * {Types::StartTaskResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To start a new task
    #
    #   # This example starts a new task in the cluster "MyCluster" on the specified container instance using the latest revision
    #   # of the "hello-world" task definition.
    #
    #   resp = client.start_task({
    #     cluster: "MyCluster", 
    #     container_instances: [
    #       "4c543eed-f83f-47da-b1d8-3d23f1da4c64", 
    #     ], 
    #     task_definition: "hello-world", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     tasks: [
    #       {
    #         version: 1, 
    #         cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default", 
    #         container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/default/4c543eed-f83f-47da-b1d8-3d23f1da4c64", 
    #         containers: [
    #           {
    #             name: "wordpress", 
    #             container_arn: "arn:aws:ecs:us-east-1:012345678910:container/e76594d4-27e1-4c74-98b5-46a6435eb769", 
    #             last_status: "PENDING", 
    #             task_arn: "arn:aws:ecs:us-east-1:012345678910:task/default/fdf2c302-468c-4e55-b884-5331d816e7fb", 
    #           }, 
    #           {
    #             name: "mysql", 
    #             container_arn: "arn:aws:ecs:us-east-1:012345678910:container/default/b19106ea-4fa8-4f1d-9767-96922c82b070", 
    #             last_status: "PENDING", 
    #             task_arn: "arn:aws:ecs:us-east-1:012345678910:task/default/fdf2c302-468c-4e55-b884-5331d816e7fb", 
    #           }, 
    #         ], 
    #         created_at: Time.parse(1479765460.842), 
    #         desired_status: "RUNNING", 
    #         last_status: "PENDING", 
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "wordpress", 
    #             }, 
    #             {
    #               name: "mysql", 
    #             }, 
    #           ], 
    #         }, 
    #         task_arn: "arn:aws:ecs:us-east-1:012345678910:task/default/fdf2c302-468c-4e55-b884-5331d816e7fb", 
    #         task_definition_arn: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task({
    #     cluster: "String",
    #     container_instances: ["String"], # required
    #     enable_ecs_managed_tags: false,
    #     enable_execute_command: false,
    #     group: "String",
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     overrides: {
    #       container_overrides: [
    #         {
    #           name: "String",
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String",
    #             },
    #           ],
    #           environment_files: [
    #             {
    #               value: "String", # required
    #               type: "s3", # required, accepts s3
    #             },
    #           ],
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU", # required, accepts GPU, InferenceAccelerator
    #             },
    #           ],
    #         },
    #       ],
    #       cpu: "String",
    #       inference_accelerator_overrides: [
    #         {
    #           device_name: "String",
    #           device_type: "String",
    #         },
    #       ],
    #       execution_role_arn: "String",
    #       memory: "String",
    #       task_role_arn: "String",
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       },
    #     },
    #     propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE, NONE
    #     reference_id: "String",
    #     started_by: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #     task_definition: "String", # required
    #     volume_configurations: [
    #       {
    #         name: "ECSVolumeName", # required
    #         managed_ebs_volume: {
    #           encrypted: false,
    #           kms_key_id: "EBSKMSKeyId",
    #           volume_type: "EBSVolumeType",
    #           size_in_gi_b: 1,
    #           snapshot_id: "EBSSnapshotId",
    #           volume_initialization_rate: 1,
    #           iops: 1,
    #           throughput: 1,
    #           tag_specifications: [
    #             {
    #               resource_type: "volume", # required, accepts volume
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue",
    #                 },
    #               ],
    #               propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE, NONE
    #             },
    #           ],
    #           role_arn: "IAMRoleArn", # required
    #           termination_policy: {
    #             delete_on_termination: false, # required
    #           },
    #           filesystem_type: "ext3", # accepts ext3, ext4, xfs, ntfs
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tasks #=> Array
    #   resp.tasks[0].attachments #=> Array
    #   resp.tasks[0].attachments[0].id #=> String
    #   resp.tasks[0].attachments[0].type #=> String
    #   resp.tasks[0].attachments[0].status #=> String
    #   resp.tasks[0].attachments[0].details #=> Array
    #   resp.tasks[0].attachments[0].details[0].name #=> String
    #   resp.tasks[0].attachments[0].details[0].value #=> String
    #   resp.tasks[0].attributes #=> Array
    #   resp.tasks[0].attributes[0].name #=> String
    #   resp.tasks[0].attributes[0].value #=> String
    #   resp.tasks[0].attributes[0].target_type #=> String, one of "container-instance"
    #   resp.tasks[0].attributes[0].target_id #=> String
    #   resp.tasks[0].availability_zone #=> String
    #   resp.tasks[0].capacity_provider_name #=> String
    #   resp.tasks[0].cluster_arn #=> String
    #   resp.tasks[0].connectivity #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.tasks[0].connectivity_at #=> Time
    #   resp.tasks[0].container_instance_arn #=> String
    #   resp.tasks[0].containers #=> Array
    #   resp.tasks[0].containers[0].container_arn #=> String
    #   resp.tasks[0].containers[0].task_arn #=> String
    #   resp.tasks[0].containers[0].name #=> String
    #   resp.tasks[0].containers[0].image #=> String
    #   resp.tasks[0].containers[0].image_digest #=> String
    #   resp.tasks[0].containers[0].runtime_id #=> String
    #   resp.tasks[0].containers[0].last_status #=> String
    #   resp.tasks[0].containers[0].exit_code #=> Integer
    #   resp.tasks[0].containers[0].reason #=> String
    #   resp.tasks[0].containers[0].network_bindings #=> Array
    #   resp.tasks[0].containers[0].network_bindings[0].bind_ip #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].container_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].host_port #=> Integer
    #   resp.tasks[0].containers[0].network_bindings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.tasks[0].containers[0].network_bindings[0].container_port_range #=> String
    #   resp.tasks[0].containers[0].network_bindings[0].host_port_range #=> String
    #   resp.tasks[0].containers[0].network_interfaces #=> Array
    #   resp.tasks[0].containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].private_ipv_4_address #=> String
    #   resp.tasks[0].containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.tasks[0].containers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].containers[0].managed_agents #=> Array
    #   resp.tasks[0].containers[0].managed_agents[0].last_started_at #=> Time
    #   resp.tasks[0].containers[0].managed_agents[0].name #=> String, one of "ExecuteCommandAgent"
    #   resp.tasks[0].containers[0].managed_agents[0].reason #=> String
    #   resp.tasks[0].containers[0].managed_agents[0].last_status #=> String
    #   resp.tasks[0].containers[0].cpu #=> String
    #   resp.tasks[0].containers[0].memory #=> String
    #   resp.tasks[0].containers[0].memory_reservation #=> String
    #   resp.tasks[0].containers[0].gpu_ids #=> Array
    #   resp.tasks[0].containers[0].gpu_ids[0] #=> String
    #   resp.tasks[0].cpu #=> String
    #   resp.tasks[0].created_at #=> Time
    #   resp.tasks[0].desired_status #=> String
    #   resp.tasks[0].enable_execute_command #=> Boolean
    #   resp.tasks[0].execution_stopped_at #=> Time
    #   resp.tasks[0].group #=> String
    #   resp.tasks[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.tasks[0].inference_accelerators #=> Array
    #   resp.tasks[0].inference_accelerators[0].device_name #=> String
    #   resp.tasks[0].inference_accelerators[0].device_type #=> String
    #   resp.tasks[0].last_status #=> String
    #   resp.tasks[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.tasks[0].memory #=> String
    #   resp.tasks[0].overrides.container_overrides #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].command #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].command[0] #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].name #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment_files #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].environment_files[0].type #=> String, one of "s3"
    #   resp.tasks[0].overrides.container_overrides[0].cpu #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements #=> Array
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.tasks[0].overrides.container_overrides[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.tasks[0].overrides.cpu #=> String
    #   resp.tasks[0].overrides.inference_accelerator_overrides #=> Array
    #   resp.tasks[0].overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.tasks[0].overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.tasks[0].overrides.execution_role_arn #=> String
    #   resp.tasks[0].overrides.memory #=> String
    #   resp.tasks[0].overrides.task_role_arn #=> String
    #   resp.tasks[0].overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].platform_version #=> String
    #   resp.tasks[0].platform_family #=> String
    #   resp.tasks[0].pull_started_at #=> Time
    #   resp.tasks[0].pull_stopped_at #=> Time
    #   resp.tasks[0].started_at #=> Time
    #   resp.tasks[0].started_by #=> String
    #   resp.tasks[0].stop_code #=> String, one of "TaskFailedToStart", "EssentialContainerExited", "UserInitiated", "ServiceSchedulerInitiated", "SpotInterruption", "TerminationNotice"
    #   resp.tasks[0].stopped_at #=> Time
    #   resp.tasks[0].stopped_reason #=> String
    #   resp.tasks[0].stopping_at #=> Time
    #   resp.tasks[0].tags #=> Array
    #   resp.tasks[0].tags[0].key #=> String
    #   resp.tasks[0].tags[0].value #=> String
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].task_definition_arn #=> String
    #   resp.tasks[0].version #=> Integer
    #   resp.tasks[0].ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].fargate_ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.tasks[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StartTask AWS API Documentation
    #
    # @overload start_task(params = {})
    # @param [Hash] params ({})
    def start_task(params = {}, options = {})
      req = build_request(:start_task, params)
      req.send_request(options)
    end

    # Stops an ongoing service deployment.
    #
    # The following stop types are avaiable:
    #
    # * ROLLBACK - This option rolls back the service deployment to the
    #   previous service revision.
    #
    #   You can use this option even if you didn't configure the service
    #   deployment for the rollback option.
    #
    # For more information, see [Stopping Amazon ECS service deployments][1]
    # in the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/stop-service-deployment.html
    #
    # @option params [required, String] :service_deployment_arn
    #   The ARN of the service deployment that you want to stop.
    #
    # @option params [String] :stop_type
    #   How you want Amazon ECS to stop the service.
    #
    #   The valid values are `ROLLBACK`.
    #
    # @return [Types::StopServiceDeploymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopServiceDeploymentResponse#service_deployment_arn #service_deployment_arn} => String
    #
    #
    # @example Example: To stop a service deployment
    #
    #   # This example stops the service deployment using the ROLLBACK option.
    #
    #   resp = client.stop_service_deployment({
    #     service_deployment_arn: "arn:aws:ecs:us-east-1:123456789012:service-deployment/MyCluster/MyService/r9i43YFjvgF_xlg7m2eJ1r", 
    #     stop_type: "ROLLBACK", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service_deployment_arn: "arn:aws:ecs:us-east-1:123456789012:service-deployment/MyCluster/MyService/r9i43YFjvgF_xlg7m2eJ1r", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_service_deployment({
    #     service_deployment_arn: "String", # required
    #     stop_type: "ABORT", # accepts ABORT, ROLLBACK
    #   })
    #
    # @example Response structure
    #
    #   resp.service_deployment_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopServiceDeployment AWS API Documentation
    #
    # @overload stop_service_deployment(params = {})
    # @param [Hash] params ({})
    def stop_service_deployment(params = {}, options = {})
      req = build_request(:stop_service_deployment, params)
      req.send_request(options)
    end

    # Stops a running task. Any tags associated with the task will be
    # deleted.
    #
    # When you call `StopTask` on a task, the equivalent of `docker stop` is
    # issued to the containers running in the task. This results in a
    # `SIGTERM` value and a default 30-second timeout, after which the
    # `SIGKILL` value is sent and the containers are forcibly stopped. If
    # the container handles the `SIGTERM` value gracefully and exits within
    # 30 seconds from receiving it, no `SIGKILL` value is sent.
    #
    # For Windows containers, POSIX signals do not work and runtime stops
    # the container by sending a `CTRL_SHUTDOWN_EVENT`. For more
    # information, see [Unable to react to graceful shutdown of (Windows)
    # container #25982][1] on GitHub.
    #
    # <note markdown="1"> The default 30-second timeout can be configured on the Amazon ECS
    # container agent with the `ECS_CONTAINER_STOP_TIMEOUT` variable. For
    # more information, see [Amazon ECS Container Agent Configuration][2] in
    # the *Amazon Elastic Container Service Developer Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://github.com/moby/moby/issues/25982
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the task to stop. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    # @option params [required, String] :task
    #   Thefull Amazon Resource Name (ARN) of the task.
    #
    # @option params [String] :reason
    #   An optional message specified when a task is stopped. For example, if
    #   you're using a custom scheduler, you can use this parameter to
    #   specify the reason for stopping the task here, and the message appears
    #   in subsequent [DescribeTasks][1]&gt; API operations on this task.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html
    #
    # @return [Types::StopTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopTaskResponse#task #task} => Types::Task
    #
    #
    # @example Example: To stop a task
    #
    #   # This example stops a task with ID "1dc5c17a-422b-4dc4-b493-371970c6c4d6" in cluster "MyCluster".
    #
    #   resp = client.stop_task({
    #     cluster: "MyCluster", 
    #     reason: "testing stop task.", 
    #     task: "1dc5c17a-422b-4dc4-b493-371970c6c4d6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task: {
    #       version: 0, 
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/MyCluster", 
    #       container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/MyCluster/5991d8da-1d59-49d2-a31f-4230f9e73140", 
    #       containers: [
    #         {
    #           name: "simple-app", 
    #           container_arn: "arn:aws:ecs:us-east-1:012345678910:container/4df26bb4-f057-467b-a079-961675296e64", 
    #           last_status: "RUNNING", 
    #           network_bindings: [
    #             {
    #               bind_ip: "0.0.0.0", 
    #               container_port: 80, 
    #               host_port: 32774, 
    #               protocol: "tcp", 
    #             }, 
    #           ], 
    #           task_arn: "arn:aws:ecs:us-east-1:012345678910:task/MyCluster/1dc5c17a-422b-4dc4-b493-371970c6c4d6", 
    #         }, 
    #         {
    #           name: "busybox", 
    #           container_arn: "arn:aws:ecs:us-east-1:012345678910:container/e09064f7-7361-4c87-8ab9-8d073bbdbcb9", 
    #           last_status: "RUNNING", 
    #           network_bindings: [
    #           ], 
    #           task_arn: "arn:aws:ecs:us-east-1:012345678910:task/MyCluster/1dc5c17a-422b-4dc4-b493-371970c6c4d6", 
    #         }, 
    #       ], 
    #       created_at: Time.parse(1476822811.295), 
    #       desired_status: "STOPPED", 
    #       last_status: "RUNNING", 
    #       overrides: {
    #         container_overrides: [
    #           {
    #             name: "simple-app", 
    #           }, 
    #           {
    #             name: "busybox", 
    #           }, 
    #         ], 
    #       }, 
    #       started_at: Time.parse(1476822833.998), 
    #       started_by: "ecs-svc/9223370560032507596", 
    #       stopped_reason: "testing stop task.", 
    #       task_arn: "arn:aws:ecs:us-east-1:012345678910:task/1dc5c17a-422b-4dc4-b493-371970c6c4d6", 
    #       task_definition_arn: "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-dynamic-ports:1", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_task({
    #     cluster: "String",
    #     task: "String", # required
    #     reason: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.task.attachments #=> Array
    #   resp.task.attachments[0].id #=> String
    #   resp.task.attachments[0].type #=> String
    #   resp.task.attachments[0].status #=> String
    #   resp.task.attachments[0].details #=> Array
    #   resp.task.attachments[0].details[0].name #=> String
    #   resp.task.attachments[0].details[0].value #=> String
    #   resp.task.attributes #=> Array
    #   resp.task.attributes[0].name #=> String
    #   resp.task.attributes[0].value #=> String
    #   resp.task.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.task.attributes[0].target_id #=> String
    #   resp.task.availability_zone #=> String
    #   resp.task.capacity_provider_name #=> String
    #   resp.task.cluster_arn #=> String
    #   resp.task.connectivity #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.task.connectivity_at #=> Time
    #   resp.task.container_instance_arn #=> String
    #   resp.task.containers #=> Array
    #   resp.task.containers[0].container_arn #=> String
    #   resp.task.containers[0].task_arn #=> String
    #   resp.task.containers[0].name #=> String
    #   resp.task.containers[0].image #=> String
    #   resp.task.containers[0].image_digest #=> String
    #   resp.task.containers[0].runtime_id #=> String
    #   resp.task.containers[0].last_status #=> String
    #   resp.task.containers[0].exit_code #=> Integer
    #   resp.task.containers[0].reason #=> String
    #   resp.task.containers[0].network_bindings #=> Array
    #   resp.task.containers[0].network_bindings[0].bind_ip #=> String
    #   resp.task.containers[0].network_bindings[0].container_port #=> Integer
    #   resp.task.containers[0].network_bindings[0].host_port #=> Integer
    #   resp.task.containers[0].network_bindings[0].protocol #=> String, one of "tcp", "udp"
    #   resp.task.containers[0].network_bindings[0].container_port_range #=> String
    #   resp.task.containers[0].network_bindings[0].host_port_range #=> String
    #   resp.task.containers[0].network_interfaces #=> Array
    #   resp.task.containers[0].network_interfaces[0].attachment_id #=> String
    #   resp.task.containers[0].network_interfaces[0].private_ipv_4_address #=> String
    #   resp.task.containers[0].network_interfaces[0].ipv6_address #=> String
    #   resp.task.containers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.task.containers[0].managed_agents #=> Array
    #   resp.task.containers[0].managed_agents[0].last_started_at #=> Time
    #   resp.task.containers[0].managed_agents[0].name #=> String, one of "ExecuteCommandAgent"
    #   resp.task.containers[0].managed_agents[0].reason #=> String
    #   resp.task.containers[0].managed_agents[0].last_status #=> String
    #   resp.task.containers[0].cpu #=> String
    #   resp.task.containers[0].memory #=> String
    #   resp.task.containers[0].memory_reservation #=> String
    #   resp.task.containers[0].gpu_ids #=> Array
    #   resp.task.containers[0].gpu_ids[0] #=> String
    #   resp.task.cpu #=> String
    #   resp.task.created_at #=> Time
    #   resp.task.desired_status #=> String
    #   resp.task.enable_execute_command #=> Boolean
    #   resp.task.execution_stopped_at #=> Time
    #   resp.task.group #=> String
    #   resp.task.health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.task.inference_accelerators #=> Array
    #   resp.task.inference_accelerators[0].device_name #=> String
    #   resp.task.inference_accelerators[0].device_type #=> String
    #   resp.task.last_status #=> String
    #   resp.task.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task.memory #=> String
    #   resp.task.overrides.container_overrides #=> Array
    #   resp.task.overrides.container_overrides[0].name #=> String
    #   resp.task.overrides.container_overrides[0].command #=> Array
    #   resp.task.overrides.container_overrides[0].command[0] #=> String
    #   resp.task.overrides.container_overrides[0].environment #=> Array
    #   resp.task.overrides.container_overrides[0].environment[0].name #=> String
    #   resp.task.overrides.container_overrides[0].environment[0].value #=> String
    #   resp.task.overrides.container_overrides[0].environment_files #=> Array
    #   resp.task.overrides.container_overrides[0].environment_files[0].value #=> String
    #   resp.task.overrides.container_overrides[0].environment_files[0].type #=> String, one of "s3"
    #   resp.task.overrides.container_overrides[0].cpu #=> Integer
    #   resp.task.overrides.container_overrides[0].memory #=> Integer
    #   resp.task.overrides.container_overrides[0].memory_reservation #=> Integer
    #   resp.task.overrides.container_overrides[0].resource_requirements #=> Array
    #   resp.task.overrides.container_overrides[0].resource_requirements[0].value #=> String
    #   resp.task.overrides.container_overrides[0].resource_requirements[0].type #=> String, one of "GPU", "InferenceAccelerator"
    #   resp.task.overrides.cpu #=> String
    #   resp.task.overrides.inference_accelerator_overrides #=> Array
    #   resp.task.overrides.inference_accelerator_overrides[0].device_name #=> String
    #   resp.task.overrides.inference_accelerator_overrides[0].device_type #=> String
    #   resp.task.overrides.execution_role_arn #=> String
    #   resp.task.overrides.memory #=> String
    #   resp.task.overrides.task_role_arn #=> String
    #   resp.task.overrides.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.task.platform_version #=> String
    #   resp.task.platform_family #=> String
    #   resp.task.pull_started_at #=> Time
    #   resp.task.pull_stopped_at #=> Time
    #   resp.task.started_at #=> Time
    #   resp.task.started_by #=> String
    #   resp.task.stop_code #=> String, one of "TaskFailedToStart", "EssentialContainerExited", "UserInitiated", "ServiceSchedulerInitiated", "SpotInterruption", "TerminationNotice"
    #   resp.task.stopped_at #=> Time
    #   resp.task.stopped_reason #=> String
    #   resp.task.stopping_at #=> Time
    #   resp.task.tags #=> Array
    #   resp.task.tags[0].key #=> String
    #   resp.task.tags[0].value #=> String
    #   resp.task.task_arn #=> String
    #   resp.task.task_definition_arn #=> String
    #   resp.task.version #=> Integer
    #   resp.task.ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.task.fargate_ephemeral_storage.size_in_gi_b #=> Integer
    #   resp.task.fargate_ephemeral_storage.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/StopTask AWS API Documentation
    #
    # @overload stop_task(params = {})
    # @param [Hash] params ({})
    def stop_task(params = {}, options = {})
      req = build_request(:stop_task, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Sent to acknowledge that an attachment changed states.
    #
    # @option params [String] :cluster
    #   The short name or full ARN of the cluster that hosts the container
    #   instance the attachment belongs to.
    #
    # @option params [required, Array<Types::AttachmentStateChange>] :attachments
    #   Any attachments associated with the state change request.
    #
    # @return [Types::SubmitAttachmentStateChangesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitAttachmentStateChangesResponse#acknowledgment #acknowledgment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_attachment_state_changes({
    #     cluster: "String",
    #     attachments: [ # required
    #       {
    #         attachment_arn: "String", # required
    #         status: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.acknowledgment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitAttachmentStateChanges AWS API Documentation
    #
    # @overload submit_attachment_state_changes(params = {})
    # @param [Hash] params ({})
    def submit_attachment_state_changes(params = {}, options = {})
      req = build_request(:submit_attachment_state_changes, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Sent to acknowledge that a container changed states.
    #
    # @option params [String] :cluster
    #   The short name or full ARN of the cluster that hosts the container.
    #
    # @option params [String] :task
    #   The task ID or full Amazon Resource Name (ARN) of the task that hosts
    #   the container.
    #
    # @option params [String] :container_name
    #   The name of the container.
    #
    # @option params [String] :runtime_id
    #   The ID of the Docker container.
    #
    # @option params [String] :status
    #   The status of the state change request.
    #
    # @option params [Integer] :exit_code
    #   The exit code that's returned for the state change request.
    #
    # @option params [String] :reason
    #   The reason for the state change request.
    #
    # @option params [Array<Types::NetworkBinding>] :network_bindings
    #   The network bindings of the container.
    #
    # @return [Types::SubmitContainerStateChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitContainerStateChangeResponse#acknowledgment #acknowledgment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_container_state_change({
    #     cluster: "String",
    #     task: "String",
    #     container_name: "String",
    #     runtime_id: "String",
    #     status: "String",
    #     exit_code: 1,
    #     reason: "String",
    #     network_bindings: [
    #       {
    #         bind_ip: "String",
    #         container_port: 1,
    #         host_port: 1,
    #         protocol: "tcp", # accepts tcp, udp
    #         container_port_range: "String",
    #         host_port_range: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.acknowledgment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitContainerStateChange AWS API Documentation
    #
    # @overload submit_container_state_change(params = {})
    # @param [Hash] params ({})
    def submit_container_state_change(params = {}, options = {})
      req = build_request(:submit_container_state_change, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action is only used by the Amazon ECS agent, and it is not
    # intended for use outside of the agent.
    #
    #  </note>
    #
    # Sent to acknowledge that a task changed states.
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the task.
    #
    # @option params [String] :task
    #   The task ID or full ARN of the task in the state change request.
    #
    # @option params [String] :status
    #   The status of the state change request.
    #
    # @option params [String] :reason
    #   The reason for the state change request.
    #
    # @option params [Array<Types::ContainerStateChange>] :containers
    #   Any containers that's associated with the state change request.
    #
    # @option params [Array<Types::AttachmentStateChange>] :attachments
    #   Any attachments associated with the state change request.
    #
    # @option params [Array<Types::ManagedAgentStateChange>] :managed_agents
    #   The details for the managed agent that's associated with the task.
    #
    # @option params [Time,DateTime,Date,Integer,String] :pull_started_at
    #   The Unix timestamp for the time when the container image pull started.
    #
    # @option params [Time,DateTime,Date,Integer,String] :pull_stopped_at
    #   The Unix timestamp for the time when the container image pull
    #   completed.
    #
    # @option params [Time,DateTime,Date,Integer,String] :execution_stopped_at
    #   The Unix timestamp for the time when the task execution stopped.
    #
    # @return [Types::SubmitTaskStateChangeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitTaskStateChangeResponse#acknowledgment #acknowledgment} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_task_state_change({
    #     cluster: "String",
    #     task: "String",
    #     status: "String",
    #     reason: "String",
    #     containers: [
    #       {
    #         container_name: "String",
    #         image_digest: "String",
    #         runtime_id: "String",
    #         exit_code: 1,
    #         network_bindings: [
    #           {
    #             bind_ip: "String",
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp", # accepts tcp, udp
    #             container_port_range: "String",
    #             host_port_range: "String",
    #           },
    #         ],
    #         reason: "String",
    #         status: "String",
    #       },
    #     ],
    #     attachments: [
    #       {
    #         attachment_arn: "String", # required
    #         status: "String", # required
    #       },
    #     ],
    #     managed_agents: [
    #       {
    #         container_name: "String", # required
    #         managed_agent_name: "ExecuteCommandAgent", # required, accepts ExecuteCommandAgent
    #         status: "String", # required
    #         reason: "String",
    #       },
    #     ],
    #     pull_started_at: Time.now,
    #     pull_stopped_at: Time.now,
    #     execution_stopped_at: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.acknowledgment #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/SubmitTaskStateChange AWS API Documentation
    #
    # @overload submit_task_state_change(params = {})
    # @param [Hash] params ({})
    def submit_task_state_change(params = {}, options = {})
      req = build_request(:submit_task_state_change, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource aren't specified in the
    # request parameters, they aren't changed. When a resource is deleted,
    # the tags that are associated with that resource are deleted as well.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #   Currently, the supported resources are Amazon ECS capacity providers,
    #   tasks, services, task definitions, clusters, and container instances.
    #
    #   In order to tag a service that has the following ARN format, you need
    #   to migrate the service to the long ARN. For more information, see
    #   [Migrate an Amazon ECS short service ARN to a long ARN][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #   `arn:aws:ecs:region:aws_account_id:service/service-name`
    #
    #   After the migration is complete, the service has the long ARN format,
    #   as shown below. Use this ARN to tag the service.
    #
    #   `arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name`
    #
    #   If you try to tag a service with a short ARN, you receive an
    #   `InvalidParameterException` error.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-arn-migration.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the resource. A tag is an array of key-value pairs.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per resource - 50
    #
    #   * For each resource, each tag key must be unique, and each tag key can
    #     have only one value.
    #
    #   * Maximum key length - 128 Unicode characters in UTF-8
    #
    #   * Maximum value length - 256 Unicode characters in UTF-8
    #
    #   * If your tagging schema is used across multiple services and
    #     resources, remember that other services may have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     numbers, and spaces representable in UTF-8, and the following
    #     characters: + - = . \_ : / @.
    #
    #   * Tag keys and values are case-sensitive.
    #
    #   * Do not use `aws:`, `AWS:`, or any upper or lowercase combination of
    #     such as a prefix for either keys or values as it is reserved for
    #     Amazon Web Services use. You cannot edit or delete tag keys or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per resource limit.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To tag a cluster.
    #
    #   # This example tags the 'dev' cluster with key 'team' and value 'dev'.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:ecs:region:aws_account_id:cluster/dev", 
    #     tags: [
    #       {
    #         key: "team", 
    #         value: "dev", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to delete tags from.
    #   Currently, the supported resources are Amazon ECS capacity providers,
    #   tasks, services, task definitions, clusters, and container instances.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To untag a cluster.
    #
    #   # This example deletes the 'team' tag from the 'dev' cluster.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:ecs:region:aws_account_id:cluster/dev", 
    #     tag_keys: [
    #       "team", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies the parameters for a capacity provider.
    #
    # @option params [required, String] :name
    #   The name of the capacity provider to update.
    #
    # @option params [required, Types::AutoScalingGroupProviderUpdate] :auto_scaling_group_provider
    #   An object that represent the parameters to update for the Auto Scaling
    #   group capacity provider.
    #
    # @return [Types::UpdateCapacityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCapacityProviderResponse#capacity_provider #capacity_provider} => Types::CapacityProvider
    #
    #
    # @example Example: To update a capacity provider's parameters
    #
    #   # This example updates the targetCapacity and instanceWarmupPeriod parameters for the capacity provider MyCapacityProvider
    #   # to 90 and 150 respectively.
    #
    #   resp = client.update_capacity_provider({
    #     name: "MyCapacityProvider", 
    #     auto_scaling_group_provider: {
    #       managed_scaling: {
    #         instance_warmup_period: 150, 
    #         status: "ENABLED", 
    #         target_capacity: 90, 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     capacity_provider: {
    #       name: "MyCapacityProvider", 
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-east-1:132456789012:autoScalingGroup:57ffcb94-11f0-4d6d-bf60-3bac5EXAMPLE:autoScalingGroupName/MyASG", 
    #         managed_scaling: {
    #           instance_warmup_period: 150, 
    #           maximum_scaling_step_size: 10000, 
    #           minimum_scaling_step_size: 1, 
    #           status: "ENABLED", 
    #           target_capacity: 90, 
    #         }, 
    #         managed_termination_protection: "ENABLED", 
    #       }, 
    #       capacity_provider_arn: "arn:aws:ecs:us-east-1:123456789012:capacity-provider/MyCapacityProvider", 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #       update_status: "UPDATE_COMPLETE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_capacity_provider({
    #     name: "String", # required
    #     auto_scaling_group_provider: { # required
    #       managed_scaling: {
    #         status: "ENABLED", # accepts ENABLED, DISABLED
    #         target_capacity: 1,
    #         minimum_scaling_step_size: 1,
    #         maximum_scaling_step_size: 1,
    #         instance_warmup_period: 1,
    #       },
    #       managed_termination_protection: "ENABLED", # accepts ENABLED, DISABLED
    #       managed_draining: "ENABLED", # accepts ENABLED, DISABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_provider.capacity_provider_arn #=> String
    #   resp.capacity_provider.name #=> String
    #   resp.capacity_provider.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.capacity_provider.auto_scaling_group_provider.auto_scaling_group_arn #=> String
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.target_capacity #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.minimum_scaling_step_size #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.maximum_scaling_step_size #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_scaling.instance_warmup_period #=> Integer
    #   resp.capacity_provider.auto_scaling_group_provider.managed_termination_protection #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.auto_scaling_group_provider.managed_draining #=> String, one of "ENABLED", "DISABLED"
    #   resp.capacity_provider.update_status #=> String, one of "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.capacity_provider.update_status_reason #=> String
    #   resp.capacity_provider.tags #=> Array
    #   resp.capacity_provider.tags[0].key #=> String
    #   resp.capacity_provider.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateCapacityProvider AWS API Documentation
    #
    # @overload update_capacity_provider(params = {})
    # @param [Hash] params ({})
    def update_capacity_provider(params = {}, options = {})
      req = build_request(:update_capacity_provider, params)
      req.send_request(options)
    end

    # Updates the cluster.
    #
    # @option params [required, String] :cluster
    #   The name of the cluster to modify the settings for.
    #
    # @option params [Array<Types::ClusterSetting>] :settings
    #   The cluster settings for your cluster.
    #
    # @option params [Types::ClusterConfiguration] :configuration
    #   The execute command configuration for the cluster.
    #
    # @option params [Types::ClusterServiceConnectDefaultsRequest] :service_connect_defaults
    #   Use this parameter to set a default Service Connect namespace. After
    #   you set a default Service Connect namespace, any new services with
    #   Service Connect turned on that are created in the cluster are added as
    #   client services in the namespace. This setting only applies to new
    #   services that set the `enabled` parameter to `true` in the
    #   `ServiceConnectConfiguration`. You can set the namespace of each
    #   service individually in the `ServiceConnectConfiguration` to override
    #   this default parameter.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all of
    #   the clusters in the namespace. Tasks connect through a managed proxy
    #   container that collects logs and metrics for increased visibility.
    #   Only the tasks that Amazon ECS services create are supported with
    #   Service Connect. For more information, see [Service Connect][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @return [Types::UpdateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To update a cluster's observability settings.
    #
    #   # This example turns on enhanced containerInsights in an existing cluster. 
    #
    #   resp = client.update_cluster({
    #     cluster: "ECS-project-update-cluster", 
    #     settings: [
    #       {
    #         name: "containerInsights", 
    #         value: "enhanced", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       attachments: [
    #         {
    #           type: "as_policy", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt", 
    #             }, 
    #             {
    #               name: "scalingPolicyName", 
    #               value: "ECSManagedAutoScalingPolicy-152363a6-8c65-484c-b721-42c3e070ae93", 
    #             }, 
    #           ], 
    #           id: "069d002b-7634-42e4-b1d4-544f4c8f6380", 
    #           status: "CREATED", 
    #         }, 
    #         {
    #           type: "managed_draining", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt", 
    #             }, 
    #             {
    #               name: "autoScalingLifecycleHookName", 
    #               value: "ecs-managed-draining-termination-hook", 
    #             }, 
    #           ], 
    #           id: "08b5b6ca-45e9-4209-a65d-e962a27c490a", 
    #           status: "CREATED", 
    #         }, 
    #         {
    #           type: "sc", 
    #           details: [
    #           ], 
    #           id: "45d0b36f-8cff-46b6-9380-1288744802ab", 
    #           status: "ATTACHED", 
    #         }, 
    #       ], 
    #       attachments_status: "UPDATE_COMPLETE", 
    #       capacity_providers: [
    #         "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt", 
    #       ], 
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/ECS-project-update-cluster", 
    #       cluster_name: "ECS-project-update-cluster", 
    #       default_capacity_provider_strategy: [
    #         {
    #           base: 0, 
    #           capacity_provider: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt", 
    #           weight: 1, 
    #         }, 
    #       ], 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       service_connect_defaults: {
    #         namespace: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-igwrsylmy3kwvcdx", 
    #       }, 
    #       settings: [
    #         {
    #           name: "containerInsights", 
    #           value: "enhanced", 
    #         }, 
    #       ], 
    #       statistics: [
    #       ], 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Example: To update a cluster's Service Connect defaults.
    #
    #   # This example sets a default Service Connect namespace. 
    #
    #   resp = client.update_cluster({
    #     cluster: "ECS-project-update-cluster", 
    #     service_connect_defaults: {
    #       namespace: "test", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       attachments: [
    #         {
    #           type: "as_policy", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt", 
    #             }, 
    #             {
    #               name: "scalingPolicyName", 
    #               value: "ECSManagedAutoScalingPolicy-152363a6-8c65-484c-b721-42c3e070ae93", 
    #             }, 
    #           ], 
    #           id: "069d002b-7634-42e4-b1d4-544f4c8f6380", 
    #           status: "CREATED", 
    #         }, 
    #         {
    #           type: "managed_draining", 
    #           details: [
    #             {
    #               name: "capacityProviderName", 
    #               value: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt", 
    #             }, 
    #             {
    #               name: "autoScalingLifecycleHookName", 
    #               value: "ecs-managed-draining-termination-hook", 
    #             }, 
    #           ], 
    #           id: "08b5b6ca-45e9-4209-a65d-e962a27c490a", 
    #           status: "CREATED", 
    #         }, 
    #         {
    #           type: "sc", 
    #           details: [
    #           ], 
    #           id: "45d0b36f-8cff-46b6-9380-1288744802ab", 
    #           status: "DELETED", 
    #         }, 
    #         {
    #           type: "sc", 
    #           details: [
    #           ], 
    #           id: "3e6890c3-609c-4832-91de-d6ca891b3ef1", 
    #           status: "ATTACHED", 
    #         }, 
    #         {
    #           type: "sc", 
    #           details: [
    #           ], 
    #           id: "961b8ec1-c2f1-4070-8495-e669b7668e90", 
    #           status: "DELETED", 
    #         }, 
    #       ], 
    #       attachments_status: "UPDATE_COMPLETE", 
    #       capacity_providers: [
    #         "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt", 
    #       ], 
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/ECS-project-update-cluster", 
    #       cluster_name: "ECS-project-update-cluster", 
    #       default_capacity_provider_strategy: [
    #         {
    #           base: 0, 
    #           capacity_provider: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt", 
    #           weight: 1, 
    #         }, 
    #       ], 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       service_connect_defaults: {
    #         namespace: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-dtjmxqpfi46ht7dr", 
    #       }, 
    #       settings: [
    #         {
    #           name: "containerInsights", 
    #           value: "enhanced", 
    #         }, 
    #       ], 
    #       statistics: [
    #       ], 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster({
    #     cluster: "String", # required
    #     settings: [
    #       {
    #         name: "containerInsights", # accepts containerInsights
    #         value: "String",
    #       },
    #     ],
    #     configuration: {
    #       execute_command_configuration: {
    #         kms_key_id: "String",
    #         logging: "NONE", # accepts NONE, DEFAULT, OVERRIDE
    #         log_configuration: {
    #           cloud_watch_log_group_name: "String",
    #           cloud_watch_encryption_enabled: false,
    #           s3_bucket_name: "String",
    #           s3_encryption_enabled: false,
    #           s3_key_prefix: "String",
    #         },
    #       },
    #       managed_storage_configuration: {
    #         kms_key_id: "String",
    #         fargate_ephemeral_storage_kms_key_id: "String",
    #       },
    #     },
    #     service_connect_defaults: {
    #       namespace: "String", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.execute_command_configuration.logging #=> String, one of "NONE", "DEFAULT", "OVERRIDE"
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.cluster.configuration.managed_storage_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.managed_storage_configuration.fargate_ephemeral_storage_kms_key_id #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.registered_container_instances_count #=> Integer
    #   resp.cluster.running_tasks_count #=> Integer
    #   resp.cluster.pending_tasks_count #=> Integer
    #   resp.cluster.active_services_count #=> Integer
    #   resp.cluster.statistics #=> Array
    #   resp.cluster.statistics[0].name #=> String
    #   resp.cluster.statistics[0].value #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.settings #=> Array
    #   resp.cluster.settings[0].name #=> String, one of "containerInsights"
    #   resp.cluster.settings[0].value #=> String
    #   resp.cluster.capacity_providers #=> Array
    #   resp.cluster.capacity_providers[0] #=> String
    #   resp.cluster.default_capacity_provider_strategy #=> Array
    #   resp.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.cluster.attachments #=> Array
    #   resp.cluster.attachments[0].id #=> String
    #   resp.cluster.attachments[0].type #=> String
    #   resp.cluster.attachments[0].status #=> String
    #   resp.cluster.attachments[0].details #=> Array
    #   resp.cluster.attachments[0].details[0].name #=> String
    #   resp.cluster.attachments[0].details[0].value #=> String
    #   resp.cluster.attachments_status #=> String
    #   resp.cluster.service_connect_defaults.namespace #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateCluster AWS API Documentation
    #
    # @overload update_cluster(params = {})
    # @param [Hash] params ({})
    def update_cluster(params = {}, options = {})
      req = build_request(:update_cluster, params)
      req.send_request(options)
    end

    # Modifies the settings to use for a cluster.
    #
    # @option params [required, String] :cluster
    #   The name of the cluster to modify the settings for.
    #
    # @option params [required, Array<Types::ClusterSetting>] :settings
    #   The setting to use by default for a cluster. This parameter is used to
    #   turn on CloudWatch Container Insights for a cluster. If this value is
    #   specified, it overrides the `containerInsights` value set with
    #   [PutAccountSetting][1] or [PutAccountSettingDefault][2].
    #
    #   Currently, if you delete an existing cluster that does not have
    #   Container Insights turned on, and then create a new cluster with the
    #   same name with Container Insights tuned on, Container Insights will
    #   not actually be turned on. If you want to preserve the same name for
    #   your existing cluster and turn on Container Insights, you must wait 7
    #   days before you can re-create it.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html
    #
    # @return [Types::UpdateClusterSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterSettingsResponse#cluster #cluster} => Types::Cluster
    #
    #
    # @example Example: To update a cluster's settings
    #
    #   # This example enables CloudWatch Container Insights for the default cluster.
    #
    #   resp = client.update_cluster_settings({
    #     cluster: "default", 
    #     settings: [
    #       {
    #         name: "containerInsights", 
    #         value: "enabled", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster: {
    #       active_services_count: 0, 
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/MyCluster", 
    #       cluster_name: "default", 
    #       pending_tasks_count: 0, 
    #       registered_container_instances_count: 0, 
    #       running_tasks_count: 0, 
    #       settings: [
    #         {
    #           name: "containerInsights", 
    #           value: "enabled", 
    #         }, 
    #       ], 
    #       statistics: [
    #       ], 
    #       status: "ACTIVE", 
    #       tags: [
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster_settings({
    #     cluster: "String", # required
    #     settings: [ # required
    #       {
    #         name: "containerInsights", # accepts containerInsights
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.execute_command_configuration.logging #=> String, one of "NONE", "DEFAULT", "OVERRIDE"
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_log_group_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.cloud_watch_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_bucket_name #=> String
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_encryption_enabled #=> Boolean
    #   resp.cluster.configuration.execute_command_configuration.log_configuration.s3_key_prefix #=> String
    #   resp.cluster.configuration.managed_storage_configuration.kms_key_id #=> String
    #   resp.cluster.configuration.managed_storage_configuration.fargate_ephemeral_storage_kms_key_id #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.registered_container_instances_count #=> Integer
    #   resp.cluster.running_tasks_count #=> Integer
    #   resp.cluster.pending_tasks_count #=> Integer
    #   resp.cluster.active_services_count #=> Integer
    #   resp.cluster.statistics #=> Array
    #   resp.cluster.statistics[0].name #=> String
    #   resp.cluster.statistics[0].value #=> String
    #   resp.cluster.tags #=> Array
    #   resp.cluster.tags[0].key #=> String
    #   resp.cluster.tags[0].value #=> String
    #   resp.cluster.settings #=> Array
    #   resp.cluster.settings[0].name #=> String, one of "containerInsights"
    #   resp.cluster.settings[0].value #=> String
    #   resp.cluster.capacity_providers #=> Array
    #   resp.cluster.capacity_providers[0] #=> String
    #   resp.cluster.default_capacity_provider_strategy #=> Array
    #   resp.cluster.default_capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.cluster.default_capacity_provider_strategy[0].weight #=> Integer
    #   resp.cluster.default_capacity_provider_strategy[0].base #=> Integer
    #   resp.cluster.attachments #=> Array
    #   resp.cluster.attachments[0].id #=> String
    #   resp.cluster.attachments[0].type #=> String
    #   resp.cluster.attachments[0].status #=> String
    #   resp.cluster.attachments[0].details #=> Array
    #   resp.cluster.attachments[0].details[0].name #=> String
    #   resp.cluster.attachments[0].details[0].value #=> String
    #   resp.cluster.attachments_status #=> String
    #   resp.cluster.service_connect_defaults.namespace #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateClusterSettings AWS API Documentation
    #
    # @overload update_cluster_settings(params = {})
    # @param [Hash] params ({})
    def update_cluster_settings(params = {}, options = {})
      req = build_request(:update_cluster_settings, params)
      req.send_request(options)
    end

    # Updates the Amazon ECS container agent on a specified container
    # instance. Updating the Amazon ECS container agent doesn't interrupt
    # running tasks or services on the container instance. The process for
    # updating the agent differs depending on whether your container
    # instance was launched with the Amazon ECS-optimized AMI or another
    # operating system.
    #
    # <note markdown="1"> The `UpdateContainerAgent` API isn't supported for container
    # instances using the Amazon ECS-optimized Amazon Linux 2 (arm64) AMI.
    # To update the container agent, you can update the `ecs-init` package.
    # This updates the agent. For more information, see [Updating the Amazon
    # ECS container agent][1] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Agent updates with the `UpdateContainerAgent` API operation do not
    # apply to Windows container instances. We recommend that you launch new
    # container instances to update the agent version in your Windows
    # clusters.
    #
    #  </note>
    #
    # The `UpdateContainerAgent` API requires an Amazon ECS-optimized AMI or
    # Amazon Linux AMI with the `ecs-init` service installed and running.
    # For help updating the Amazon ECS container agent on other operating
    # systems, see [Manually updating the Amazon ECS container agent][2] in
    # the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   your container instance is running on. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, String] :container_instance
    #   The container instance ID or full ARN entries for the container
    #   instance where you would like to update the Amazon ECS container
    #   agent.
    #
    # @return [Types::UpdateContainerAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContainerAgentResponse#container_instance #container_instance} => Types::ContainerInstance
    #
    #
    # @example Example: To update the container agent version on a container instance
    #
    #   # This example updates the container agent version on the specified container instance in cluster MyCluster.
    #
    #   resp = client.update_container_agent({
    #     cluster: "MyCluster", 
    #     container_instance: "53ac7152-dcd1-4102-81f5-208962864132", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_instance: {
    #       agent_connected: true, 
    #       agent_update_status: "PENDING", 
    #       version_info: {
    #         agent_hash: "4023248", 
    #         agent_version: "1.0.0", 
    #         docker_version: "DockerVersion: 1.5.0", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_container_agent({
    #     cluster: "String",
    #     container_instance: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instance.container_instance_arn #=> String
    #   resp.container_instance.ec2_instance_id #=> String
    #   resp.container_instance.capacity_provider_name #=> String
    #   resp.container_instance.version #=> Integer
    #   resp.container_instance.version_info.agent_version #=> String
    #   resp.container_instance.version_info.agent_hash #=> String
    #   resp.container_instance.version_info.docker_version #=> String
    #   resp.container_instance.remaining_resources #=> Array
    #   resp.container_instance.remaining_resources[0].name #=> String
    #   resp.container_instance.remaining_resources[0].type #=> String
    #   resp.container_instance.remaining_resources[0].double_value #=> Float
    #   resp.container_instance.remaining_resources[0].long_value #=> Integer
    #   resp.container_instance.remaining_resources[0].integer_value #=> Integer
    #   resp.container_instance.remaining_resources[0].string_set_value #=> Array
    #   resp.container_instance.remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.registered_resources #=> Array
    #   resp.container_instance.registered_resources[0].name #=> String
    #   resp.container_instance.registered_resources[0].type #=> String
    #   resp.container_instance.registered_resources[0].double_value #=> Float
    #   resp.container_instance.registered_resources[0].long_value #=> Integer
    #   resp.container_instance.registered_resources[0].integer_value #=> Integer
    #   resp.container_instance.registered_resources[0].string_set_value #=> Array
    #   resp.container_instance.registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instance.status #=> String
    #   resp.container_instance.status_reason #=> String
    #   resp.container_instance.agent_connected #=> Boolean
    #   resp.container_instance.running_tasks_count #=> Integer
    #   resp.container_instance.pending_tasks_count #=> Integer
    #   resp.container_instance.agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instance.attributes #=> Array
    #   resp.container_instance.attributes[0].name #=> String
    #   resp.container_instance.attributes[0].value #=> String
    #   resp.container_instance.attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instance.attributes[0].target_id #=> String
    #   resp.container_instance.registered_at #=> Time
    #   resp.container_instance.attachments #=> Array
    #   resp.container_instance.attachments[0].id #=> String
    #   resp.container_instance.attachments[0].type #=> String
    #   resp.container_instance.attachments[0].status #=> String
    #   resp.container_instance.attachments[0].details #=> Array
    #   resp.container_instance.attachments[0].details[0].name #=> String
    #   resp.container_instance.attachments[0].details[0].value #=> String
    #   resp.container_instance.tags #=> Array
    #   resp.container_instance.tags[0].key #=> String
    #   resp.container_instance.tags[0].value #=> String
    #   resp.container_instance.health_status.overall_status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instance.health_status.details #=> Array
    #   resp.container_instance.health_status.details[0].type #=> String, one of "CONTAINER_RUNTIME"
    #   resp.container_instance.health_status.details[0].status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instance.health_status.details[0].last_updated #=> Time
    #   resp.container_instance.health_status.details[0].last_status_change #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerAgent AWS API Documentation
    #
    # @overload update_container_agent(params = {})
    # @param [Hash] params ({})
    def update_container_agent(params = {}, options = {})
      req = build_request(:update_container_agent, params)
      req.send_request(options)
    end

    # Modifies the status of an Amazon ECS container instance.
    #
    # Once a container instance has reached an `ACTIVE` state, you can
    # change the status of a container instance to `DRAINING` to manually
    # remove an instance from a cluster, for example to perform system
    # updates, update the Docker daemon, or scale down the cluster size.
    #
    # A container instance can't be changed to `DRAINING` until it has
    # reached an `ACTIVE` status. If the instance is in any other status, an
    # error will be received.
    #
    # When you set a container instance to `DRAINING`, Amazon ECS prevents
    # new tasks from being scheduled for placement on the container instance
    # and replacement service tasks are started on other container instances
    # in the cluster if the resources are available. Service tasks on the
    # container instance that are in the `PENDING` state are stopped
    # immediately.
    #
    # Service tasks on the container instance that are in the `RUNNING`
    # state are stopped and replaced according to the service's deployment
    # configuration parameters, `minimumHealthyPercent` and
    # `maximumPercent`. You can change the deployment configuration of your
    # service using [UpdateService][1].
    #
    # * If `minimumHealthyPercent` is below 100%, the scheduler can ignore
    #   `desiredCount` temporarily during task replacement. For example,
    #   `desiredCount` is four tasks, a minimum of 50% allows the scheduler
    #   to stop two existing tasks before starting two new tasks. If the
    #   minimum is 100%, the service scheduler can't remove existing tasks
    #   until the replacement tasks are considered healthy. Tasks for
    #   services that do not use a load balancer are considered healthy if
    #   they're in the `RUNNING` state. Tasks for services that use a load
    #   balancer are considered healthy if they're in the `RUNNING` state
    #   and are reported as healthy by the load balancer.
    #
    # * The `maximumPercent` parameter represents an upper limit on the
    #   number of running tasks during task replacement. You can use this to
    #   define the replacement batch size. For example, if `desiredCount` is
    #   four tasks, a maximum of 200% starts four new tasks before stopping
    #   the four tasks to be drained, provided that the cluster resources
    #   required to do this are available. If the maximum is 100%, then
    #   replacement tasks can't start until the draining tasks have
    #   stopped.
    #
    # Any `PENDING` or `RUNNING` tasks that do not belong to a service
    # aren't affected. You must wait for them to finish or stop them
    # manually.
    #
    # A container instance has completed draining when it has no more
    # `RUNNING` tasks. You can verify this using [ListTasks][2].
    #
    # When a container instance has been drained, you can set a container
    # instance to `ACTIVE` status and once it has reached that status the
    # Amazon ECS scheduler can begin scheduling tasks on the instance again.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the container instance to update. If you do not specify a
    #   cluster, the default cluster is assumed.
    #
    # @option params [required, Array<String>] :container_instances
    #   A list of up to 10 container instance IDs or full ARN entries.
    #
    # @option params [required, String] :status
    #   The container instance state to update the container instance with.
    #   The only valid values for this action are `ACTIVE` and `DRAINING`. A
    #   container instance can only be updated to `DRAINING` status once it
    #   has reached an `ACTIVE` state. If a container instance is in
    #   `REGISTERING`, `DEREGISTERING`, or `REGISTRATION_FAILED` state you can
    #   describe the container instance but can't update the container
    #   instance state.
    #
    # @return [Types::UpdateContainerInstancesStateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContainerInstancesStateResponse#container_instances #container_instances} => Array&lt;Types::ContainerInstance&gt;
    #   * {Types::UpdateContainerInstancesStateResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To update the state of a container instance
    #
    #   # This example updates the state of the specified container instance in the default cluster to DRAINING. 
    #
    #   resp = client.update_container_instances_state({
    #     cluster: "default", 
    #     container_instances: [
    #       "1c3be8ed-df30-47b4-8f1e-6e68ebd01f34", 
    #     ], 
    #     status: "DRAINING", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     container_instances: [
    #       {
    #         version: 30, 
    #         agent_connected: true, 
    #         attributes: [
    #           {
    #             name: "ecs.availability-zone", 
    #             value: "us-west-2b", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.logging-driver.syslog", 
    #           }, 
    #           {
    #             name: "ecs.instance-type", 
    #             value: "c4.xlarge", 
    #           }, 
    #           {
    #             name: "ecs.ami-id", 
    #             value: "ami-a2ca61c2", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.task-iam-role-network-host", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.logging-driver.awslogs", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.logging-driver.json-file", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.17", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.privileged-container", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.18", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.19", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.ecr-auth", 
    #           }, 
    #           {
    #             name: "ecs.os-type", 
    #             value: "linux", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.20", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.21", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.22", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.task-iam-role", 
    #           }, 
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.23", 
    #           }, 
    #         ], 
    #         container_instance_arn: "arn:aws:ecs:us-west-2:012345678910:container-instance/default/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34", 
    #         ec2_instance_id: "i-05d99c76955727ec6", 
    #         pending_tasks_count: 0, 
    #         registered_resources: [
    #           {
    #             name: "CPU", 
    #             type: "INTEGER", 
    #             double_value: 0, 
    #             integer_value: 4096, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "MEMORY", 
    #             type: "INTEGER", 
    #             double_value: 0, 
    #             integer_value: 7482, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "PORTS", 
    #             type: "STRINGSET", 
    #             double_value: 0, 
    #             integer_value: 0, 
    #             long_value: 0, 
    #             string_set_value: [
    #               "22", 
    #               "2376", 
    #               "2375", 
    #               "51678", 
    #               "51679", 
    #             ], 
    #           }, 
    #           {
    #             name: "PORTS_UDP", 
    #             type: "STRINGSET", 
    #             double_value: 0, 
    #             integer_value: 0, 
    #             long_value: 0, 
    #             string_set_value: [
    #             ], 
    #           }, 
    #         ], 
    #         remaining_resources: [
    #           {
    #             name: "CPU", 
    #             type: "INTEGER", 
    #             double_value: 0, 
    #             integer_value: 4096, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "MEMORY", 
    #             type: "INTEGER", 
    #             double_value: 0, 
    #             integer_value: 7482, 
    #             long_value: 0, 
    #           }, 
    #           {
    #             name: "PORTS", 
    #             type: "STRINGSET", 
    #             double_value: 0, 
    #             integer_value: 0, 
    #             long_value: 0, 
    #             string_set_value: [
    #               "22", 
    #               "2376", 
    #               "2375", 
    #               "51678", 
    #               "51679", 
    #             ], 
    #           }, 
    #           {
    #             name: "PORTS_UDP", 
    #             type: "STRINGSET", 
    #             double_value: 0, 
    #             integer_value: 0, 
    #             long_value: 0, 
    #             string_set_value: [
    #             ], 
    #           }, 
    #         ], 
    #         running_tasks_count: 0, 
    #         status: "DRAINING", 
    #         version_info: {
    #           agent_hash: "efe53c6", 
    #           agent_version: "1.13.1", 
    #           docker_version: "DockerVersion: 1.11.2", 
    #         }, 
    #       }, 
    #     ], 
    #     failures: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_container_instances_state({
    #     cluster: "String",
    #     container_instances: ["String"], # required
    #     status: "ACTIVE", # required, accepts ACTIVE, DRAINING, REGISTERING, DEREGISTERING, REGISTRATION_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.container_instances #=> Array
    #   resp.container_instances[0].container_instance_arn #=> String
    #   resp.container_instances[0].ec2_instance_id #=> String
    #   resp.container_instances[0].capacity_provider_name #=> String
    #   resp.container_instances[0].version #=> Integer
    #   resp.container_instances[0].version_info.agent_version #=> String
    #   resp.container_instances[0].version_info.agent_hash #=> String
    #   resp.container_instances[0].version_info.docker_version #=> String
    #   resp.container_instances[0].remaining_resources #=> Array
    #   resp.container_instances[0].remaining_resources[0].name #=> String
    #   resp.container_instances[0].remaining_resources[0].type #=> String
    #   resp.container_instances[0].remaining_resources[0].double_value #=> Float
    #   resp.container_instances[0].remaining_resources[0].long_value #=> Integer
    #   resp.container_instances[0].remaining_resources[0].integer_value #=> Integer
    #   resp.container_instances[0].remaining_resources[0].string_set_value #=> Array
    #   resp.container_instances[0].remaining_resources[0].string_set_value[0] #=> String
    #   resp.container_instances[0].registered_resources #=> Array
    #   resp.container_instances[0].registered_resources[0].name #=> String
    #   resp.container_instances[0].registered_resources[0].type #=> String
    #   resp.container_instances[0].registered_resources[0].double_value #=> Float
    #   resp.container_instances[0].registered_resources[0].long_value #=> Integer
    #   resp.container_instances[0].registered_resources[0].integer_value #=> Integer
    #   resp.container_instances[0].registered_resources[0].string_set_value #=> Array
    #   resp.container_instances[0].registered_resources[0].string_set_value[0] #=> String
    #   resp.container_instances[0].status #=> String
    #   resp.container_instances[0].status_reason #=> String
    #   resp.container_instances[0].agent_connected #=> Boolean
    #   resp.container_instances[0].running_tasks_count #=> Integer
    #   resp.container_instances[0].pending_tasks_count #=> Integer
    #   resp.container_instances[0].agent_update_status #=> String, one of "PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"
    #   resp.container_instances[0].attributes #=> Array
    #   resp.container_instances[0].attributes[0].name #=> String
    #   resp.container_instances[0].attributes[0].value #=> String
    #   resp.container_instances[0].attributes[0].target_type #=> String, one of "container-instance"
    #   resp.container_instances[0].attributes[0].target_id #=> String
    #   resp.container_instances[0].registered_at #=> Time
    #   resp.container_instances[0].attachments #=> Array
    #   resp.container_instances[0].attachments[0].id #=> String
    #   resp.container_instances[0].attachments[0].type #=> String
    #   resp.container_instances[0].attachments[0].status #=> String
    #   resp.container_instances[0].attachments[0].details #=> Array
    #   resp.container_instances[0].attachments[0].details[0].name #=> String
    #   resp.container_instances[0].attachments[0].details[0].value #=> String
    #   resp.container_instances[0].tags #=> Array
    #   resp.container_instances[0].tags[0].key #=> String
    #   resp.container_instances[0].tags[0].value #=> String
    #   resp.container_instances[0].health_status.overall_status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instances[0].health_status.details #=> Array
    #   resp.container_instances[0].health_status.details[0].type #=> String, one of "CONTAINER_RUNTIME"
    #   resp.container_instances[0].health_status.details[0].status #=> String, one of "OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"
    #   resp.container_instances[0].health_status.details[0].last_updated #=> Time
    #   resp.container_instances[0].health_status.details[0].last_status_change #=> Time
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateContainerInstancesState AWS API Documentation
    #
    # @overload update_container_instances_state(params = {})
    # @param [Hash] params ({})
    def update_container_instances_state(params = {}, options = {})
      req = build_request(:update_container_instances_state, params)
      req.send_request(options)
    end

    # Modifies the parameters of a service.
    #
    # <note markdown="1"> On March 21, 2024, a change was made to resolve the task definition
    # revision before authorization. When a task definition revision is not
    # specified, authorization will occur using the latest revision of a
    # task definition.
    #
    #  </note>
    #
    # For services using the rolling update (`ECS`) you can update the
    # desired count, deployment configuration, network configuration, load
    # balancers, service registries, enable ECS managed tags option,
    # propagate tags option, task placement constraints and strategies, and
    # task definition. When you update any of these parameters, Amazon ECS
    # starts new tasks with the new configuration.
    #
    # You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
    # the volume when starting or running a task, or when creating or
    # updating a service. For more information, see [Amazon EBS volumes][1]
    # in the *Amazon Elastic Container Service Developer Guide*. You can
    # update your volume configurations and trigger a new deployment.
    # `volumeConfigurations` is only supported for REPLICA service and not
    # DAEMON service. If you leave `volumeConfigurations` `null`, it
    # doesn't trigger a new deployment. For more information on volumes,
    # see [Amazon EBS volumes][1] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    # For services using the blue/green (`CODE_DEPLOY`) deployment
    # controller, only the desired count, deployment configuration, health
    # check grace period, task placement constraints and strategies, enable
    # ECS managed tags option, and propagate tags can be updated using this
    # API. If the network configuration, platform version, task definition,
    # or load balancer need to be updated, create a new CodeDeploy
    # deployment. For more information, see [CreateDeployment][2] in the
    # *CodeDeploy API Reference*.
    #
    # For services using an external deployment controller, you can update
    # only the desired count, task placement constraints and strategies,
    # health check grace period, enable ECS managed tags option, and
    # propagate tags option, using this API. If the launch type, load
    # balancer, network configuration, platform version, or task definition
    # need to be updated, create a new task set For more information, see
    # [CreateTaskSet][3].
    #
    # You can add to or subtract from the number of instantiations of a task
    # definition in a service by specifying the cluster that the service is
    # running in and a new `desiredCount` parameter.
    #
    # You can attach Amazon EBS volumes to Amazon ECS tasks by configuring
    # the volume when starting or running a task, or when creating or
    # updating a service. For more information, see [Amazon EBS volumes][1]
    # in the *Amazon Elastic Container Service Developer Guide*.
    #
    # If you have updated the container image of your application, you can
    # create a new task definition with that image and deploy it to your
    # service. The service scheduler uses the minimum healthy percent and
    # maximum percent parameters (in the service's deployment
    # configuration) to determine the deployment strategy.
    #
    # <note markdown="1"> If your updated Docker image uses the same tag as what is in the
    # existing task definition for your service (for example,
    # `my_image:latest`), you don't need to create a new revision of your
    # task definition. You can update the service using the
    # `forceNewDeployment` option. The new tasks launched by the deployment
    # pull the current image/tag combination from your repository when they
    # start.
    #
    #  </note>
    #
    # You can also update the deployment configuration of a service. When a
    # deployment is triggered by updating the task definition of a service,
    # the service scheduler uses the deployment configuration parameters,
    # `minimumHealthyPercent` and `maximumPercent`, to determine the
    # deployment strategy.
    #
    # * If `minimumHealthyPercent` is below 100%, the scheduler can ignore
    #   `desiredCount` temporarily during a deployment. For example, if
    #   `desiredCount` is four tasks, a minimum of 50% allows the scheduler
    #   to stop two existing tasks before starting two new tasks. Tasks for
    #   services that don't use a load balancer are considered healthy if
    #   they're in the `RUNNING` state. Tasks for services that use a load
    #   balancer are considered healthy if they're in the `RUNNING` state
    #   and are reported as healthy by the load balancer.
    #
    # * The `maximumPercent` parameter represents an upper limit on the
    #   number of running tasks during a deployment. You can use it to
    #   define the deployment batch size. For example, if `desiredCount` is
    #   four tasks, a maximum of 200% starts four new tasks before stopping
    #   the four older tasks (provided that the cluster resources required
    #   to do this are available).
    #
    # When [UpdateService][4] stops a task during a deployment, the
    # equivalent of `docker stop` is issued to the containers running in the
    # task. This results in a `SIGTERM` and a 30-second timeout. After this,
    # `SIGKILL` is sent and the containers are forcibly stopped. If the
    # container handles the `SIGTERM` gracefully and exits within 30 seconds
    # from receiving it, no `SIGKILL` is sent.
    #
    # When the service scheduler launches new tasks, it determines task
    # placement in your cluster with the following logic.
    #
    # * Determine which of the container instances in your cluster can
    #   support your service's task definition. For example, they have the
    #   required CPU, memory, ports, and container instance attributes.
    #
    # * By default, the service scheduler attempts to balance tasks across
    #   Availability Zones in this manner even though you can choose a
    #   different placement strategy.
    #
    #   * Sort the valid container instances by the fewest number of running
    #     tasks for this service in the same Availability Zone as the
    #     instance. For example, if zone A has one running service task and
    #     zones B and C each have zero, valid container instances in either
    #     zone B or C are considered optimal for placement.
    #
    #   * Place the new service task on a valid container instance in an
    #     optimal Availability Zone (based on the previous steps), favoring
    #     container instances with the fewest number of running tasks for
    #     this service.
    #
    # When the service scheduler stops running tasks, it attempts to
    # maintain balance across the Availability Zones in your cluster using
    # the following logic:
    #
    # * Sort the container instances by the largest number of running tasks
    #   for this service in the same Availability Zone as the instance. For
    #   example, if zone A has one running service task and zones B and C
    #   each have two, container instances in either zone B or C are
    #   considered optimal for termination.
    #
    # * Stop the task on a container instance in an optimal Availability
    #   Zone (based on the previous steps), favoring container instances
    #   with the largest number of running tasks for this service.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types
    # [2]: https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html
    # [4]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html
    #
    # @option params [String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   your service runs on. If you do not specify a cluster, the default
    #   cluster is assumed.
    #
    #   You can't change the cluster name.
    #
    # @option params [required, String] :service
    #   The name of the service to update.
    #
    # @option params [Integer] :desired_count
    #   The number of instantiations of the task to place and keep running in
    #   your service.
    #
    # @option params [String] :task_definition
    #   The `family` and `revision` (`family:revision`) or full ARN of the
    #   task definition to run in your service. If a `revision` is not
    #   specified, the latest `ACTIVE` revision is used. If you modify the
    #   task definition with `UpdateService`, Amazon ECS spawns a task with
    #   the new version of the task definition and then stops an old task
    #   after the new version is running.
    #
    # @option params [Array<Types::CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   The details of a capacity provider strategy. You can set a capacity
    #   provider when you create a cluster, run a task, or update a service.
    #
    #   When you use Fargate, the capacity providers are `FARGATE` or
    #   `FARGATE_SPOT`.
    #
    #   When you use Amazon EC2, the capacity providers are Auto Scaling
    #   groups.
    #
    #   You can change capacity providers for rolling deployments and
    #   blue/green deployments.
    #
    #   The following list provides the valid transitions:
    #
    #   * Update the Fargate launch type to an Auto Scaling group capacity
    #     provider.
    #
    #   * Update the Amazon EC2 launch type to a Fargate capacity provider.
    #
    #   * Update the Fargate capacity provider to an Auto Scaling group
    #     capacity provider.
    #
    #   * Update the Amazon EC2 capacity provider to a Fargate capacity
    #     provider.
    #
    #   * Update the Auto Scaling group or Fargate capacity provider back to
    #     the launch type.
    #
    #     Pass an empty list in the `capacityProviderStrategy` parameter.
    #
    #   For information about Amazon Web Services CDK considerations, see
    #   [Amazon Web Services CDK considerations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/update-service-parameters.html
    #
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   Optional deployment parameters that control how many tasks run during
    #   the deployment and the ordering of stopping and starting tasks.
    #
    # @option params [String] :availability_zone_rebalancing
    #   Indicates whether to use Availability Zone rebalancing for the
    #   service.
    #
    #   For more information, see [Balancing an Amazon ECS service across
    #   Availability Zones][1] in the <i> <i>Amazon Elastic Container Service
    #   Developer Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html
    #
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   An object representing the network configuration for the service.
    #
    # @option params [Array<Types::PlacementConstraint>] :placement_constraints
    #   An array of task placement constraint objects to update the service to
    #   use. If no value is specified, the existing placement constraints for
    #   the service will remain unchanged. If this value is specified, it will
    #   override any existing placement constraints defined for the service.
    #   To remove all existing placement constraints, specify an empty array.
    #
    #   You can specify a maximum of 10 constraints for each task. This limit
    #   includes constraints in the task definition and those specified at
    #   runtime.
    #
    # @option params [Array<Types::PlacementStrategy>] :placement_strategy
    #   The task placement strategy objects to update the service to use. If
    #   no value is specified, the existing placement strategy for the service
    #   will remain unchanged. If this value is specified, it will override
    #   the existing placement strategy defined for the service. To remove an
    #   existing placement strategy, specify an empty object.
    #
    #   You can specify a maximum of five strategy rules for each service.
    #
    # @option params [String] :platform_version
    #   The platform version that your tasks in the service run on. A platform
    #   version is only specified for tasks using the Fargate launch type. If
    #   a platform version is not specified, the `LATEST` platform version is
    #   used. For more information, see [Fargate Platform Versions][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #
    # @option params [Boolean] :force_new_deployment
    #   Determines whether to force a new deployment of the service. By
    #   default, deployments aren't forced. You can use this option to start
    #   a new deployment with no service definition changes. For example, you
    #   can update a service's tasks to use a newer Docker image with the
    #   same image/tag combination (`my_image:latest`) or to roll Fargate
    #   tasks onto a newer platform version.
    #
    # @option params [Integer] :health_check_grace_period_seconds
    #   The period of time, in seconds, that the Amazon ECS service scheduler
    #   ignores unhealthy Elastic Load Balancing, VPC Lattice, and container
    #   health checks after a task has first started. If you don't specify a
    #   health check grace period value, the default value of `0` is used. If
    #   you don't use any of the health checks, then
    #   `healthCheckGracePeriodSeconds` is unused.
    #
    #   If your service's tasks take a while to start and respond to health
    #   checks, you can specify a health check grace period of up to
    #   2,147,483,647 seconds (about 69 years). During that time, the Amazon
    #   ECS service scheduler ignores health check status. This grace period
    #   can prevent the service scheduler from marking tasks as unhealthy and
    #   stopping them before they have time to come up.
    #
    # @option params [Types::DeploymentController] :deployment_controller
    #   The deployment controller to use for the service.
    #
    # @option params [Boolean] :enable_execute_command
    #   If `true`, this enables execute command functionality on all task
    #   containers.
    #
    #   If you do not want to override the value that was set when the service
    #   was created, you can set this to `null` when performing this action.
    #
    # @option params [Boolean] :enable_ecs_managed_tags
    #   Determines whether to turn on Amazon ECS managed tags for the tasks in
    #   the service. For more information, see [Tagging Your Amazon ECS
    #   Resources][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   Only tasks launched after the update will reflect the update. To
    #   update the tags on all tasks, set `forceNewDeployment` to `true`, so
    #   that Amazon ECS starts new tasks with the updated tags.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #
    # @option params [Array<Types::LoadBalancer>] :load_balancers
    #   <note markdown="1"> You must have a service-linked role when you update this property
    #
    #    </note>
    #
    #   A list of Elastic Load Balancing load balancer objects. It contains
    #   the load balancer name, the container name, and the container port to
    #   access from the load balancer. The container name is as it appears in
    #   a container definition.
    #
    #   When you add, update, or remove a load balancer configuration, Amazon
    #   ECS starts new tasks with the updated Elastic Load Balancing
    #   configuration, and then stops the old tasks when the new tasks are
    #   running.
    #
    #   For services that use rolling updates, you can add, update, or remove
    #   Elastic Load Balancing target groups. You can update from a single
    #   target group to multiple target groups and from multiple target groups
    #   to a single target group.
    #
    #   For services that use blue/green deployments, you can update Elastic
    #   Load Balancing target groups by using ` CreateDeployment ` through
    #   CodeDeploy. Note that multiple target groups are not supported for
    #   blue/green deployments. For more information see [Register multiple
    #   target groups with a service][1] in the *Amazon Elastic Container
    #   Service Developer Guide*.
    #
    #   For services that use the external deployment controller, you can add,
    #   update, or remove load balancers by using [CreateTaskSet][2]. Note
    #   that multiple target groups are not supported for external
    #   deployments. For more information see [Register multiple target groups
    #   with a service][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #   You can remove existing `loadBalancers` by passing an empty list.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html
    #
    # @option params [String] :propagate_tags
    #   Determines whether to propagate the tags from the task definition or
    #   the service to the task. If no value is specified, the tags aren't
    #   propagated.
    #
    #   Only tasks launched after the update will reflect the update. To
    #   update the tags on all tasks, set `forceNewDeployment` to `true`, so
    #   that Amazon ECS starts new tasks with the updated tags.
    #
    # @option params [Array<Types::ServiceRegistry>] :service_registries
    #   <note markdown="1"> You must have a service-linked role when you update this property.
    #
    #    For more information about the role see the `CreateService` request
    #   parameter [ `role` ][1].
    #
    #    </note>
    #
    #   The details for the service discovery registries to assign to this
    #   service. For more information, see [Service Discovery][2].
    #
    #   When you add, update, or remove the service registries configuration,
    #   Amazon ECS starts new tasks with the updated service registries
    #   configuration, and then stops the old tasks when the new tasks are
    #   running.
    #
    #   You can remove existing `serviceRegistries` by passing an empty list.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html#ECS-CreateService-request-role
    #   [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html
    #
    # @option params [Types::ServiceConnectConfiguration] :service_connect_configuration
    #   The configuration for this service to discover and connect to
    #   services, and be discovered by, and connected from, other services
    #   within a namespace.
    #
    #   Tasks that run in a namespace can use short names to connect to
    #   services in the namespace. Tasks can connect to services across all of
    #   the clusters in the namespace. Tasks connect through a managed proxy
    #   container that collects logs and metrics for increased visibility.
    #   Only the tasks that Amazon ECS services create are supported with
    #   Service Connect. For more information, see [Service Connect][1] in the
    #   *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html
    #
    # @option params [Array<Types::ServiceVolumeConfiguration>] :volume_configurations
    #   The details of the volume that was `configuredAtLaunch`. You can
    #   configure the size, volumeType, IOPS, throughput, snapshot and
    #   encryption in [ServiceManagedEBSVolumeConfiguration][1]. The `name` of
    #   the volume must match the `name` from the task definition. If set to
    #   null, no new deployment is triggered. Otherwise, if this configuration
    #   differs from the existing one, it triggers a new deployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ServiceManagedEBSVolumeConfiguration.html
    #
    # @option params [Array<Types::VpcLatticeConfiguration>] :vpc_lattice_configurations
    #   An object representing the VPC Lattice configuration for the service
    #   being updated.
    #
    # @return [Types::UpdateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceResponse#service #service} => Types::Service
    #
    #
    # @example Example: To change the task definition used in a service
    #
    #   # This example updates the my-http-service service to use the amazon-ecs-sample task definition.
    #
    #   resp = client.update_service({
    #     service: "my-http-service", 
    #     task_definition: "amazon-ecs-sample", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Example: To change the number of tasks in a service
    #
    #   # This example updates the desired count of the my-http-service service to 10.
    #
    #   resp = client.update_service({
    #     desired_count: 10, 
    #     service: "my-http-service", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service({
    #     cluster: "String",
    #     service: "String", # required
    #     desired_count: 1,
    #     task_definition: "String",
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1,
    #       },
    #     ],
    #     deployment_configuration: {
    #       deployment_circuit_breaker: {
    #         enable: false, # required
    #         rollback: false, # required
    #       },
    #       maximum_percent: 1,
    #       minimum_healthy_percent: 1,
    #       alarms: {
    #         alarm_names: ["String"], # required
    #         rollback: false, # required
    #         enable: false, # required
    #       },
    #       strategy: "ROLLING", # accepts ROLLING, BLUE_GREEN
    #       bake_time_in_minutes: 1,
    #       lifecycle_hooks: [
    #         {
    #           hook_target_arn: "String",
    #           role_arn: "IAMRoleArn",
    #           lifecycle_stages: ["RECONCILE_SERVICE"], # accepts RECONCILE_SERVICE, PRE_SCALE_UP, POST_SCALE_UP, TEST_TRAFFIC_SHIFT, POST_TEST_TRAFFIC_SHIFT, PRODUCTION_TRAFFIC_SHIFT, POST_PRODUCTION_TRAFFIC_SHIFT
    #         },
    #       ],
    #     },
    #     availability_zone_rebalancing: "ENABLED", # accepts ENABLED, DISABLED
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     placement_constraints: [
    #       {
    #         type: "distinctInstance", # accepts distinctInstance, memberOf
    #         expression: "String",
    #       },
    #     ],
    #     placement_strategy: [
    #       {
    #         type: "random", # accepts random, spread, binpack
    #         field: "String",
    #       },
    #     ],
    #     platform_version: "String",
    #     force_new_deployment: false,
    #     health_check_grace_period_seconds: 1,
    #     deployment_controller: {
    #       type: "ECS", # required, accepts ECS, CODE_DEPLOY, EXTERNAL
    #     },
    #     enable_execute_command: false,
    #     enable_ecs_managed_tags: false,
    #     load_balancers: [
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #         advanced_configuration: {
    #           alternate_target_group_arn: "String",
    #           production_listener_rule: "String",
    #           test_listener_rule: "String",
    #           role_arn: "String",
    #         },
    #       },
    #     ],
    #     propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE, NONE
    #     service_registries: [
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1,
    #       },
    #     ],
    #     service_connect_configuration: {
    #       enabled: false, # required
    #       namespace: "String",
    #       services: [
    #         {
    #           port_name: "String", # required
    #           discovery_name: "String",
    #           client_aliases: [
    #             {
    #               port: 1, # required
    #               dns_name: "String",
    #               test_traffic_rules: {
    #                 header: { # required
    #                   name: "String", # required
    #                   value: {
    #                     exact: "String", # required
    #                   },
    #                 },
    #               },
    #             },
    #           ],
    #           ingress_port_override: 1,
    #           timeout: {
    #             idle_timeout_seconds: 1,
    #             per_request_timeout_seconds: 1,
    #           },
    #           tls: {
    #             issuer_certificate_authority: { # required
    #               aws_pca_authority_arn: "String",
    #             },
    #             kms_key: "String",
    #             role_arn: "String",
    #           },
    #         },
    #       ],
    #       log_configuration: {
    #         log_driver: "json-file", # required, accepts json-file, syslog, journald, gelf, fluentd, awslogs, splunk, awsfirelens
    #         options: {
    #           "String" => "String",
    #         },
    #         secret_options: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           },
    #         ],
    #       },
    #     },
    #     volume_configurations: [
    #       {
    #         name: "ECSVolumeName", # required
    #         managed_ebs_volume: {
    #           encrypted: false,
    #           kms_key_id: "EBSKMSKeyId",
    #           volume_type: "EBSVolumeType",
    #           size_in_gi_b: 1,
    #           snapshot_id: "EBSSnapshotId",
    #           volume_initialization_rate: 1,
    #           iops: 1,
    #           throughput: 1,
    #           tag_specifications: [
    #             {
    #               resource_type: "volume", # required, accepts volume
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue",
    #                 },
    #               ],
    #               propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION, SERVICE, NONE
    #             },
    #           ],
    #           role_arn: "IAMRoleArn", # required
    #           filesystem_type: "ext3", # accepts ext3, ext4, xfs, ntfs
    #         },
    #       },
    #     ],
    #     vpc_lattice_configurations: [
    #       {
    #         role_arn: "IAMRoleArn", # required
    #         target_group_arn: "String", # required
    #         port_name: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.service.service_arn #=> String
    #   resp.service.service_name #=> String
    #   resp.service.cluster_arn #=> String
    #   resp.service.load_balancers #=> Array
    #   resp.service.load_balancers[0].target_group_arn #=> String
    #   resp.service.load_balancers[0].load_balancer_name #=> String
    #   resp.service.load_balancers[0].container_name #=> String
    #   resp.service.load_balancers[0].container_port #=> Integer
    #   resp.service.load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.service.load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.service.load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.service.load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.service.service_registries #=> Array
    #   resp.service.service_registries[0].registry_arn #=> String
    #   resp.service.service_registries[0].port #=> Integer
    #   resp.service.service_registries[0].container_name #=> String
    #   resp.service.service_registries[0].container_port #=> Integer
    #   resp.service.status #=> String
    #   resp.service.desired_count #=> Integer
    #   resp.service.running_count #=> Integer
    #   resp.service.pending_count #=> Integer
    #   resp.service.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.capacity_provider_strategy #=> Array
    #   resp.service.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.capacity_provider_strategy[0].base #=> Integer
    #   resp.service.platform_version #=> String
    #   resp.service.platform_family #=> String
    #   resp.service.task_definition #=> String
    #   resp.service.deployment_configuration.deployment_circuit_breaker.enable #=> Boolean
    #   resp.service.deployment_configuration.deployment_circuit_breaker.rollback #=> Boolean
    #   resp.service.deployment_configuration.maximum_percent #=> Integer
    #   resp.service.deployment_configuration.minimum_healthy_percent #=> Integer
    #   resp.service.deployment_configuration.alarms.alarm_names #=> Array
    #   resp.service.deployment_configuration.alarms.alarm_names[0] #=> String
    #   resp.service.deployment_configuration.alarms.rollback #=> Boolean
    #   resp.service.deployment_configuration.alarms.enable #=> Boolean
    #   resp.service.deployment_configuration.strategy #=> String, one of "ROLLING", "BLUE_GREEN"
    #   resp.service.deployment_configuration.bake_time_in_minutes #=> Integer
    #   resp.service.deployment_configuration.lifecycle_hooks #=> Array
    #   resp.service.deployment_configuration.lifecycle_hooks[0].hook_target_arn #=> String
    #   resp.service.deployment_configuration.lifecycle_hooks[0].role_arn #=> String
    #   resp.service.deployment_configuration.lifecycle_hooks[0].lifecycle_stages #=> Array
    #   resp.service.deployment_configuration.lifecycle_hooks[0].lifecycle_stages[0] #=> String, one of "RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"
    #   resp.service.task_sets #=> Array
    #   resp.service.task_sets[0].id #=> String
    #   resp.service.task_sets[0].task_set_arn #=> String
    #   resp.service.task_sets[0].service_arn #=> String
    #   resp.service.task_sets[0].cluster_arn #=> String
    #   resp.service.task_sets[0].started_by #=> String
    #   resp.service.task_sets[0].external_id #=> String
    #   resp.service.task_sets[0].status #=> String
    #   resp.service.task_sets[0].task_definition #=> String
    #   resp.service.task_sets[0].computed_desired_count #=> Integer
    #   resp.service.task_sets[0].pending_count #=> Integer
    #   resp.service.task_sets[0].running_count #=> Integer
    #   resp.service.task_sets[0].created_at #=> Time
    #   resp.service.task_sets[0].updated_at #=> Time
    #   resp.service.task_sets[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.task_sets[0].capacity_provider_strategy #=> Array
    #   resp.service.task_sets[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.task_sets[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.task_sets[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.service.task_sets[0].platform_version #=> String
    #   resp.service.task_sets[0].platform_family #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.task_sets[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.task_sets[0].load_balancers #=> Array
    #   resp.service.task_sets[0].load_balancers[0].target_group_arn #=> String
    #   resp.service.task_sets[0].load_balancers[0].load_balancer_name #=> String
    #   resp.service.task_sets[0].load_balancers[0].container_name #=> String
    #   resp.service.task_sets[0].load_balancers[0].container_port #=> Integer
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.service.task_sets[0].load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.service.task_sets[0].service_registries #=> Array
    #   resp.service.task_sets[0].service_registries[0].registry_arn #=> String
    #   resp.service.task_sets[0].service_registries[0].port #=> Integer
    #   resp.service.task_sets[0].service_registries[0].container_name #=> String
    #   resp.service.task_sets[0].service_registries[0].container_port #=> Integer
    #   resp.service.task_sets[0].scale.value #=> Float
    #   resp.service.task_sets[0].scale.unit #=> String, one of "PERCENT"
    #   resp.service.task_sets[0].stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.service.task_sets[0].stability_status_at #=> Time
    #   resp.service.task_sets[0].tags #=> Array
    #   resp.service.task_sets[0].tags[0].key #=> String
    #   resp.service.task_sets[0].tags[0].value #=> String
    #   resp.service.task_sets[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.service.deployments #=> Array
    #   resp.service.deployments[0].id #=> String
    #   resp.service.deployments[0].status #=> String
    #   resp.service.deployments[0].task_definition #=> String
    #   resp.service.deployments[0].desired_count #=> Integer
    #   resp.service.deployments[0].pending_count #=> Integer
    #   resp.service.deployments[0].running_count #=> Integer
    #   resp.service.deployments[0].failed_tasks #=> Integer
    #   resp.service.deployments[0].created_at #=> Time
    #   resp.service.deployments[0].updated_at #=> Time
    #   resp.service.deployments[0].capacity_provider_strategy #=> Array
    #   resp.service.deployments[0].capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.service.deployments[0].capacity_provider_strategy[0].weight #=> Integer
    #   resp.service.deployments[0].capacity_provider_strategy[0].base #=> Integer
    #   resp.service.deployments[0].launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.service.deployments[0].platform_version #=> String
    #   resp.service.deployments[0].platform_family #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.deployments[0].network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.deployments[0].rollout_state #=> String, one of "COMPLETED", "FAILED", "IN_PROGRESS"
    #   resp.service.deployments[0].rollout_state_reason #=> String
    #   resp.service.deployments[0].service_connect_configuration.enabled #=> Boolean
    #   resp.service.deployments[0].service_connect_configuration.namespace #=> String
    #   resp.service.deployments[0].service_connect_configuration.services #=> Array
    #   resp.service.deployments[0].service_connect_configuration.services[0].port_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].discovery_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases #=> Array
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].port #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].dns_name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.name #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].client_aliases[0].test_traffic_rules.header.value.exact #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].ingress_port_override #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].timeout.idle_timeout_seconds #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].timeout.per_request_timeout_seconds #=> Integer
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.issuer_certificate_authority.aws_pca_authority_arn #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.kms_key #=> String
    #   resp.service.deployments[0].service_connect_configuration.services[0].tls.role_arn #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.log_driver #=> String, one of "json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.options #=> Hash
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.options["String"] #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options #=> Array
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options[0].name #=> String
    #   resp.service.deployments[0].service_connect_configuration.log_configuration.secret_options[0].value_from #=> String
    #   resp.service.deployments[0].service_connect_resources #=> Array
    #   resp.service.deployments[0].service_connect_resources[0].discovery_name #=> String
    #   resp.service.deployments[0].service_connect_resources[0].discovery_arn #=> String
    #   resp.service.deployments[0].volume_configurations #=> Array
    #   resp.service.deployments[0].volume_configurations[0].name #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.encrypted #=> Boolean
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.kms_key_id #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.volume_type #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.size_in_gi_b #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.snapshot_id #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.volume_initialization_rate #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.iops #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.throughput #=> Integer
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications #=> Array
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].resource_type #=> String, one of "volume"
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags #=> Array
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].key #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].tags[0].value #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.tag_specifications[0].propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.role_arn #=> String
    #   resp.service.deployments[0].volume_configurations[0].managed_ebs_volume.filesystem_type #=> String, one of "ext3", "ext4", "xfs", "ntfs"
    #   resp.service.deployments[0].fargate_ephemeral_storage.kms_key_id #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations #=> Array
    #   resp.service.deployments[0].vpc_lattice_configurations[0].role_arn #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations[0].target_group_arn #=> String
    #   resp.service.deployments[0].vpc_lattice_configurations[0].port_name #=> String
    #   resp.service.role_arn #=> String
    #   resp.service.events #=> Array
    #   resp.service.events[0].id #=> String
    #   resp.service.events[0].created_at #=> Time
    #   resp.service.events[0].message #=> String
    #   resp.service.created_at #=> Time
    #   resp.service.placement_constraints #=> Array
    #   resp.service.placement_constraints[0].type #=> String, one of "distinctInstance", "memberOf"
    #   resp.service.placement_constraints[0].expression #=> String
    #   resp.service.placement_strategy #=> Array
    #   resp.service.placement_strategy[0].type #=> String, one of "random", "spread", "binpack"
    #   resp.service.placement_strategy[0].field #=> String
    #   resp.service.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.service.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.service.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.service.health_check_grace_period_seconds #=> Integer
    #   resp.service.scheduling_strategy #=> String, one of "REPLICA", "DAEMON"
    #   resp.service.deployment_controller.type #=> String, one of "ECS", "CODE_DEPLOY", "EXTERNAL"
    #   resp.service.tags #=> Array
    #   resp.service.tags[0].key #=> String
    #   resp.service.tags[0].value #=> String
    #   resp.service.created_by #=> String
    #   resp.service.enable_ecs_managed_tags #=> Boolean
    #   resp.service.propagate_tags #=> String, one of "TASK_DEFINITION", "SERVICE", "NONE"
    #   resp.service.enable_execute_command #=> Boolean
    #   resp.service.availability_zone_rebalancing #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateService AWS API Documentation
    #
    # @overload update_service(params = {})
    # @param [Hash] params ({})
    def update_service(params = {}, options = {})
      req = build_request(:update_service, params)
      req.send_request(options)
    end

    # Modifies which task set in a service is the primary task set. Any
    # parameters that are updated on the primary task set in a service will
    # transition to the service. This is used when a service uses the
    # `EXTERNAL` deployment controller type. For more information, see
    # [Amazon ECS Deployment Types][1] in the *Amazon Elastic Container
    # Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service that the task set exists in.
    #
    # @option params [required, String] :service
    #   The short name or full Amazon Resource Name (ARN) of the service that
    #   the task set exists in.
    #
    # @option params [required, String] :primary_task_set
    #   The short name or full Amazon Resource Name (ARN) of the task set to
    #   set as the primary task set in the deployment.
    #
    # @return [Types::UpdateServicePrimaryTaskSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServicePrimaryTaskSetResponse#task_set #task_set} => Types::TaskSet
    #
    #
    # @example Example: To update the primary task set for a service
    #
    #   # This example updates the primary task set for a service MyService that uses the EXTERNAL deployment controller type. 
    #
    #   resp = client.update_service_primary_task_set({
    #     cluster: "MyCluster", 
    #     primary_task_set: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #     service: "MyService", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_set: {
    #       computed_desired_count: 1, 
    #       created_at: Time.parse(1557128360.711), 
    #       id: "ecs-svc/1234567890123456789", 
    #       launch_type: "EC2", 
    #       load_balancers: [
    #       ], 
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           assign_public_ip: "DISABLED", 
    #           security_groups: [
    #             "sg-12344312", 
    #           ], 
    #           subnets: [
    #             "subnet-12344321", 
    #           ], 
    #         }, 
    #       }, 
    #       pending_count: 0, 
    #       running_count: 0, 
    #       scale: {
    #         value: 50, 
    #         unit: "PERCENT", 
    #       }, 
    #       service_registries: [
    #       ], 
    #       stability_status: "STABILIZING", 
    #       stability_status_at: Time.parse(1557129279.914), 
    #       status: "PRIMARY", 
    #       task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/sample-fargate:2", 
    #       task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #       updated_at: Time.parse(1557129412.653), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_primary_task_set({
    #     cluster: "String", # required
    #     service: "String", # required
    #     primary_task_set: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_set.id #=> String
    #   resp.task_set.task_set_arn #=> String
    #   resp.task_set.service_arn #=> String
    #   resp.task_set.cluster_arn #=> String
    #   resp.task_set.started_by #=> String
    #   resp.task_set.external_id #=> String
    #   resp.task_set.status #=> String
    #   resp.task_set.task_definition #=> String
    #   resp.task_set.computed_desired_count #=> Integer
    #   resp.task_set.pending_count #=> Integer
    #   resp.task_set.running_count #=> Integer
    #   resp.task_set.created_at #=> Time
    #   resp.task_set.updated_at #=> Time
    #   resp.task_set.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_set.capacity_provider_strategy #=> Array
    #   resp.task_set.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.task_set.capacity_provider_strategy[0].weight #=> Integer
    #   resp.task_set.capacity_provider_strategy[0].base #=> Integer
    #   resp.task_set.platform_version #=> String
    #   resp.task_set.platform_family #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.task_set.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.task_set.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_set.load_balancers #=> Array
    #   resp.task_set.load_balancers[0].target_group_arn #=> String
    #   resp.task_set.load_balancers[0].load_balancer_name #=> String
    #   resp.task_set.load_balancers[0].container_name #=> String
    #   resp.task_set.load_balancers[0].container_port #=> Integer
    #   resp.task_set.load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.task_set.service_registries #=> Array
    #   resp.task_set.service_registries[0].registry_arn #=> String
    #   resp.task_set.service_registries[0].port #=> Integer
    #   resp.task_set.service_registries[0].container_name #=> String
    #   resp.task_set.service_registries[0].container_port #=> Integer
    #   resp.task_set.scale.value #=> Float
    #   resp.task_set.scale.unit #=> String, one of "PERCENT"
    #   resp.task_set.stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.task_set.stability_status_at #=> Time
    #   resp.task_set.tags #=> Array
    #   resp.task_set.tags[0].key #=> String
    #   resp.task_set.tags[0].value #=> String
    #   resp.task_set.fargate_ephemeral_storage.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateServicePrimaryTaskSet AWS API Documentation
    #
    # @overload update_service_primary_task_set(params = {})
    # @param [Hash] params ({})
    def update_service_primary_task_set(params = {}, options = {})
      req = build_request(:update_service_primary_task_set, params)
      req.send_request(options)
    end

    # Updates the protection status of a task. You can set
    # `protectionEnabled` to `true` to protect your task from termination
    # during scale-in events from [Service Autoscaling][1] or
    # [deployments][2].
    #
    # Task-protection, by default, expires after 2 hours at which point
    # Amazon ECS clears the `protectionEnabled` property making the task
    # eligible for termination by a subsequent scale-in event.
    #
    # You can specify a custom expiration period for task protection from 1
    # minute to up to 2,880 minutes (48 hours). To specify the custom
    # expiration period, set the `expiresInMinutes` property. The
    # `expiresInMinutes` property is always reset when you invoke this
    # operation for a task that already has `protectionEnabled` set to
    # `true`. You can keep extending the protection expiration period of a
    # task by invoking this operation repeatedly.
    #
    # To learn more about Amazon ECS task protection, see [Task scale-in
    # protection][3] in the <i> <i>Amazon Elastic Container Service
    # Developer Guide</i> </i>.
    #
    # <note markdown="1"> This operation is only supported for tasks belonging to an Amazon ECS
    # service. Invoking this operation for a standalone task will result in
    # an `TASK_NOT_VALID` failure. For more information, see [API failure
    # reasons][4].
    #
    #  </note>
    #
    # If you prefer to set task protection from within the container, we
    # recommend using the [Task scale-in protection endpoint][5].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html
    # [2]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    # [3]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection.html
    # [4]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html
    # [5]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection-endpoint.html
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service that the task sets exist in.
    #
    # @option params [required, Array<String>] :tasks
    #   A list of up to 10 task IDs or full ARN entries.
    #
    # @option params [required, Boolean] :protection_enabled
    #   Specify `true` to mark a task for protection and `false` to unset
    #   protection, making it eligible for termination.
    #
    # @option params [Integer] :expires_in_minutes
    #   If you set `protectionEnabled` to `true`, you can specify the duration
    #   for task protection in minutes. You can specify a value from 1 minute
    #   to up to 2,880 minutes (48 hours). During this time, your task will
    #   not be terminated by scale-in events from Service Auto Scaling or
    #   deployments. After this time period lapses, `protectionEnabled` will
    #   be reset to `false`.
    #
    #   If you don’t specify the time, then the task is automatically
    #   protected for 120 minutes (2 hours).
    #
    # @return [Types::UpdateTaskProtectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTaskProtectionResponse#protected_tasks #protected_tasks} => Array&lt;Types::ProtectedTask&gt;
    #   * {Types::UpdateTaskProtectionResponse#failures #failures} => Array&lt;Types::Failure&gt;
    #
    #
    # @example Example: To set task scale-in protection for a task for 60 minutes
    #
    #   # This example enables scale-in protection for a task for 60 minutes.
    #
    #   resp = client.update_task_protection({
    #     cluster: "test-task-protection", 
    #     expires_in_minutes: 60, 
    #     protection_enabled: true, 
    #     tasks: [
    #       "b8b1cf532d0e46ba8d44a40d1de16772", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     protected_tasks: [
    #       {
    #         expiration_date: Time.parse("2022-11-02T06:56:32.553Z"), 
    #         protection_enabled: true, 
    #         task_arn: "arn:aws:ecs:us-west-2:012345678910:task/default/b8b1cf532d0e46ba8d44a40d1de16772", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To set task scale-in protection for the default time period in minutes
    #
    #   # This example enables task scale-in protection for a task, without specifying the expiresInMinutes parameter, for the
    #   # default protection period of 120 minutes.
    #
    #   resp = client.update_task_protection({
    #     cluster: "test-task-protection", 
    #     protection_enabled: true, 
    #     tasks: [
    #       "b8b1cf532d0e46ba8d44a40d1de16772", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     protected_tasks: [
    #       {
    #         expiration_date: Time.parse("2022-11-02T06:56:32.553Z"), 
    #         protection_enabled: true, 
    #         task_arn: "arn:aws:ecs:us-west-2:012345678910:task/default/b8b1cf532d0e46ba8d44a40d1de16772", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: To remove task scale-in protection
    #
    #   # This example removes scale-in protection for a task.
    #
    #   resp = client.update_task_protection({
    #     cluster: "test-task-protection", 
    #     protection_enabled: false, 
    #     tasks: [
    #       "b8b1cf532d0e46ba8d44a40d1de16772", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     protected_tasks: [
    #       {
    #         protection_enabled: false, 
    #         task_arn: "arn:aws:ecs:us-west-2:012345678910:task/default/b8b1cf532d0e46ba8d44a40d1de16772", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task_protection({
    #     cluster: "String", # required
    #     tasks: ["String"], # required
    #     protection_enabled: false, # required
    #     expires_in_minutes: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.protected_tasks #=> Array
    #   resp.protected_tasks[0].task_arn #=> String
    #   resp.protected_tasks[0].protection_enabled #=> Boolean
    #   resp.protected_tasks[0].expiration_date #=> Time
    #   resp.failures #=> Array
    #   resp.failures[0].arn #=> String
    #   resp.failures[0].reason #=> String
    #   resp.failures[0].detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateTaskProtection AWS API Documentation
    #
    # @overload update_task_protection(params = {})
    # @param [Hash] params ({})
    def update_task_protection(params = {}, options = {})
      req = build_request(:update_task_protection, params)
      req.send_request(options)
    end

    # Modifies a task set. This is used when a service uses the `EXTERNAL`
    # deployment controller type. For more information, see [Amazon ECS
    # Deployment Types][1] in the *Amazon Elastic Container Service
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html
    #
    # @option params [required, String] :cluster
    #   The short name or full Amazon Resource Name (ARN) of the cluster that
    #   hosts the service that the task set is found in.
    #
    # @option params [required, String] :service
    #   The short name or full Amazon Resource Name (ARN) of the service that
    #   the task set is found in.
    #
    # @option params [required, String] :task_set
    #   The short name or full Amazon Resource Name (ARN) of the task set to
    #   update.
    #
    # @option params [required, Types::Scale] :scale
    #   A floating-point percentage of the desired number of tasks to place
    #   and keep running in the task set.
    #
    # @return [Types::UpdateTaskSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTaskSetResponse#task_set #task_set} => Types::TaskSet
    #
    #
    # @example Example: To update a task set
    #
    #   # This example updates the task set to adjust the scale.
    #
    #   resp = client.update_task_set({
    #     cluster: "MyCluster", 
    #     scale: {
    #       value: 50, 
    #       unit: "PERCENT", 
    #     }, 
    #     service: "MyService", 
    #     task_set: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     task_set: {
    #       computed_desired_count: 0, 
    #       created_at: Time.parse(1557128360.711), 
    #       id: "ecs-svc/1234567890123456789", 
    #       launch_type: "EC2", 
    #       load_balancers: [
    #       ], 
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           assign_public_ip: "DISABLED", 
    #           security_groups: [
    #             "sg-12344321", 
    #           ], 
    #           subnets: [
    #             "subnet-12344321", 
    #           ], 
    #         }, 
    #       }, 
    #       pending_count: 0, 
    #       running_count: 0, 
    #       scale: {
    #         value: 50, 
    #         unit: "PERCENT", 
    #       }, 
    #       service_registries: [
    #       ], 
    #       stability_status: "STABILIZING", 
    #       stability_status_at: Time.parse(1557129279.914), 
    #       status: "ACTIVE", 
    #       task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/sample-fargate:2", 
    #       task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789", 
    #       updated_at: Time.parse(1557129279.914), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task_set({
    #     cluster: "String", # required
    #     service: "String", # required
    #     task_set: "String", # required
    #     scale: { # required
    #       value: 1.0,
    #       unit: "PERCENT", # accepts PERCENT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.task_set.id #=> String
    #   resp.task_set.task_set_arn #=> String
    #   resp.task_set.service_arn #=> String
    #   resp.task_set.cluster_arn #=> String
    #   resp.task_set.started_by #=> String
    #   resp.task_set.external_id #=> String
    #   resp.task_set.status #=> String
    #   resp.task_set.task_definition #=> String
    #   resp.task_set.computed_desired_count #=> Integer
    #   resp.task_set.pending_count #=> Integer
    #   resp.task_set.running_count #=> Integer
    #   resp.task_set.created_at #=> Time
    #   resp.task_set.updated_at #=> Time
    #   resp.task_set.launch_type #=> String, one of "EC2", "FARGATE", "EXTERNAL"
    #   resp.task_set.capacity_provider_strategy #=> Array
    #   resp.task_set.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.task_set.capacity_provider_strategy[0].weight #=> Integer
    #   resp.task_set.capacity_provider_strategy[0].base #=> Integer
    #   resp.task_set.platform_version #=> String
    #   resp.task_set.platform_family #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.subnets #=> Array
    #   resp.task_set.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.security_groups #=> Array
    #   resp.task_set.network_configuration.awsvpc_configuration.security_groups[0] #=> String
    #   resp.task_set.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of "ENABLED", "DISABLED"
    #   resp.task_set.load_balancers #=> Array
    #   resp.task_set.load_balancers[0].target_group_arn #=> String
    #   resp.task_set.load_balancers[0].load_balancer_name #=> String
    #   resp.task_set.load_balancers[0].container_name #=> String
    #   resp.task_set.load_balancers[0].container_port #=> Integer
    #   resp.task_set.load_balancers[0].advanced_configuration.alternate_target_group_arn #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.production_listener_rule #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.test_listener_rule #=> String
    #   resp.task_set.load_balancers[0].advanced_configuration.role_arn #=> String
    #   resp.task_set.service_registries #=> Array
    #   resp.task_set.service_registries[0].registry_arn #=> String
    #   resp.task_set.service_registries[0].port #=> Integer
    #   resp.task_set.service_registries[0].container_name #=> String
    #   resp.task_set.service_registries[0].container_port #=> Integer
    #   resp.task_set.scale.value #=> Float
    #   resp.task_set.scale.unit #=> String, one of "PERCENT"
    #   resp.task_set.stability_status #=> String, one of "STEADY_STATE", "STABILIZING"
    #   resp.task_set.stability_status_at #=> Time
    #   resp.task_set.tags #=> Array
    #   resp.task_set.tags[0].key #=> String
    #   resp.task_set.tags[0].value #=> String
    #   resp.task_set.fargate_ephemeral_storage.kms_key_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecs-2014-11-13/UpdateTaskSet AWS API Documentation
    #
    # @overload update_task_set(params = {})
    # @param [Hash] params ({})
    def update_task_set(params = {}, options = {})
      req = build_request(:update_task_set, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ECS')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-ecs'
      context[:gem_version] = '1.199.0'
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
    # | waiter_name       | params                     | :delay   | :max_attempts |
    # | ----------------- | -------------------------- | -------- | ------------- |
    # | services_inactive | {Client#describe_services} | 15       | 40            |
    # | services_stable   | {Client#describe_services} | 15       | 40            |
    # | tasks_running     | {Client#describe_tasks}    | 6        | 100           |
    # | tasks_stopped     | {Client#describe_tasks}    | 6        | 100           |
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
        services_inactive: Waiters::ServicesInactive,
        services_stable: Waiters::ServicesStable,
        tasks_running: Waiters::TasksRunning,
        tasks_stopped: Waiters::TasksStopped
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
