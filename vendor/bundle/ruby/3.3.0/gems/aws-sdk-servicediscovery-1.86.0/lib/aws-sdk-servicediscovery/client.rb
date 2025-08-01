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

module Aws::ServiceDiscovery
  # An API client for ServiceDiscovery.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ServiceDiscovery::Client.new(
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

    @identifier = :servicediscovery

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
    add_plugin(Aws::ServiceDiscovery::Plugins::Endpoints)

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
    #   @option options [Aws::ServiceDiscovery::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ServiceDiscovery::EndpointParameters`.
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

    # Creates an HTTP namespace. Service instances registered using an HTTP
    # namespace can be discovered using a `DiscoverInstances` request but
    # can't be discovered using DNS.
    #
    # For the current quota on the number of namespaces that you can create
    # using the same Amazon Web Services account, see [Cloud Map quotas][1]
    # in the *Cloud Map Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html
    #
    # @option params [required, String] :name
    #   The name that you want to assign to this namespace.
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreateHttpNamespace` requests to be retried without the risk of
    #   running the operation twice. `CreatorRequestId` can be any unique
    #   string (for example, a date/time stamp).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description for the namespace.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the namespace. Each tag consists of a key and an
    #   optional value that you define. Tags keys can be up to 128 characters
    #   in length, and tag values can be up to 256 characters in length.
    #
    # @return [Types::CreateHttpNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHttpNamespaceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: CreateHttpNamespace example
    #
    #   # This example creates an HTTP namespace.
    #
    #   resp = client.create_http_namespace({
    #     creator_request_id: "example-creator-request-id-0001", 
    #     description: "Example.com AWS Cloud Map HTTP Namespace", 
    #     name: "example-http.com", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "httpvoqozuhfet5kzxoxg-a-response-example", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_http_namespace({
    #     name: "NamespaceNameHttp", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
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
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateHttpNamespace AWS API Documentation
    #
    # @overload create_http_namespace(params = {})
    # @param [Hash] params ({})
    def create_http_namespace(params = {}, options = {})
      req = build_request(:create_http_namespace, params)
      req.send_request(options)
    end

    # Creates a private namespace based on DNS, which is visible only inside
    # a specified Amazon VPC. The namespace defines your service naming
    # scheme. For example, if you name your namespace `example.com` and name
    # your service `backend`, the resulting DNS name for the service is
    # `backend.example.com`. Service instances that are registered using a
    # private DNS namespace can be discovered using either a
    # `DiscoverInstances` request or using DNS. For the current quota on the
    # number of namespaces that you can create using the same Amazon Web
    # Services account, see [Cloud Map quotas][1] in the *Cloud Map
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html
    #
    # @option params [required, String] :name
    #   The name that you want to assign to this namespace. When you create a
    #   private DNS namespace, Cloud Map automatically creates an Amazon
    #   Route 53 private hosted zone that has the same name as the namespace.
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreatePrivateDnsNamespace` requests to be retried without the risk of
    #   running the operation twice. `CreatorRequestId` can be any unique
    #   string (for example, a date/timestamp).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description for the namespace.
    #
    # @option params [required, String] :vpc
    #   The ID of the Amazon VPC that you want to associate the namespace
    #   with.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the namespace. Each tag consists of a key and an
    #   optional value that you define. Tags keys can be up to 128 characters
    #   in length, and tag values can be up to 256 characters in length.
    #
    # @option params [Types::PrivateDnsNamespaceProperties] :properties
    #   Properties for the private DNS namespace.
    #
    # @return [Types::CreatePrivateDnsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePrivateDnsNamespaceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: Example: Create private DNS namespace
    #
    #   # Example: Create private DNS namespace
    #
    #   resp = client.create_private_dns_namespace({
    #     creator_request_id: "eedd6892-50f3-41b2-8af9-611d6e1d1a8c", 
    #     name: "example.com", 
    #     vpc: "vpc-1c56417b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_dns_namespace({
    #     name: "NamespaceNamePrivate", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     vpc: "ResourceId", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     properties: {
    #       dns_properties: { # required
    #         soa: { # required
    #           ttl: 1, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePrivateDnsNamespace AWS API Documentation
    #
    # @overload create_private_dns_namespace(params = {})
    # @param [Hash] params ({})
    def create_private_dns_namespace(params = {}, options = {})
      req = build_request(:create_private_dns_namespace, params)
      req.send_request(options)
    end

    # Creates a public namespace based on DNS, which is visible on the
    # internet. The namespace defines your service naming scheme. For
    # example, if you name your namespace `example.com` and name your
    # service `backend`, the resulting DNS name for the service is
    # `backend.example.com`. You can discover instances that were registered
    # with a public DNS namespace by using either a `DiscoverInstances`
    # request or using DNS. For the current quota on the number of
    # namespaces that you can create using the same Amazon Web Services
    # account, see [Cloud Map quotas][1] in the *Cloud Map Developer Guide*.
    #
    # The `CreatePublicDnsNamespace` API operation is not supported in the
    # Amazon Web Services GovCloud (US) Regions.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html
    #
    # @option params [required, String] :name
    #   The name that you want to assign to this namespace.
    #
    #   <note markdown="1"> Do not include sensitive information in the name. The name is publicly
    #   available using DNS queries.
    #
    #    </note>
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreatePublicDnsNamespace` requests to be retried without the risk of
    #   running the operation twice. `CreatorRequestId` can be any unique
    #   string (for example, a date/timestamp).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description for the namespace.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the namespace. Each tag consists of a key and an
    #   optional value that you define. Tags keys can be up to 128 characters
    #   in length, and tag values can be up to 256 characters in length.
    #
    # @option params [Types::PublicDnsNamespaceProperties] :properties
    #   Properties for the public DNS namespace.
    #
    # @return [Types::CreatePublicDnsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePublicDnsNamespaceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: CreatePublicDnsNamespace example
    #
    #   # This example creates a public namespace based on DNS.
    #
    #   resp = client.create_public_dns_namespace({
    #     creator_request_id: "example-creator-request-id-0003", 
    #     description: "Example.com AWS Cloud Map Public DNS Namespace", 
    #     name: "example-public-dns.com", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "dns2voqozuhfet5kzxoxg-a-response-example", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_dns_namespace({
    #     name: "NamespaceNamePublic", # required
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     properties: {
    #       dns_properties: { # required
    #         soa: { # required
    #           ttl: 1, # required
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreatePublicDnsNamespace AWS API Documentation
    #
    # @overload create_public_dns_namespace(params = {})
    # @param [Hash] params ({})
    def create_public_dns_namespace(params = {}, options = {})
      req = build_request(:create_public_dns_namespace, params)
      req.send_request(options)
    end

    # Creates a service. This action defines the configuration for the
    # following entities:
    #
    # * For public and private DNS namespaces, one of the following
    #   combinations of DNS records in Amazon Route 53:
    #
    #   * `A`
    #
    #   * `AAAA`
    #
    #   * `A` and `AAAA`
    #
    #   * `SRV`
    #
    #   * `CNAME`
    # * Optionally, a health check
    #
    # After you create the service, you can submit a [RegisterInstance][1]
    # request, and Cloud Map uses the values in the configuration to create
    # the specified entities.
    #
    # For the current quota on the number of instances that you can register
    # using the same namespace and using the same service, see [Cloud Map
    # quotas][2] in the *Cloud Map Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html
    # [2]: https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html
    #
    # @option params [required, String] :name
    #   The name that you want to assign to the service.
    #
    #   <note markdown="1"> Do not include sensitive information in the name if the namespace is
    #   discoverable by public DNS queries.
    #
    #    </note>
    #
    #   If you want Cloud Map to create an `SRV` record when you register an
    #   instance and you're using a system that requires a specific `SRV`
    #   format, such as [HAProxy][1], specify the following for `Name`:
    #
    #   * Start the name with an underscore (\_), such as `_exampleservice`.
    #
    #   * End the name with *.\_protocol*, such as `._tcp`.
    #
    #   When you register an instance, Cloud Map creates an `SRV` record and
    #   assigns a name to the record by concatenating the service name and the
    #   namespace name (for example,
    #
    #   `_exampleservice._tcp.example.com`).
    #
    #   <note markdown="1"> For services that are accessible by DNS queries, you can't create
    #   multiple services with names that differ only by case (such as EXAMPLE
    #   and example). Otherwise, these services have the same DNS name and
    #   can't be distinguished. However, if you use a namespace that's only
    #   accessible by API calls, then you can create services that with names
    #   that differ only by case.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://www.haproxy.org/
    #
    # @option params [String] :namespace_id
    #   The ID of the namespace that you want to use to create the service.
    #   The namespace ID must be specified, but it can be specified either
    #   here or in the `DnsConfig` object.
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `CreateService` requests to be retried without the risk of running the
    #   operation twice. `CreatorRequestId` can be any unique string (for
    #   example, a date/timestamp).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   A description for the service.
    #
    # @option params [Types::DnsConfig] :dns_config
    #   A complex type that contains information about the Amazon Route 53
    #   records that you want Cloud Map to create when you register an
    #   instance.
    #
    # @option params [Types::HealthCheckConfig] :health_check_config
    #   *Public DNS and HTTP namespaces only.* A complex type that contains
    #   settings for an optional Route 53 health check. If you specify
    #   settings for a health check, Cloud Map associates the health check
    #   with all the Route 53 DNS records that you specify in `DnsConfig`.
    #
    #   If you specify a health check configuration, you can specify either
    #   `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    #   For information about the charges for health checks, see [Cloud Map
    #   Pricing][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/cloud-map/pricing/
    #
    # @option params [Types::HealthCheckCustomConfig] :health_check_custom_config
    #   A complex type that contains information about an optional custom
    #   health check.
    #
    #   If you specify a health check configuration, you can specify either
    #   `HealthCheckCustomConfig` or `HealthCheckConfig` but not both.
    #
    #   You can't add, update, or delete a `HealthCheckCustomConfig`
    #   configuration from an existing service.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the service. Each tag consists of a key and an
    #   optional value that you define. Tags keys can be up to 128 characters
    #   in length, and tag values can be up to 256 characters in length.
    #
    # @option params [String] :type
    #   If present, specifies that the service instances are only discoverable
    #   using the `DiscoverInstances` API operation. No DNS records is
    #   registered for the service instances. The only valid value is `HTTP`.
    #
    # @return [Types::CreateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceResponse#service #service} => Types::Service
    #
    #
    # @example Example: Example: Create service
    #
    #   # Example: Create service
    #
    #   resp = client.create_service({
    #     creator_request_id: "567c1193-6b00-4308-bd57-ad38a8822d25", 
    #     dns_config: {
    #       dns_records: [
    #         {
    #           ttl: 60, 
    #           type: "A", 
    #         }, 
    #       ], 
    #       namespace_id: "ns-ylexjili4cdxy3xm", 
    #       routing_policy: "MULTIVALUE", 
    #     }, 
    #     name: "myservice", 
    #     namespace_id: "ns-ylexjili4cdxy3xm", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service: {
    #       arn: "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-p5zdwlg5uvvzjita", 
    #       create_date: Time.parse(1587081768.334), 
    #       creator_request_id: "567c1193-6b00-4308-bd57-ad38a8822d25", 
    #       dns_config: {
    #         dns_records: [
    #           {
    #             ttl: 60, 
    #             type: "A", 
    #           }, 
    #         ], 
    #         namespace_id: "ns-ylexjili4cdxy3xm", 
    #         routing_policy: "MULTIVALUE", 
    #       }, 
    #       id: "srv-p5zdwlg5uvvzjita", 
    #       name: "myservice", 
    #       namespace_id: "ns-ylexjili4cdxy3xm", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     name: "ServiceName", # required
    #     namespace_id: "ResourceId",
    #     creator_request_id: "ResourceId",
    #     description: "ResourceDescription",
    #     dns_config: {
    #       namespace_id: "ResourceId",
    #       routing_policy: "MULTIVALUE", # accepts MULTIVALUE, WEIGHTED
    #       dns_records: [ # required
    #         {
    #           type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #           ttl: 1, # required
    #         },
    #       ],
    #     },
    #     health_check_config: {
    #       type: "HTTP", # required, accepts HTTP, HTTPS, TCP
    #       resource_path: "ResourcePath",
    #       failure_threshold: 1,
    #     },
    #     health_check_custom_config: {
    #       failure_threshold: 1,
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     type: "HTTP", # accepts HTTP
    #   })
    #
    # @example Response structure
    #
    #   resp.service.id #=> String
    #   resp.service.arn #=> String
    #   resp.service.name #=> String
    #   resp.service.namespace_id #=> String
    #   resp.service.description #=> String
    #   resp.service.instance_count #=> Integer
    #   resp.service.dns_config.namespace_id #=> String
    #   resp.service.dns_config.routing_policy #=> String, one of "MULTIVALUE", "WEIGHTED"
    #   resp.service.dns_config.dns_records #=> Array
    #   resp.service.dns_config.dns_records[0].type #=> String, one of "SRV", "A", "AAAA", "CNAME"
    #   resp.service.dns_config.dns_records[0].ttl #=> Integer
    #   resp.service.type #=> String, one of "HTTP", "DNS_HTTP", "DNS"
    #   resp.service.health_check_config.type #=> String, one of "HTTP", "HTTPS", "TCP"
    #   resp.service.health_check_config.resource_path #=> String
    #   resp.service.health_check_config.failure_threshold #=> Integer
    #   resp.service.health_check_custom_config.failure_threshold #=> Integer
    #   resp.service.create_date #=> Time
    #   resp.service.creator_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Deletes a namespace from the current account. If the namespace still
    # contains one or more services, the request fails.
    #
    # @option params [required, String] :id
    #   The ID of the namespace that you want to delete.
    #
    # @return [Types::DeleteNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteNamespaceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: Example: Delete namespace
    #
    #   # Example: Delete namespace
    #
    #   resp = client.delete_namespace({
    #     id: "ns-ylexjili4cdxy3xm", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k98y6drk", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_namespace({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteNamespace AWS API Documentation
    #
    # @overload delete_namespace(params = {})
    # @param [Hash] params ({})
    def delete_namespace(params = {}, options = {})
      req = build_request(:delete_namespace, params)
      req.send_request(options)
    end

    # Deletes a specified service and all associated service attributes. If
    # the service still contains one or more registered instances, the
    # request fails.
    #
    # @option params [required, String] :id
    #   The ID of the service that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Example: Delete service
    #
    #   # Example: Delete service
    #
    #   resp = client.delete_service({
    #     id: "srv-p5zdwlg5uvvzjita", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # Deletes specific attributes associated with a service.
    #
    # @option params [required, String] :service_id
    #   The ID of the service from which the attributes will be deleted.
    #
    # @option params [required, Array<String>] :attributes
    #   A list of keys corresponding to each attribute that you want to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteServiceAttributes example
    #
    #   # Example: Delete service attribute by providing attribute key and service ID
    #
    #   resp = client.delete_service_attributes({
    #     attributes: [
    #       "port", 
    #     ], 
    #     service_id: "srv-e4anhexample0004", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_attributes({
    #     service_id: "ResourceId", # required
    #     attributes: ["ServiceAttributeKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeleteServiceAttributes AWS API Documentation
    #
    # @overload delete_service_attributes(params = {})
    # @param [Hash] params ({})
    def delete_service_attributes(params = {}, options = {})
      req = build_request(:delete_service_attributes, params)
      req.send_request(options)
    end

    # Deletes the Amazon Route 53 DNS records and health check, if any, that
    # Cloud Map created for the specified instance.
    #
    # @option params [required, String] :service_id
    #   The ID of the service that the instance is associated with.
    #
    # @option params [required, String] :instance_id
    #   The value that you specified for `Id` in the [RegisterInstance][1]
    #   request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html
    #
    # @return [Types::DeregisterInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterInstanceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: Example: Deregister a service instance
    #
    #   # Example: Deregister a service instance
    #
    #   resp = client.deregister_instance({
    #     instance_id: "myservice-53", 
    #     service_id: "srv-p5zdwlg5uvvzjita", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "4yejorelbukcjzpnr6tlmrghsjwpngf4-k98rnaiq", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_instance({
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DeregisterInstance AWS API Documentation
    #
    # @overload deregister_instance(params = {})
    # @param [Hash] params ({})
    def deregister_instance(params = {}, options = {})
      req = build_request(:deregister_instance, params)
      req.send_request(options)
    end

    # Discovers registered instances for a specified namespace and service.
    # You can use `DiscoverInstances` to discover instances for any type of
    # namespace. `DiscoverInstances` returns a randomized list of instances
    # allowing customers to distribute traffic evenly across instances. For
    # public and private DNS namespaces, you can also use DNS queries to
    # discover instances.
    #
    # @option params [required, String] :namespace_name
    #   The `HttpName` name of the namespace. It's found in the
    #   `HttpProperties` member of the `Properties` member of the namespace.
    #   In most cases, `Name` and `HttpName` match. However, if you reuse
    #   `Name` for namespace creation, a generated hash is added to `HttpName`
    #   to distinguish the two.
    #
    # @option params [required, String] :service_name
    #   The name of the service that you specified when you registered the
    #   instance.
    #
    # @option params [Integer] :max_results
    #   The maximum number of instances that you want Cloud Map to return in
    #   the response to a `DiscoverInstances` request. If you don't specify a
    #   value for `MaxResults`, Cloud Map returns up to 100 instances.
    #
    # @option params [Hash<String,String>] :query_parameters
    #   Filters to scope the results based on custom attributes for the
    #   instance (for example, `{version=v1, az=1a}`). Only instances that
    #   match all the specified key-value pairs are returned.
    #
    # @option params [Hash<String,String>] :optional_parameters
    #   Opportunistic filters to scope the results based on custom attributes.
    #   If there are instances that match both the filters specified in both
    #   the `QueryParameters` parameter and this parameter, all of these
    #   instances are returned. Otherwise, the filters are ignored, and only
    #   instances that match the filters that are specified in the
    #   `QueryParameters` parameter are returned.
    #
    # @option params [String] :health_status
    #   The health status of the instances that you want to discover. This
    #   parameter is ignored for services that don't have a health check
    #   configured, and all instances are returned.
    #
    #   HEALTHY
    #
    #   : Returns healthy instances.
    #
    #   UNHEALTHY
    #
    #   : Returns unhealthy instances.
    #
    #   ALL
    #
    #   : Returns all instances.
    #
    #   HEALTHY\_OR\_ELSE\_ALL
    #
    #   : Returns healthy instances, unless none are reporting a healthy
    #     state. In that case, return all instances. This is also called
    #     failing open.
    #
    # @return [Types::DiscoverInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DiscoverInstancesResponse#instances #instances} => Array&lt;Types::HttpInstanceSummary&gt;
    #   * {Types::DiscoverInstancesResponse#instances_revision #instances_revision} => Integer
    #
    #
    # @example Example: Example: Discover registered instances
    #
    #   # Example: Discover registered instances
    #
    #   resp = client.discover_instances({
    #     health_status: "ALL", 
    #     max_results: 10, 
    #     namespace_name: "example.com", 
    #     service_name: "myservice", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances: [
    #       {
    #         attributes: {
    #           "AWS_INSTANCE_IPV4" => "172.2.1.3", 
    #           "AWS_INSTANCE_PORT" => "808", 
    #         }, 
    #         health_status: "UNKNOWN", 
    #         instance_id: "myservice-53", 
    #         namespace_name: "example.com", 
    #         service_name: "myservice", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_instances({
    #     namespace_name: "NamespaceName", # required
    #     service_name: "ServiceName", # required
    #     max_results: 1,
    #     query_parameters: {
    #       "AttrKey" => "AttrValue",
    #     },
    #     optional_parameters: {
    #       "AttrKey" => "AttrValue",
    #     },
    #     health_status: "HEALTHY", # accepts HEALTHY, UNHEALTHY, ALL, HEALTHY_OR_ELSE_ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].namespace_name #=> String
    #   resp.instances[0].service_name #=> String
    #   resp.instances[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.instances[0].attributes #=> Hash
    #   resp.instances[0].attributes["AttrKey"] #=> String
    #   resp.instances_revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DiscoverInstances AWS API Documentation
    #
    # @overload discover_instances(params = {})
    # @param [Hash] params ({})
    def discover_instances(params = {}, options = {})
      req = build_request(:discover_instances, params)
      req.send_request(options)
    end

    # Discovers the increasing revision associated with an instance.
    #
    # @option params [required, String] :namespace_name
    #   The `HttpName` name of the namespace. It's found in the
    #   `HttpProperties` member of the `Properties` member of the namespace.
    #
    # @option params [required, String] :service_name
    #   The name of the service that you specified when you registered the
    #   instance.
    #
    # @return [Types::DiscoverInstancesRevisionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DiscoverInstancesRevisionResponse#instances_revision #instances_revision} => Integer
    #
    #
    # @example Example: To discover the revision for a registered instance
    #
    #   # The following example discovers the revision ID for a registered instance.
    #
    #   resp = client.discover_instances_revision({
    #     namespace_name: "example-namespace", 
    #     service_name: "example-service", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances_revision: 123456, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discover_instances_revision({
    #     namespace_name: "NamespaceName", # required
    #     service_name: "ServiceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instances_revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/DiscoverInstancesRevision AWS API Documentation
    #
    # @overload discover_instances_revision(params = {})
    # @param [Hash] params ({})
    def discover_instances_revision(params = {}, options = {})
      req = build_request(:discover_instances_revision, params)
      req.send_request(options)
    end

    # Gets information about a specified instance.
    #
    # @option params [required, String] :service_id
    #   The ID of the service that the instance is associated with.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance that you want to get information about.
    #
    # @return [Types::GetInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceResponse#instance #instance} => Types::Instance
    #
    #
    # @example Example: GetInstance example
    #
    #   # This example gets information about a specified instance.
    #
    #   resp = client.get_instance({
    #     instance_id: "i-abcd1234", 
    #     service_id: "srv-e4anhexample0004", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance: {
    #       attributes: {
    #         "AWS_INSTANCE_IPV4" => "192.0.2.44", 
    #         "AWS_INSTANCE_PORT" => "80", 
    #         "color" => "green", 
    #         "region" => "us-west-2", 
    #         "stage" => "beta", 
    #       }, 
    #       id: "i-abcd1234", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance({
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.id #=> String
    #   resp.instance.creator_request_id #=> String
    #   resp.instance.attributes #=> Hash
    #   resp.instance.attributes["AttrKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstance AWS API Documentation
    #
    # @overload get_instance(params = {})
    # @param [Hash] params ({})
    def get_instance(params = {}, options = {})
      req = build_request(:get_instance, params)
      req.send_request(options)
    end

    # Gets the current health status (`Healthy`, `Unhealthy`, or `Unknown`)
    # of one or more instances that are associated with a specified service.
    #
    # <note markdown="1"> There's a brief delay between when you register an instance and when
    # the health status for the instance is available.
    #
    #  </note>
    #
    # @option params [required, String] :service_id
    #   The ID of the service that the instance is associated with.
    #
    # @option params [Array<String>] :instances
    #   An array that contains the IDs of all the instances that you want to
    #   get the health status for.
    #
    #   If you omit `Instances`, Cloud Map returns the health status for all
    #   the instances that are associated with the specified service.
    #
    #   <note markdown="1"> To get the IDs for the instances that you've registered by using a
    #   specified service, submit a [ListInstances][1] request.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_ListInstances.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of instances that you want Cloud Map to return in
    #   the response to a `GetInstancesHealthStatus` request. If you don't
    #   specify a value for `MaxResults`, Cloud Map returns up to 100
    #   instances.
    #
    # @option params [String] :next_token
    #   For the first `GetInstancesHealthStatus` request, omit this value.
    #
    #   If more than `MaxResults` instances match the specified criteria, you
    #   can submit another `GetInstancesHealthStatus` request to get the next
    #   group of results. Specify the value of `NextToken` from the previous
    #   response in the next request.
    #
    # @return [Types::GetInstancesHealthStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstancesHealthStatusResponse#status #status} => Hash&lt;String,String&gt;
    #   * {Types::GetInstancesHealthStatusResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: GetInstancesHealthStatus example
    #
    #   # This example gets the current health status of one or more instances that are associate with a specified service.
    #
    #   resp = client.get_instances_health_status({
    #     service_id: "srv-e4anhexample0004", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     status: {
    #       "i-abcd1234" => "HEALTHY", 
    #       "i-abcd1235" => "UNHEALTHY", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instances_health_status({
    #     service_id: "ResourceId", # required
    #     instances: ["ResourceId"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> Hash
    #   resp.status["ResourceId"] #=> String, one of "HEALTHY", "UNHEALTHY", "UNKNOWN"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetInstancesHealthStatus AWS API Documentation
    #
    # @overload get_instances_health_status(params = {})
    # @param [Hash] params ({})
    def get_instances_health_status(params = {}, options = {})
      req = build_request(:get_instances_health_status, params)
      req.send_request(options)
    end

    # Gets information about a namespace.
    #
    # @option params [required, String] :id
    #   The ID of the namespace that you want to get information about.
    #
    # @return [Types::GetNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNamespaceResponse#namespace #namespace} => Types::Namespace
    #
    #
    # @example Example: GetNamespace example
    #
    #   # This example gets information about a specified namespace.
    #
    #   resp = client.get_namespace({
    #     id: "ns-e4anhexample0004", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     namespace: {
    #       arn: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-e1tpmexample0001", 
    #       create_date: Time.parse("20181118T211712Z"), 
    #       creator_request_id: "example-creator-request-id-0001", 
    #       description: "Example.com AWS Cloud Map HTTP Namespace", 
    #       id: "ns-e1tpmexample0001", 
    #       name: "example-http.com", 
    #       properties: {
    #         dns_properties: {
    #         }, 
    #         http_properties: {
    #           http_name: "example-http.com", 
    #         }, 
    #       }, 
    #       type: "HTTP", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_namespace({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.namespace.id #=> String
    #   resp.namespace.arn #=> String
    #   resp.namespace.name #=> String
    #   resp.namespace.type #=> String, one of "DNS_PUBLIC", "DNS_PRIVATE", "HTTP"
    #   resp.namespace.description #=> String
    #   resp.namespace.service_count #=> Integer
    #   resp.namespace.properties.dns_properties.hosted_zone_id #=> String
    #   resp.namespace.properties.dns_properties.soa.ttl #=> Integer
    #   resp.namespace.properties.http_properties.http_name #=> String
    #   resp.namespace.create_date #=> Time
    #   resp.namespace.creator_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetNamespace AWS API Documentation
    #
    # @overload get_namespace(params = {})
    # @param [Hash] params ({})
    def get_namespace(params = {}, options = {})
      req = build_request(:get_namespace, params)
      req.send_request(options)
    end

    # Gets information about any operation that returns an operation ID in
    # the response, such as a `CreateHttpNamespace` request.
    #
    # <note markdown="1"> To get a list of operations that match specified criteria, see
    # [ListOperations][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html
    #
    # @option params [required, String] :operation_id
    #   The ID of the operation that you want to get more information about.
    #
    # @return [Types::GetOperationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOperationResponse#operation #operation} => Types::Operation
    #
    #
    # @example Example: Example: Get operation result
    #
    #   # Example: Get operation result
    #
    #   resp = client.get_operation({
    #     operation_id: "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation: {
    #       create_date: Time.parse(1587055860.121), 
    #       id: "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd", 
    #       status: "SUCCESS", 
    #       targets: {
    #         "NAMESPACE" => "ns-ylexjili4cdxy3xm", 
    #       }, 
    #       type: "CREATE_NAMESPACE", 
    #       update_date: Time.parse(1587055900.469), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_operation({
    #     operation_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation.id #=> String
    #   resp.operation.type #=> String, one of "CREATE_NAMESPACE", "DELETE_NAMESPACE", "UPDATE_NAMESPACE", "UPDATE_SERVICE", "REGISTER_INSTANCE", "DEREGISTER_INSTANCE"
    #   resp.operation.status #=> String, one of "SUBMITTED", "PENDING", "SUCCESS", "FAIL"
    #   resp.operation.error_message #=> String
    #   resp.operation.error_code #=> String
    #   resp.operation.create_date #=> Time
    #   resp.operation.update_date #=> Time
    #   resp.operation.targets #=> Hash
    #   resp.operation.targets["OperationTargetType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetOperation AWS API Documentation
    #
    # @overload get_operation(params = {})
    # @param [Hash] params ({})
    def get_operation(params = {}, options = {})
      req = build_request(:get_operation, params)
      req.send_request(options)
    end

    # Gets the settings for a specified service.
    #
    # @option params [required, String] :id
    #   The ID of the service that you want to get settings for.
    #
    # @return [Types::GetServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceResponse#service #service} => Types::Service
    #
    #
    # @example Example: GetService Example
    #
    #   # This example gets the settings for a specified service.
    #
    #   resp = client.get_service({
    #     id: "srv-e4anhexample0004", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service: {
    #       arn: "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-e4anhexample0004", 
    #       create_date: Time.parse("20181118T211707Z"), 
    #       creator_request_id: "example-creator-request-id-0004", 
    #       description: "Example.com AWS Cloud Map HTTP Service", 
    #       health_check_config: {
    #         failure_threshold: 3, 
    #         resource_path: "/", 
    #         type: "HTTPS", 
    #       }, 
    #       id: "srv-e4anhexample0004", 
    #       name: "example-http-service", 
    #       namespace_id: "ns-e4anhexample0004", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service({
    #     id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service.id #=> String
    #   resp.service.arn #=> String
    #   resp.service.name #=> String
    #   resp.service.namespace_id #=> String
    #   resp.service.description #=> String
    #   resp.service.instance_count #=> Integer
    #   resp.service.dns_config.namespace_id #=> String
    #   resp.service.dns_config.routing_policy #=> String, one of "MULTIVALUE", "WEIGHTED"
    #   resp.service.dns_config.dns_records #=> Array
    #   resp.service.dns_config.dns_records[0].type #=> String, one of "SRV", "A", "AAAA", "CNAME"
    #   resp.service.dns_config.dns_records[0].ttl #=> Integer
    #   resp.service.type #=> String, one of "HTTP", "DNS_HTTP", "DNS"
    #   resp.service.health_check_config.type #=> String, one of "HTTP", "HTTPS", "TCP"
    #   resp.service.health_check_config.resource_path #=> String
    #   resp.service.health_check_config.failure_threshold #=> Integer
    #   resp.service.health_check_custom_config.failure_threshold #=> Integer
    #   resp.service.create_date #=> Time
    #   resp.service.creator_request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetService AWS API Documentation
    #
    # @overload get_service(params = {})
    # @param [Hash] params ({})
    def get_service(params = {}, options = {})
      req = build_request(:get_service, params)
      req.send_request(options)
    end

    # Returns the attributes associated with a specified service.
    #
    # @option params [required, String] :service_id
    #   The ID of the service that you want to get attributes for.
    #
    # @return [Types::GetServiceAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceAttributesResponse#service_attributes #service_attributes} => Types::ServiceAttributes
    #
    #
    # @example Example: GetServiceAttributes Example
    #
    #   # This example gets the attributes for a specified service.
    #
    #   resp = client.get_service_attributes({
    #     service_id: "srv-e4anhexample0004", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     service_attributes: {
    #       attributes: {
    #         "port" => "80", 
    #       }, 
    #       service_arn: "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-e4anhexample0004", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_attributes({
    #     service_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.service_attributes.service_arn #=> String
    #   resp.service_attributes.attributes #=> Hash
    #   resp.service_attributes.attributes["ServiceAttributeKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/GetServiceAttributes AWS API Documentation
    #
    # @overload get_service_attributes(params = {})
    # @param [Hash] params ({})
    def get_service_attributes(params = {}, options = {})
      req = build_request(:get_service_attributes, params)
      req.send_request(options)
    end

    # Lists summary information about the instances that you registered by
    # using a specified service.
    #
    # @option params [required, String] :service_id
    #   The ID of the service that you want to list instances for.
    #
    # @option params [String] :next_token
    #   For the first `ListInstances` request, omit this value.
    #
    #   If more than `MaxResults` instances match the specified criteria, you
    #   can submit another `ListInstances` request to get the next group of
    #   results. Specify the value of `NextToken` from the previous response
    #   in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of instances that you want Cloud Map to return in
    #   the response to a `ListInstances` request. If you don't specify a
    #   value for `MaxResults`, Cloud Map returns up to 100 instances.
    #
    # @return [Types::ListInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesResponse#instances #instances} => Array&lt;Types::InstanceSummary&gt;
    #   * {Types::ListInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example: List service instances
    #
    #   # Example: List service instances
    #
    #   resp = client.list_instances({
    #     service_id: "srv-qzpwvt2tfqcegapy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instances: [
    #       {
    #         attributes: {
    #           "AWS_INSTANCE_IPV4" => "172.2.1.3", 
    #           "AWS_INSTANCE_PORT" => "808", 
    #         }, 
    #         id: "i-06bdabbae60f65a4e", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     service_id: "ResourceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].id #=> String
    #   resp.instances[0].attributes #=> Hash
    #   resp.instances[0].attributes["AttrKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # Lists summary information about the namespaces that were created by
    # the current Amazon Web Services account.
    #
    # @option params [String] :next_token
    #   For the first `ListNamespaces` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another `ListNamespaces`
    #   request to get the next group of results. Specify the value of
    #   `NextToken` from the previous response in the next request.
    #
    #   <note markdown="1"> Cloud Map gets `MaxResults` namespaces and then filters them based on
    #   the specified criteria. It's possible that no namespaces in the first
    #   `MaxResults` namespaces matched the specified criteria but that
    #   subsequent groups of `MaxResults` namespaces do contain namespaces
    #   that match the criteria.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of namespaces that you want Cloud Map to return in
    #   the response to a `ListNamespaces` request. If you don't specify a
    #   value for `MaxResults`, Cloud Map returns up to 100 namespaces.
    #
    # @option params [Array<Types::NamespaceFilter>] :filters
    #   A complex type that contains specifications for the namespaces that
    #   you want to list.
    #
    #   If you specify more than one filter, a namespace must match all
    #   filters to be returned by `ListNamespaces`.
    #
    # @return [Types::ListNamespacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNamespacesResponse#namespaces #namespaces} => Array&lt;Types::NamespaceSummary&gt;
    #   * {Types::ListNamespacesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example: List namespaces
    #
    #   # Example: List namespaces
    #
    #   resp = client.list_namespaces({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     namespaces: [
    #       {
    #         arn: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-a3ccy2e7e3a7rile", 
    #         create_date: Time.parse(1585354387.357), 
    #         id: "ns-a3ccy2e7e3a7rile", 
    #         name: "local", 
    #         properties: {
    #           dns_properties: {
    #             hosted_zone_id: "Z06752353VBUDTC32S84S", 
    #           }, 
    #           http_properties: {
    #             http_name: "local", 
    #           }, 
    #         }, 
    #         type: "DNS_PRIVATE", 
    #       }, 
    #       {
    #         arn: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-pocfyjtrsmwtvcxx", 
    #         create_date: Time.parse(1586468974.698), 
    #         description: "My second namespace", 
    #         id: "ns-pocfyjtrsmwtvcxx", 
    #         name: "My-second-namespace", 
    #         properties: {
    #           dns_properties: {
    #           }, 
    #           http_properties: {
    #             http_name: "My-second-namespace", 
    #           }, 
    #         }, 
    #         type: "HTTP", 
    #       }, 
    #       {
    #         arn: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-ylexjili4cdxy3xm", 
    #         create_date: Time.parse(1587055896.798), 
    #         id: "ns-ylexjili4cdxy3xm", 
    #         name: "example.com", 
    #         properties: {
    #           dns_properties: {
    #             hosted_zone_id: "Z09983722P0QME1B3KC8I", 
    #           }, 
    #           http_properties: {
    #             http_name: "example.com", 
    #           }, 
    #         }, 
    #         type: "DNS_PRIVATE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_namespaces({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "TYPE", # required, accepts TYPE, NAME, HTTP_NAME
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN, BEGINS_WITH
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.namespaces #=> Array
    #   resp.namespaces[0].id #=> String
    #   resp.namespaces[0].arn #=> String
    #   resp.namespaces[0].name #=> String
    #   resp.namespaces[0].type #=> String, one of "DNS_PUBLIC", "DNS_PRIVATE", "HTTP"
    #   resp.namespaces[0].description #=> String
    #   resp.namespaces[0].service_count #=> Integer
    #   resp.namespaces[0].properties.dns_properties.hosted_zone_id #=> String
    #   resp.namespaces[0].properties.dns_properties.soa.ttl #=> Integer
    #   resp.namespaces[0].properties.http_properties.http_name #=> String
    #   resp.namespaces[0].create_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListNamespaces AWS API Documentation
    #
    # @overload list_namespaces(params = {})
    # @param [Hash] params ({})
    def list_namespaces(params = {}, options = {})
      req = build_request(:list_namespaces, params)
      req.send_request(options)
    end

    # Lists operations that match the criteria that you specify.
    #
    # @option params [String] :next_token
    #   For the first `ListOperations` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another `ListOperations`
    #   request to get the next group of results. Specify the value of
    #   `NextToken` from the previous response in the next request.
    #
    #   <note markdown="1"> Cloud Map gets `MaxResults` operations and then filters them based on
    #   the specified criteria. It's possible that no operations in the first
    #   `MaxResults` operations matched the specified criteria but that
    #   subsequent groups of `MaxResults` operations do contain operations
    #   that match the criteria.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of items that you want Cloud Map to return in the
    #   response to a `ListOperations` request. If you don't specify a value
    #   for `MaxResults`, Cloud Map returns up to 100 operations.
    #
    # @option params [Array<Types::OperationFilter>] :filters
    #   A complex type that contains specifications for the operations that
    #   you want to list, for example, operations that you started between a
    #   specified start date and end date.
    #
    #   If you specify more than one filter, an operation must match all
    #   filters to be returned by `ListOperations`.
    #
    # @return [Types::ListOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOperationsResponse#operations #operations} => Array&lt;Types::OperationSummary&gt;
    #   * {Types::ListOperationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListOperations Example
    #
    #   # This example gets the operations that have a STATUS of either PENDING or SUCCESS.
    #
    #   resp = client.list_operations({
    #     filters: [
    #       {
    #         condition: "IN", 
    #         name: "STATUS", 
    #         values: [
    #           "PENDING", 
    #           "SUCCESS", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operations: [
    #       {
    #         id: "76yy8ovhpdz0plmjzbsnqgnrqvpv2qdt-kexample", 
    #         status: "SUCCESS", 
    #       }, 
    #       {
    #         id: "prysnyzpji3u2ciy45nke83x2zanl7yk-dexample", 
    #         status: "SUCCESS", 
    #       }, 
    #       {
    #         id: "ko4ekftir7kzlbechsh7xvcdgcpk66gh-7example", 
    #         status: "PENDING", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_operations({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "NAMESPACE_ID", # required, accepts NAMESPACE_ID, SERVICE_ID, STATUS, TYPE, UPDATE_DATE
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN, BEGINS_WITH
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operations #=> Array
    #   resp.operations[0].id #=> String
    #   resp.operations[0].status #=> String, one of "SUBMITTED", "PENDING", "SUCCESS", "FAIL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListOperations AWS API Documentation
    #
    # @overload list_operations(params = {})
    # @param [Hash] params ({})
    def list_operations(params = {}, options = {})
      req = build_request(:list_operations, params)
      req.send_request(options)
    end

    # Lists summary information for all the services that are associated
    # with one or more namespaces.
    #
    # @option params [String] :next_token
    #   For the first `ListServices` request, omit this value.
    #
    #   If the response contains `NextToken`, submit another `ListServices`
    #   request to get the next group of results. Specify the value of
    #   `NextToken` from the previous response in the next request.
    #
    #   <note markdown="1"> Cloud Map gets `MaxResults` services and then filters them based on
    #   the specified criteria. It's possible that no services in the first
    #   `MaxResults` services matched the specified criteria but that
    #   subsequent groups of `MaxResults` services do contain services that
    #   match the criteria.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of services that you want Cloud Map to return in
    #   the response to a `ListServices` request. If you don't specify a
    #   value for `MaxResults`, Cloud Map returns up to 100 services.
    #
    # @option params [Array<Types::ServiceFilter>] :filters
    #   A complex type that contains specifications for the namespaces that
    #   you want to list services for.
    #
    #   If you specify more than one filter, an operation must match all
    #   filters to be returned by `ListServices`.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#services #services} => Array&lt;Types::ServiceSummary&gt;
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example: List services
    #
    #   # Example: List services
    #
    #   resp = client.list_services({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     services: [
    #       {
    #         arn: "arn:aws:servicediscovery:us-west-2:123456789012:service/srv-p5zdwlg5uvvzjita", 
    #         create_date: Time.parse(1587081768.334), 
    #         dns_config: {
    #           dns_records: [
    #             {
    #               ttl: 60, 
    #               type: "A", 
    #             }, 
    #           ], 
    #           routing_policy: "MULTIVALUE", 
    #         }, 
    #         id: "srv-p5zdwlg5uvvzjita", 
    #         name: "myservice", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "NAMESPACE_ID", # required, accepts NAMESPACE_ID
    #         values: ["FilterValue"], # required
    #         condition: "EQ", # accepts EQ, IN, BETWEEN, BEGINS_WITH
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.services #=> Array
    #   resp.services[0].id #=> String
    #   resp.services[0].arn #=> String
    #   resp.services[0].name #=> String
    #   resp.services[0].type #=> String, one of "HTTP", "DNS_HTTP", "DNS"
    #   resp.services[0].description #=> String
    #   resp.services[0].instance_count #=> Integer
    #   resp.services[0].dns_config.namespace_id #=> String
    #   resp.services[0].dns_config.routing_policy #=> String, one of "MULTIVALUE", "WEIGHTED"
    #   resp.services[0].dns_config.dns_records #=> Array
    #   resp.services[0].dns_config.dns_records[0].type #=> String, one of "SRV", "A", "AAAA", "CNAME"
    #   resp.services[0].dns_config.dns_records[0].ttl #=> Integer
    #   resp.services[0].health_check_config.type #=> String, one of "HTTP", "HTTPS", "TCP"
    #   resp.services[0].health_check_config.resource_path #=> String
    #   resp.services[0].health_check_config.failure_threshold #=> Integer
    #   resp.services[0].health_check_custom_config.failure_threshold #=> Integer
    #   resp.services[0].create_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Lists tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: ListTagsForResource example
    #
    #   # This example lists the tags of a resource.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:servicediscovery:us-east-1:123456789012:namespace/ns-ylexjili4cdxy3xm", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "Project", 
    #         value: "Zeta", 
    #       }, 
    #       {
    #         key: "Department", 
    #         value: "Engineering", 
    #       }, 
    #     ], 
    #   }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates one or more records and, optionally, creates a
    # health check based on the settings in a specified service. When you
    # submit a `RegisterInstance` request, the following occurs:
    #
    # * For each DNS record that you define in the service that's specified
    #   by `ServiceId`, a record is created or updated in the hosted zone
    #   that's associated with the corresponding namespace.
    #
    # * If the service includes `HealthCheckConfig`, a health check is
    #   created based on the settings in the health check configuration.
    #
    # * The health check, if any, is associated with each of the new or
    #   updated records.
    #
    # One `RegisterInstance` request must complete before you can submit
    # another request and specify the same service ID and instance ID.
    #
    # For more information, see [CreateService][1].
    #
    # When Cloud Map receives a DNS query for the specified DNS name, it
    # returns the applicable value:
    #
    # * **If the health check is healthy**: returns all the records
    #
    # * **If the health check is unhealthy**: returns the applicable value
    #   for the last healthy instance
    #
    # * **If you didn't specify a health check configuration**: returns all
    #   the records
    #
    # For the current quota on the number of instances that you can register
    # using the same namespace and using the same service, see [Cloud Map
    # quotas][2] in the *Cloud Map Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html
    # [2]: https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html
    #
    # @option params [required, String] :service_id
    #   The ID of the service that you want to use for settings for the
    #   instance.
    #
    # @option params [required, String] :instance_id
    #   An identifier that you want to associate with the instance. Note the
    #   following:
    #
    #   * If the service that's specified by `ServiceId` includes settings
    #     for an `SRV` record, the value of `InstanceId` is automatically
    #     included as part of the value for the `SRV` record. For more
    #     information, see [DnsRecord &gt; Type][1].
    #
    #   * You can use this value to update an existing instance.
    #
    #   * To register a new instance, you must specify a value that's unique
    #     among instances that you register by using the same service.
    #
    #   * If you specify an existing `InstanceId` and `ServiceId`, Cloud Map
    #     updates the existing DNS records, if any. If there's also an
    #     existing health check, Cloud Map deletes the old health check and
    #     creates a new one.
    #
    #     <note markdown="1"> The health check isn't deleted immediately, so it will still appear
    #     for a while if you submit a `ListHealthChecks` request, for example.
    #
    #      </note>
    #
    #   <note markdown="1"> Do not include sensitive information in `InstanceId` if the namespace
    #   is discoverable by public DNS queries and any `Type` member of
    #   `DnsRecord` for the service contains `SRV` because the `InstanceId` is
    #   discoverable by public DNS queries.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_DnsRecord.html#cloudmap-Type-DnsRecord-Type
    #
    # @option params [String] :creator_request_id
    #   A unique string that identifies the request and that allows failed
    #   `RegisterInstance` requests to be retried without the risk of
    #   executing the operation twice. You must use a unique
    #   `CreatorRequestId` string every time you submit a `RegisterInstance`
    #   request if you're registering additional instances for the same
    #   namespace and service. `CreatorRequestId` can be any unique string
    #   (for example, a date/time stamp).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Hash<String,String>] :attributes
    #   A string map that contains the following information for the service
    #   that you specify in `ServiceId`:
    #
    #   * The attributes that apply to the records that are defined in the
    #     service.
    #
    #   * For each attribute, the applicable value.
    #
    #   Do not include sensitive information in the attributes if the
    #   namespace is discoverable by public DNS queries.
    #
    #   The following are the supported attribute keys.
    #
    #   AWS\_ALIAS\_DNS\_NAME
    #
    #   : If you want Cloud Map to create an Amazon Route 53 alias record that
    #     routes traffic to an Elastic Load Balancing load balancer, specify
    #     the DNS name that's associated with the load balancer. For
    #     information about how to get the DNS name, see "DNSName" in the
    #     topic [AliasTarget][1] in the *Route 53 API Reference*.
    #
    #     Note the following:
    #
    #     * The configuration for the service that's specified by `ServiceId`
    #       must include settings for an `A` record, an `AAAA` record, or
    #       both.
    #
    #     * In the service that's specified by `ServiceId`, the value of
    #       `RoutingPolicy` must be `WEIGHTED`.
    #
    #     * If the service that's specified by `ServiceId` includes
    #       `HealthCheckConfig` settings, Cloud Map will create the Route 53
    #       health check, but it doesn't associate the health check with the
    #       alias record.
    #
    #     * Cloud Map currently doesn't support creating alias records that
    #       route traffic to Amazon Web Services resources other than Elastic
    #       Load Balancing load balancers.
    #
    #     * If you specify a value for `AWS_ALIAS_DNS_NAME`, don't specify
    #       values for any of the `AWS_INSTANCE` attributes.
    #
    #     * The `AWS_ALIAS_DNS_NAME` is not supported in the GovCloud (US)
    #       Regions.
    #
    #   AWS\_EC2\_INSTANCE\_ID
    #
    #   : *HTTP namespaces only.* The Amazon EC2 instance ID for the instance.
    #     If the `AWS_EC2_INSTANCE_ID` attribute is specified, then the only
    #     other attribute that can be specified is `AWS_INIT_HEALTH_STATUS`.
    #     When the `AWS_EC2_INSTANCE_ID` attribute is specified, then the
    #     `AWS_INSTANCE_IPV4` attribute will be filled out with the primary
    #     private IPv4 address.
    #
    #   AWS\_INIT\_HEALTH\_STATUS
    #
    #   : If the service configuration includes `HealthCheckCustomConfig`, you
    #     can optionally use `AWS_INIT_HEALTH_STATUS` to specify the initial
    #     status of the custom health check, `HEALTHY` or `UNHEALTHY`. If you
    #     don't specify a value for `AWS_INIT_HEALTH_STATUS`, the initial
    #     status is `HEALTHY`.
    #
    #   AWS\_INSTANCE\_CNAME
    #
    #   : If the service configuration includes a `CNAME` record, the domain
    #     name that you want Route 53 to return in response to DNS queries
    #     (for example, `example.com`).
    #
    #     This value is required if the service specified by `ServiceId`
    #     includes settings for an `CNAME` record.
    #
    #   AWS\_INSTANCE\_IPV4
    #
    #   : If the service configuration includes an `A` record, the IPv4
    #     address that you want Route 53 to return in response to DNS queries
    #     (for example, `192.0.2.44`).
    #
    #     This value is required if the service specified by `ServiceId`
    #     includes settings for an `A` record. If the service includes
    #     settings for an `SRV` record, you must specify a value for
    #     `AWS_INSTANCE_IPV4`, `AWS_INSTANCE_IPV6`, or both.
    #
    #   AWS\_INSTANCE\_IPV6
    #
    #   : If the service configuration includes an `AAAA` record, the IPv6
    #     address that you want Route 53 to return in response to DNS queries
    #     (for example, `2001:0db8:85a3:0000:0000:abcd:0001:2345`).
    #
    #     This value is required if the service specified by `ServiceId`
    #     includes settings for an `AAAA` record. If the service includes
    #     settings for an `SRV` record, you must specify a value for
    #     `AWS_INSTANCE_IPV4`, `AWS_INSTANCE_IPV6`, or both.
    #
    #   AWS\_INSTANCE\_PORT
    #
    #   : If the service includes an `SRV` record, the value that you want
    #     Route 53 to return for the port.
    #
    #     If the service includes `HealthCheckConfig`, the port on the
    #     endpoint that you want Route 53 to send requests to.
    #
    #     This value is required if you specified settings for an `SRV` record
    #     or a Route 53 health check when you created the service.
    #
    #   Custom attributes
    #
    #   : You can add up to 30 custom attributes. For each key-value pair, the
    #     maximum length of the attribute name is 255 characters, and the
    #     maximum length of the attribute value is 1,024 characters. The total
    #     size of all provided attributes (sum of all keys and values) must
    #     not exceed 5,000 characters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html
    #
    # @return [Types::RegisterInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterInstanceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: Example: Register Instance
    #
    #   # Example: Register Instance
    #
    #   resp = client.register_instance({
    #     attributes: {
    #       "AWS_INSTANCE_IPV4" => "172.2.1.3", 
    #       "AWS_INSTANCE_PORT" => "808", 
    #     }, 
    #     creator_request_id: "7a48a98a-72e6-4849-bfa7-1a458e030d7b", 
    #     instance_id: "myservice-53", 
    #     service_id: "srv-p5zdwlg5uvvzjita", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "4yejorelbukcjzpnr6tlmrghsjwpngf4-k95yg2u7", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_instance({
    #     service_id: "ResourceId", # required
    #     instance_id: "InstanceId", # required
    #     creator_request_id: "ResourceId",
    #     attributes: { # required
    #       "AttrKey" => "AttrValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/RegisterInstance AWS API Documentation
    #
    # @overload register_instance(params = {})
    # @param [Hash] params ({})
    def register_instance(params = {}, options = {})
      req = build_request(:register_instance, params)
      req.send_request(options)
    end

    # Adds one or more tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tags for.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the specified resource. Specifying the tag key is
    #   required. You can set the value of a tag to an empty string, but you
    #   can't set the value of a tag to null.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: TagResource example
    #
    #   # This example adds "Department" and "Project" tags to a resource.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:servicediscovery:us-east-1:123456789012:namespace/ns-ylexjili4cdxy3xm", 
    #     tags: [
    #       {
    #         key: "Department", 
    #         value: "Engineering", 
    #       }, 
    #       {
    #         key: "Project", 
    #         value: "Zeta", 
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
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   retrieve tags for.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UntagResource example
    #
    #   # This example removes the "Department" and "Project" tags from a resource.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:servicediscovery:us-east-1:123456789012:namespace/ns-ylexjili4cdxy3xm", 
    #     tag_keys: [
    #       "Project", 
    #       "Department", 
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
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an HTTP namespace.
    #
    # @option params [required, String] :id
    #   The ID of the namespace that you want to update.
    #
    # @option params [String] :updater_request_id
    #   A unique string that identifies the request and that allows failed
    #   `UpdateHttpNamespace` requests to be retried without the risk of
    #   running the operation twice. `UpdaterRequestId` can be any unique
    #   string (for example, a date/timestamp).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::HttpNamespaceChange] :namespace
    #   Updated properties for the the HTTP namespace.
    #
    # @return [Types::UpdateHttpNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateHttpNamespaceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: To update a HTTP namespace
    #
    #   # The following example updates the description of a HTTP namespace.
    #
    #   resp = client.update_http_namespace({
    #     id: "ns-vh4nbmEXAMPLE", 
    #     namespace: {
    #       description: "The updated namespace description.", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "ft52xe2koxhoeormaceymagglsdjyvEXAMPLE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_http_namespace({
    #     id: "ResourceId", # required
    #     updater_request_id: "ResourceId",
    #     namespace: { # required
    #       description: "ResourceDescription", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateHttpNamespace AWS API Documentation
    #
    # @overload update_http_namespace(params = {})
    # @param [Hash] params ({})
    def update_http_namespace(params = {}, options = {})
      req = build_request(:update_http_namespace, params)
      req.send_request(options)
    end

    # Submits a request to change the health status of a custom health check
    # to healthy or unhealthy.
    #
    # You can use `UpdateInstanceCustomHealthStatus` to change the status
    # only for custom health checks, which you define using
    # `HealthCheckCustomConfig` when you create a service. You can't use it
    # to change the status for Route 53 health checks, which you define
    # using `HealthCheckConfig`.
    #
    # For more information, see [HealthCheckCustomConfig][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html
    #
    # @option params [required, String] :service_id
    #   The ID of the service that includes the configuration for the custom
    #   health check that you want to change the status for.
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance that you want to change the health status for.
    #
    # @option params [required, String] :status
    #   The new status of the instance, `HEALTHY` or `UNHEALTHY`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateInstanceCustomHealthStatus Example
    #
    #   # This example submits a request to change the health status of an instance associated with a service with a custom health
    #   # check to HEALTHY.
    #
    #   resp = client.update_instance_custom_health_status({
    #     instance_id: "i-abcd1234", 
    #     service_id: "srv-e4anhexample0004", 
    #     status: "HEALTHY", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_custom_health_status({
    #     service_id: "ResourceId", # required
    #     instance_id: "ResourceId", # required
    #     status: "HEALTHY", # required, accepts HEALTHY, UNHEALTHY
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateInstanceCustomHealthStatus AWS API Documentation
    #
    # @overload update_instance_custom_health_status(params = {})
    # @param [Hash] params ({})
    def update_instance_custom_health_status(params = {}, options = {})
      req = build_request(:update_instance_custom_health_status, params)
      req.send_request(options)
    end

    # Updates a private DNS namespace.
    #
    # @option params [required, String] :id
    #   The ID of the namespace that you want to update.
    #
    # @option params [String] :updater_request_id
    #   A unique string that identifies the request and that allows failed
    #   `UpdatePrivateDnsNamespace` requests to be retried without the risk of
    #   running the operation twice. `UpdaterRequestId` can be any unique
    #   string (for example, a date/timestamp).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::PrivateDnsNamespaceChange] :namespace
    #   Updated properties for the private DNS namespace.
    #
    # @return [Types::UpdatePrivateDnsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePrivateDnsNamespaceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: To update a public DNS namespace
    #
    #   # The following example updates the description of a public DNS namespace.
    #
    #   resp = client.update_private_dns_namespace({
    #     id: "ns-bk3aEXAMPLE", 
    #     namespace: {
    #       description: "The updated namespace description.", 
    #     }, 
    #     updater_request_id: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "ft52xe2koxhoeormaceymagglsdjEXAMPLE", 
    #   }
    #
    # @example Example: To update a private DNS namespace
    #
    #   # The following example updates the description of a private DNS namespace.
    #
    #   resp = client.update_private_dns_namespace({
    #     id: "ns-bk3aEXAMPLE", 
    #     namespace: {
    #       description: "The updated namespace description.", 
    #     }, 
    #     updater_request_id: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "ft52xe2koxhoeormaceymagglsdjyvEXAMPLE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_private_dns_namespace({
    #     id: "ResourceId", # required
    #     updater_request_id: "ResourceId",
    #     namespace: { # required
    #       description: "ResourceDescription",
    #       properties: {
    #         dns_properties: { # required
    #           soa: { # required
    #             ttl: 1, # required
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdatePrivateDnsNamespace AWS API Documentation
    #
    # @overload update_private_dns_namespace(params = {})
    # @param [Hash] params ({})
    def update_private_dns_namespace(params = {}, options = {})
      req = build_request(:update_private_dns_namespace, params)
      req.send_request(options)
    end

    # Updates a public DNS namespace.
    #
    # @option params [required, String] :id
    #   The ID of the namespace being updated.
    #
    # @option params [String] :updater_request_id
    #   A unique string that identifies the request and that allows failed
    #   `UpdatePublicDnsNamespace` requests to be retried without the risk of
    #   running the operation twice. `UpdaterRequestId` can be any unique
    #   string (for example, a date/timestamp).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::PublicDnsNamespaceChange] :namespace
    #   Updated properties for the public DNS namespace.
    #
    # @return [Types::UpdatePublicDnsNamespaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePublicDnsNamespaceResponse#operation_id #operation_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_public_dns_namespace({
    #     id: "ResourceId", # required
    #     updater_request_id: "ResourceId",
    #     namespace: { # required
    #       description: "ResourceDescription",
    #       properties: {
    #         dns_properties: { # required
    #           soa: { # required
    #             ttl: 1, # required
    #           },
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdatePublicDnsNamespace AWS API Documentation
    #
    # @overload update_public_dns_namespace(params = {})
    # @param [Hash] params ({})
    def update_public_dns_namespace(params = {}, options = {})
      req = build_request(:update_public_dns_namespace, params)
      req.send_request(options)
    end

    # Submits a request to perform the following operations:
    #
    # * Update the TTL setting for existing `DnsRecords` configurations
    #
    # * Add, update, or delete `HealthCheckConfig` for a specified service
    #
    #   <note markdown="1"> You can't add, update, or delete a `HealthCheckCustomConfig`
    #   configuration.
    #
    #    </note>
    #
    # For public and private DNS namespaces, note the following:
    #
    # * If you omit any existing `DnsRecords` or `HealthCheckConfig`
    #   configurations from an `UpdateService` request, the configurations
    #   are deleted from the service.
    #
    # * If you omit an existing `HealthCheckCustomConfig` configuration from
    #   an `UpdateService` request, the configuration isn't deleted from
    #   the service.
    #
    # When you update settings for a service, Cloud Map also updates the
    # corresponding settings in all the records and health checks that were
    # created by using the specified service.
    #
    # @option params [required, String] :id
    #   The ID of the service that you want to update.
    #
    # @option params [required, Types::ServiceChange] :service
    #   A complex type that contains the new settings for the service. You can
    #   specify a maximum of 30 attributes (key-value pairs).
    #
    # @return [Types::UpdateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceResponse#operation_id #operation_id} => String
    #
    #
    # @example Example: UpdateService Example
    #
    #   # This example submits a request to replace the DnsConfig and HealthCheckConfig settings of a specified service.
    #
    #   resp = client.update_service({
    #     id: "srv-e4anhexample0004", 
    #     service: {
    #       dns_config: {
    #         dns_records: [
    #           {
    #             ttl: 60, 
    #             type: "A", 
    #           }, 
    #         ], 
    #       }, 
    #       health_check_config: {
    #         failure_threshold: 2, 
    #         resource_path: "/", 
    #         type: "HTTP", 
    #       }, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     operation_id: "m35hsdrkxwjffm3xef4bxyy6vc3ewakx-jdn3y5g5", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service({
    #     id: "ResourceId", # required
    #     service: { # required
    #       description: "ResourceDescription",
    #       dns_config: {
    #         dns_records: [ # required
    #           {
    #             type: "SRV", # required, accepts SRV, A, AAAA, CNAME
    #             ttl: 1, # required
    #           },
    #         ],
    #       },
    #       health_check_config: {
    #         type: "HTTP", # required, accepts HTTP, HTTPS, TCP
    #         resource_path: "ResourcePath",
    #         failure_threshold: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateService AWS API Documentation
    #
    # @overload update_service(params = {})
    # @param [Hash] params ({})
    def update_service(params = {}, options = {})
      req = build_request(:update_service, params)
      req.send_request(options)
    end

    # Submits a request to update a specified service to add service-level
    # attributes.
    #
    # @option params [required, String] :service_id
    #   The ID of the service that you want to update.
    #
    # @option params [required, Hash<String,String>] :attributes
    #   A string map that contains attribute key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UpdateServiceAttributes Example
    #
    #   # This example submits a request to update the specified service to add a port attribute with the value 80.
    #
    #   resp = client.update_service_attributes({
    #     attributes: {
    #       "port" => "80", 
    #     }, 
    #     service_id: "srv-e4anhexample0004", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_attributes({
    #     service_id: "ResourceId", # required
    #     attributes: { # required
    #       "ServiceAttributeKey" => "ServiceAttributeValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14/UpdateServiceAttributes AWS API Documentation
    #
    # @overload update_service_attributes(params = {})
    # @param [Hash] params ({})
    def update_service_attributes(params = {}, options = {})
      req = build_request(:update_service_attributes, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ServiceDiscovery')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-servicediscovery'
      context[:gem_version] = '1.86.0'
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
