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

module Aws::ECR
  # An API client for ECR.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ECR::Client.new(
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

    @identifier = :ecr

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
    add_plugin(Aws::ECR::Plugins::Endpoints)

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
    #   @option options [Aws::ECR::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ECR::EndpointParameters`.
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

    # Checks the availability of one or more image layers in a repository.
    #
    # When an image is pushed to a repository, each image layer is checked
    # to verify if it has been uploaded before. If it has been uploaded,
    # then the image layer is skipped.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the image layers to check. If you do not specify a registry,
    #   the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that is associated with the image layers to
    #   check.
    #
    # @option params [required, Array<String>] :layer_digests
    #   The digests of the image layers to check.
    #
    # @return [Types::BatchCheckLayerAvailabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCheckLayerAvailabilityResponse#layers #layers} => Array&lt;Types::Layer&gt;
    #   * {Types::BatchCheckLayerAvailabilityResponse#failures #failures} => Array&lt;Types::LayerFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_check_layer_availability({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     layer_digests: ["BatchedOperationLayerDigest"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.layers #=> Array
    #   resp.layers[0].layer_digest #=> String
    #   resp.layers[0].layer_availability #=> String, one of "AVAILABLE", "UNAVAILABLE"
    #   resp.layers[0].layer_size #=> Integer
    #   resp.layers[0].media_type #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].layer_digest #=> String
    #   resp.failures[0].failure_code #=> String, one of "InvalidLayerDigest", "MissingLayerDigest"
    #   resp.failures[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchCheckLayerAvailability AWS API Documentation
    #
    # @overload batch_check_layer_availability(params = {})
    # @param [Hash] params ({})
    def batch_check_layer_availability(params = {}, options = {})
      req = build_request(:batch_check_layer_availability, params)
      req.send_request(options)
    end

    # Deletes a list of specified images within a repository. Images are
    # specified with either an `imageTag` or `imageDigest`.
    #
    # You can remove a tag from an image by specifying the image's tag in
    # your request. When you remove the last tag from an image, the image is
    # deleted from your repository.
    #
    # You can completely delete an image (and all of its tags) by specifying
    # the image's digest in your request.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the image to delete. If you do not specify a registry, the
    #   default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository that contains the image to delete.
    #
    # @option params [required, Array<Types::ImageIdentifier>] :image_ids
    #   A list of image ID references that correspond to images to delete. The
    #   format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #
    # @return [Types::BatchDeleteImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteImageResponse#image_ids #image_ids} => Array&lt;Types::ImageIdentifier&gt;
    #   * {Types::BatchDeleteImageResponse#failures #failures} => Array&lt;Types::ImageFailure&gt;
    #
    #
    # @example Example: To delete multiple images
    #
    #   # This example deletes images with the tags precise and trusty in a repository called ubuntu in the default registry for
    #   # an account.
    #
    #   resp = client.batch_delete_image({
    #     image_ids: [
    #       {
    #         image_tag: "precise", 
    #       }, 
    #     ], 
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     image_ids: [
    #       {
    #         image_digest: "sha256:examplee6d1e504117a17000003d3753086354a38375961f2e665416ef4b1b2f", 
    #         image_tag: "precise", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_image({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [ # required
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.image_ids #=> Array
    #   resp.image_ids[0].image_digest #=> String
    #   resp.image_ids[0].image_tag #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].image_id.image_digest #=> String
    #   resp.failures[0].image_id.image_tag #=> String
    #   resp.failures[0].failure_code #=> String, one of "InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError", "UpstreamAccessDenied", "UpstreamTooManyRequests", "UpstreamUnavailable"
    #   resp.failures[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchDeleteImage AWS API Documentation
    #
    # @overload batch_delete_image(params = {})
    # @param [Hash] params ({})
    def batch_delete_image(params = {}, options = {})
      req = build_request(:batch_delete_image, params)
      req.send_request(options)
    end

    # Gets detailed information for an image. Images are specified with
    # either an `imageTag` or `imageDigest`.
    #
    # When an image is pulled, the BatchGetImage API is called once to
    # retrieve the image manifest.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the images to describe. If you do not specify a registry, the
    #   default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository that contains the images to describe.
    #
    # @option params [required, Array<Types::ImageIdentifier>] :image_ids
    #   A list of image ID references that correspond to images to describe.
    #   The format of the `imageIds` reference is `imageTag=tag` or
    #   `imageDigest=digest`.
    #
    # @option params [Array<String>] :accepted_media_types
    #   The accepted media types for the request.
    #
    #   Valid values: `application/vnd.docker.distribution.manifest.v1+json`
    #   \| `application/vnd.docker.distribution.manifest.v2+json` \|
    #   `application/vnd.oci.image.manifest.v1+json`
    #
    # @return [Types::BatchGetImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetImageResponse#images #images} => Array&lt;Types::Image&gt;
    #   * {Types::BatchGetImageResponse#failures #failures} => Array&lt;Types::ImageFailure&gt;
    #
    #
    # @example Example: To obtain multiple images in a single request
    #
    #   # This example obtains information for an image with a specified image digest ID from the repository named ubuntu in the
    #   # current account.
    #
    #   resp = client.batch_get_image({
    #     image_ids: [
    #       {
    #         image_tag: "precise", 
    #       }, 
    #     ], 
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     failures: [
    #     ], 
    #     images: [
    #       {
    #         image_id: {
    #           image_digest: "sha256:example76bdff6d83a09ba2a818f0d00000063724a9ac3ba5019c56f74ebf42a", 
    #           image_tag: "precise", 
    #         }, 
    #         image_manifest: "{\n \"schemaVersion\": 1,\n \"name\": \"ubuntu\",\n \"tag\": \"precise\",\n...", 
    #         registry_id: "244698725403", 
    #         repository_name: "ubuntu", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_image({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [ # required
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       },
    #     ],
    #     accepted_media_types: ["MediaType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.images #=> Array
    #   resp.images[0].registry_id #=> String
    #   resp.images[0].repository_name #=> String
    #   resp.images[0].image_id.image_digest #=> String
    #   resp.images[0].image_id.image_tag #=> String
    #   resp.images[0].image_manifest #=> String
    #   resp.images[0].image_manifest_media_type #=> String
    #   resp.failures #=> Array
    #   resp.failures[0].image_id.image_digest #=> String
    #   resp.failures[0].image_id.image_tag #=> String
    #   resp.failures[0].failure_code #=> String, one of "InvalidImageDigest", "InvalidImageTag", "ImageTagDoesNotMatchDigest", "ImageNotFound", "MissingDigestAndTag", "ImageReferencedByManifestList", "KmsError", "UpstreamAccessDenied", "UpstreamTooManyRequests", "UpstreamUnavailable"
    #   resp.failures[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchGetImage AWS API Documentation
    #
    # @overload batch_get_image(params = {})
    # @param [Hash] params ({})
    def batch_get_image(params = {}, options = {})
      req = build_request(:batch_get_image, params)
      req.send_request(options)
    end

    # Gets the scanning configuration for one or more repositories.
    #
    # @option params [required, Array<String>] :repository_names
    #   One or more repository names to get the scanning configuration for.
    #
    # @return [Types::BatchGetRepositoryScanningConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetRepositoryScanningConfigurationResponse#scanning_configurations #scanning_configurations} => Array&lt;Types::RepositoryScanningConfiguration&gt;
    #   * {Types::BatchGetRepositoryScanningConfigurationResponse#failures #failures} => Array&lt;Types::RepositoryScanningConfigurationFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_repository_scanning_configuration({
    #     repository_names: ["RepositoryName"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.scanning_configurations #=> Array
    #   resp.scanning_configurations[0].repository_arn #=> String
    #   resp.scanning_configurations[0].repository_name #=> String
    #   resp.scanning_configurations[0].scan_on_push #=> Boolean
    #   resp.scanning_configurations[0].scan_frequency #=> String, one of "SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"
    #   resp.scanning_configurations[0].applied_scan_filters #=> Array
    #   resp.scanning_configurations[0].applied_scan_filters[0].filter #=> String
    #   resp.scanning_configurations[0].applied_scan_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.failures #=> Array
    #   resp.failures[0].repository_name #=> String
    #   resp.failures[0].failure_code #=> String, one of "REPOSITORY_NOT_FOUND"
    #   resp.failures[0].failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/BatchGetRepositoryScanningConfiguration AWS API Documentation
    #
    # @overload batch_get_repository_scanning_configuration(params = {})
    # @param [Hash] params ({})
    def batch_get_repository_scanning_configuration(params = {}, options = {})
      req = build_request(:batch_get_repository_scanning_configuration, params)
      req.send_request(options)
    end

    # Informs Amazon ECR that the image layer upload has completed for a
    # specified registry, repository name, and upload ID. You can optionally
    # provide a `sha256` digest of the image layer for data validation
    # purposes.
    #
    # When an image is pushed, the CompleteLayerUpload API is called once
    # per each new image layer to verify that the upload has completed.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   which to upload layers. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to associate with the image layer.
    #
    # @option params [required, String] :upload_id
    #   The upload ID from a previous InitiateLayerUpload operation to
    #   associate with the image layer.
    #
    # @option params [required, Array<String>] :layer_digests
    #   The `sha256` digest of the image layer.
    #
    # @return [Types::CompleteLayerUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CompleteLayerUploadResponse#registry_id #registry_id} => String
    #   * {Types::CompleteLayerUploadResponse#repository_name #repository_name} => String
    #   * {Types::CompleteLayerUploadResponse#upload_id #upload_id} => String
    #   * {Types::CompleteLayerUploadResponse#layer_digest #layer_digest} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_layer_upload({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     upload_id: "UploadId", # required
    #     layer_digests: ["LayerDigest"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.upload_id #=> String
    #   resp.layer_digest #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CompleteLayerUpload AWS API Documentation
    #
    # @overload complete_layer_upload(params = {})
    # @param [Hash] params ({})
    def complete_layer_upload(params = {}, options = {})
      req = build_request(:complete_layer_upload, params)
      req.send_request(options)
    end

    # Creates a pull through cache rule. A pull through cache rule provides
    # a way to cache images from an upstream registry source in your Amazon
    # ECR private registry. For more information, see [Using pull through
    # cache rules][1] in the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/pull-through-cache.html
    #
    # @option params [required, String] :ecr_repository_prefix
    #   The repository name prefix to use when caching images from the source
    #   registry.
    #
    #   There is always an assumed `/` applied to the end of the prefix. If
    #   you specify `ecr-public` as the prefix, Amazon ECR treats that as
    #   `ecr-public/`.
    #
    # @option params [required, String] :upstream_registry_url
    #   The registry URL of the upstream public registry to use as the source
    #   for the pull through cache rule. The following is the syntax to use
    #   for each supported upstream registry.
    #
    #   * Amazon ECR (`ecr`) – `<accountId>.dkr.ecr.<region>.amazonaws.com`
    #
    #   * Amazon ECR Public (`ecr-public`) – `public.ecr.aws`
    #
    #   * Docker Hub (`docker-hub`) – `registry-1.docker.io`
    #
    #   * GitHub Container Registry (`github-container-registry`) – `ghcr.io`
    #
    #   * GitLab Container Registry (`gitlab-container-registry`) –
    #     `registry.gitlab.com`
    #
    #   * Kubernetes (`k8s`) – `registry.k8s.io`
    #
    #   * Microsoft Azure Container Registry (`azure-container-registry`) –
    #     `<custom>.azurecr.io`
    #
    #   * Quay (`quay`) – `quay.io`
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   create the pull through cache rule for. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @option params [String] :upstream_registry
    #   The name of the upstream registry.
    #
    # @option params [String] :credential_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
    #   Manager secret that identifies the credentials to authenticate to the
    #   upstream registry.
    #
    # @option params [String] :custom_role_arn
    #   Amazon Resource Name (ARN) of the IAM role to be assumed by Amazon ECR
    #   to authenticate to the ECR upstream registry. This role must be in the
    #   same account as the registry that you are configuring.
    #
    # @option params [String] :upstream_repository_prefix
    #   The repository name prefix of the upstream registry to match with the
    #   upstream repository name. When this field isn't specified, Amazon ECR
    #   will use the `ROOT`.
    #
    # @return [Types::CreatePullThroughCacheRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePullThroughCacheRuleResponse#ecr_repository_prefix #ecr_repository_prefix} => String
    #   * {Types::CreatePullThroughCacheRuleResponse#upstream_registry_url #upstream_registry_url} => String
    #   * {Types::CreatePullThroughCacheRuleResponse#created_at #created_at} => Time
    #   * {Types::CreatePullThroughCacheRuleResponse#registry_id #registry_id} => String
    #   * {Types::CreatePullThroughCacheRuleResponse#upstream_registry #upstream_registry} => String
    #   * {Types::CreatePullThroughCacheRuleResponse#credential_arn #credential_arn} => String
    #   * {Types::CreatePullThroughCacheRuleResponse#custom_role_arn #custom_role_arn} => String
    #   * {Types::CreatePullThroughCacheRuleResponse#upstream_repository_prefix #upstream_repository_prefix} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pull_through_cache_rule({
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix", # required
    #     upstream_registry_url: "Url", # required
    #     registry_id: "RegistryId",
    #     upstream_registry: "ecr", # accepts ecr, ecr-public, quay, k8s, docker-hub, github-container-registry, azure-container-registry, gitlab-container-registry
    #     credential_arn: "CredentialArn",
    #     custom_role_arn: "CustomRoleArn",
    #     upstream_repository_prefix: "PullThroughCacheRuleRepositoryPrefix",
    #   })
    #
    # @example Response structure
    #
    #   resp.ecr_repository_prefix #=> String
    #   resp.upstream_registry_url #=> String
    #   resp.created_at #=> Time
    #   resp.registry_id #=> String
    #   resp.upstream_registry #=> String, one of "ecr", "ecr-public", "quay", "k8s", "docker-hub", "github-container-registry", "azure-container-registry", "gitlab-container-registry"
    #   resp.credential_arn #=> String
    #   resp.custom_role_arn #=> String
    #   resp.upstream_repository_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreatePullThroughCacheRule AWS API Documentation
    #
    # @overload create_pull_through_cache_rule(params = {})
    # @param [Hash] params ({})
    def create_pull_through_cache_rule(params = {}, options = {})
      req = build_request(:create_pull_through_cache_rule, params)
      req.send_request(options)
    end

    # Creates a repository. For more information, see [Amazon ECR
    # repositories][1] in the *Amazon Elastic Container Registry User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   create the repository. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name to use for the repository. The repository name may be
    #   specified on its own (such as `nginx-web-app`) or it can be prepended
    #   with a namespace to group the repository into a category (such as
    #   `project-a/nginx-web-app`).
    #
    #   The repository name must start with a letter and can only contain
    #   lowercase letters, numbers, hyphens, underscores, and forward slashes.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The metadata that you apply to the repository to help you categorize
    #   and organize them. Each tag consists of a key and an optional value,
    #   both of which you define. Tag keys can have a maximum character length
    #   of 128 characters, and tag values can have a maximum length of 256
    #   characters.
    #
    # @option params [String] :image_tag_mutability
    #   The tag mutability setting for the repository. If this parameter is
    #   omitted, the default setting of `MUTABLE` will be used which will
    #   allow image tags to be overwritten. If `IMMUTABLE` is specified, all
    #   image tags within the repository will be immutable which will prevent
    #   them from being overwritten.
    #
    # @option params [Array<Types::ImageTagMutabilityExclusionFilter>] :image_tag_mutability_exclusion_filters
    #   Creates a repository with a list of filters that define which image
    #   tags can override the default image tag mutability setting.
    #
    # @option params [Types::ImageScanningConfiguration] :image_scanning_configuration
    #   The image scanning configuration for the repository. This determines
    #   whether images are scanned for known vulnerabilities after being
    #   pushed to the repository.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration for the repository. This determines how
    #   the contents of your repository are encrypted at rest.
    #
    # @return [Types::CreateRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRepositoryResponse#repository #repository} => Types::Repository
    #
    #
    # @example Example: To create a new repository
    #
    #   # This example creates a repository called nginx-web-app inside the project-a namespace in the default registry for an
    #   # account.
    #
    #   resp = client.create_repository({
    #     repository_name: "project-a/nginx-web-app", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     repository: {
    #       registry_id: "012345678901", 
    #       repository_arn: "arn:aws:ecr:us-west-2:012345678901:repository/project-a/nginx-web-app", 
    #       repository_name: "project-a/nginx-web-app", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     image_tag_mutability: "MUTABLE", # accepts MUTABLE, IMMUTABLE, IMMUTABLE_WITH_EXCLUSION, MUTABLE_WITH_EXCLUSION
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD", # required, accepts WILDCARD
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       },
    #     ],
    #     image_scanning_configuration: {
    #       scan_on_push: false,
    #     },
    #     encryption_configuration: {
    #       encryption_type: "AES256", # required, accepts AES256, KMS, KMS_DSSE
    #       kms_key: "KmsKey",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.repository_arn #=> String
    #   resp.repository.registry_id #=> String
    #   resp.repository.repository_name #=> String
    #   resp.repository.repository_uri #=> String
    #   resp.repository.created_at #=> Time
    #   resp.repository.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"
    #   resp.repository.image_tag_mutability_exclusion_filters #=> Array
    #   resp.repository.image_tag_mutability_exclusion_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.repository.image_tag_mutability_exclusion_filters[0].filter #=> String
    #   resp.repository.image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.repository.encryption_configuration.encryption_type #=> String, one of "AES256", "KMS", "KMS_DSSE"
    #   resp.repository.encryption_configuration.kms_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreateRepository AWS API Documentation
    #
    # @overload create_repository(params = {})
    # @param [Hash] params ({})
    def create_repository(params = {}, options = {})
      req = build_request(:create_repository, params)
      req.send_request(options)
    end

    # Creates a repository creation template. This template is used to
    # define the settings for repositories created by Amazon ECR on your
    # behalf. For example, repositories created through pull through cache
    # actions. For more information, see [Private repository creation
    # templates][1] in the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-creation-templates.html
    #
    # @option params [required, String] :prefix
    #   The repository namespace prefix to associate with the template. All
    #   repositories created using this namespace prefix will have the
    #   settings defined in this template applied. For example, a prefix of
    #   `prod` would apply to all repositories beginning with `prod/`.
    #   Similarly, a prefix of `prod/team` would apply to all repositories
    #   beginning with `prod/team/`.
    #
    #   To apply a template to all repositories in your registry that don't
    #   have an associated creation template, you can use `ROOT` as the
    #   prefix.
    #
    #   There is always an assumed `/` applied to the end of the prefix. If
    #   you specify `ecr-public` as the prefix, Amazon ECR treats that as
    #   `ecr-public/`. When using a pull through cache rule, the repository
    #   prefix you specify during rule creation is what you should specify as
    #   your repository creation template prefix as well.
    #
    # @option params [String] :description
    #   A description for the repository creation template.
    #
    # @option params [Types::EncryptionConfigurationForRepositoryCreationTemplate] :encryption_configuration
    #   The encryption configuration to use for repositories created using the
    #   template.
    #
    # @option params [Array<Types::Tag>] :resource_tags
    #   The metadata to apply to the repository to help you categorize and
    #   organize. Each tag consists of a key and an optional value, both of
    #   which you define. Tag keys can have a maximum character length of 128
    #   characters, and tag values can have a maximum length of 256
    #   characters.
    #
    # @option params [String] :image_tag_mutability
    #   The tag mutability setting for the repository. If this parameter is
    #   omitted, the default setting of `MUTABLE` will be used which will
    #   allow image tags to be overwritten. If `IMMUTABLE` is specified, all
    #   image tags within the repository will be immutable which will prevent
    #   them from being overwritten.
    #
    # @option params [Array<Types::ImageTagMutabilityExclusionFilter>] :image_tag_mutability_exclusion_filters
    #   Creates a repository creation template with a list of filters that
    #   define which image tags can override the default image tag mutability
    #   setting.
    #
    # @option params [String] :repository_policy
    #   The repository policy to apply to repositories created using the
    #   template. A repository policy is a permissions policy associated with
    #   a repository to control access permissions.
    #
    # @option params [String] :lifecycle_policy
    #   The lifecycle policy to use for repositories created using the
    #   template.
    #
    # @option params [required, Array<String>] :applied_for
    #   A list of enumerable strings representing the Amazon ECR repository
    #   creation scenarios that this template will apply towards. The two
    #   supported scenarios are `PULL_THROUGH_CACHE` and `REPLICATION`
    #
    # @option params [String] :custom_role_arn
    #   The ARN of the role to be assumed by Amazon ECR. This role must be in
    #   the same account as the registry that you are configuring. Amazon ECR
    #   will assume your supplied role when the customRoleArn is specified.
    #   When this field isn't specified, Amazon ECR will use the
    #   service-linked role for the repository creation template.
    #
    # @return [Types::CreateRepositoryCreationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRepositoryCreationTemplateResponse#registry_id #registry_id} => String
    #   * {Types::CreateRepositoryCreationTemplateResponse#repository_creation_template #repository_creation_template} => Types::RepositoryCreationTemplate
    #
    #
    # @example Example: Create a new repository creation template
    #
    #   # This example creates a repository creation template.
    #
    #   resp = client.create_repository_creation_template({
    #     applied_for: [
    #       "REPLICATION", 
    #       "PULL_THROUGH_CACHE", 
    #     ], 
    #     description: "Repos for testing images", 
    #     encryption_configuration: {
    #       encryption_type: "AES256", 
    #     }, 
    #     image_tag_mutability: "MUTABLE", 
    #     lifecycle_policy: "{\r\n    \"rules\": [\r\n        {\r\n            \"rulePriority\": 1,\r\n            \"description\": \"Expire images older than 14 days\",\r\n            \"selection\": {\r\n                \"tagStatus\": \"untagged\",\r\n                \"countType\": \"sinceImagePushed\",\r\n                \"countUnit\": \"days\",\r\n                \"countNumber\": 14\r\n            },\r\n            \"action\": {\r\n                \"type\": \"expire\"\r\n            }\r\n        }\r\n    ]\r\n}", 
    #     prefix: "eng/test", 
    #     repository_policy: "{\r\n  \"Version\": \"2012-10-17\",\r\n  \"Statement\": [\r\n    {\r\n      \"Sid\": \"LambdaECRPullPolicy\",\r\n      \"Effect\": \"Allow\",\r\n      \"Principal\": {\r\n        \"Service\": \"lambda.amazonaws.com\"\r\n      },\r\n      \"Action\": \"ecr:BatchGetImage\"\r\n    }\r\n  ]\r\n}", 
    #     resource_tags: [
    #       {
    #         key: "environment", 
    #         value: "test", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     registry_id: "012345678901", 
    #     repository_creation_template: {
    #       applied_for: [
    #         "REPLICATION", 
    #         "PULL_THROUGH_CACHE", 
    #       ], 
    #       created_at: Time.parse("2023-12-16T17:29:02-07:00"), 
    #       description: "Repos for testing images", 
    #       encryption_configuration: {
    #         encryption_type: "AES256", 
    #       }, 
    #       image_tag_mutability: "MUTABLE", 
    #       lifecycle_policy: "{\r\n    \"rules\": [\r\n        {\r\n            \"rulePriority\": 1,\r\n            \"description\": \"Expire images older than 14 days\",\r\n            \"selection\": {\r\n                \"tagStatus\": \"untagged\",\r\n                \"countType\": \"sinceImagePushed\",\r\n                \"countUnit\": \"days\",\r\n                \"countNumber\": 14\r\n            },\r\n            \"action\": {\r\n                \"type\": \"expire\"\r\n            }\r\n        }\r\n    ]\r\n}", 
    #       prefix: "eng/test", 
    #       repository_policy: "{\n  \"Version\" : \"2012-10-17\",\n  \"Statement\" : [ {\n    \"Sid\" : \"LambdaECRPullPolicy\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n      \"Service\" : \"lambda.amazonaws.com\"\n    },\n    \"Action\" : \"ecr:BatchGetImage\"\n  } ]\n}", 
    #       resource_tags: [
    #         {
    #           key: "environment", 
    #           value: "test", 
    #         }, 
    #       ], 
    #       updated_at: Time.parse("2023-12-16T17:29:02-07:00"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository_creation_template({
    #     prefix: "Prefix", # required
    #     description: "RepositoryTemplateDescription",
    #     encryption_configuration: {
    #       encryption_type: "AES256", # required, accepts AES256, KMS, KMS_DSSE
    #       kms_key: "KmsKeyForRepositoryCreationTemplate",
    #     },
    #     resource_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     image_tag_mutability: "MUTABLE", # accepts MUTABLE, IMMUTABLE, IMMUTABLE_WITH_EXCLUSION, MUTABLE_WITH_EXCLUSION
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD", # required, accepts WILDCARD
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       },
    #     ],
    #     repository_policy: "RepositoryPolicyText",
    #     lifecycle_policy: "LifecyclePolicyTextForRepositoryCreationTemplate",
    #     applied_for: ["REPLICATION"], # required, accepts REPLICATION, PULL_THROUGH_CACHE
    #     custom_role_arn: "CustomRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_creation_template.prefix #=> String
    #   resp.repository_creation_template.description #=> String
    #   resp.repository_creation_template.encryption_configuration.encryption_type #=> String, one of "AES256", "KMS", "KMS_DSSE"
    #   resp.repository_creation_template.encryption_configuration.kms_key #=> String
    #   resp.repository_creation_template.resource_tags #=> Array
    #   resp.repository_creation_template.resource_tags[0].key #=> String
    #   resp.repository_creation_template.resource_tags[0].value #=> String
    #   resp.repository_creation_template.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters #=> Array
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters[0].filter #=> String
    #   resp.repository_creation_template.repository_policy #=> String
    #   resp.repository_creation_template.lifecycle_policy #=> String
    #   resp.repository_creation_template.applied_for #=> Array
    #   resp.repository_creation_template.applied_for[0] #=> String, one of "REPLICATION", "PULL_THROUGH_CACHE"
    #   resp.repository_creation_template.custom_role_arn #=> String
    #   resp.repository_creation_template.created_at #=> Time
    #   resp.repository_creation_template.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/CreateRepositoryCreationTemplate AWS API Documentation
    #
    # @overload create_repository_creation_template(params = {})
    # @param [Hash] params ({})
    def create_repository_creation_template(params = {}, options = {})
      req = build_request(:create_repository_creation_template, params)
      req.send_request(options)
    end

    # Deletes the lifecycle policy associated with the specified repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository.
    #
    # @return [Types::DeleteLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLifecyclePolicyResponse#registry_id #registry_id} => String
    #   * {Types::DeleteLifecyclePolicyResponse#repository_name #repository_name} => String
    #   * {Types::DeleteLifecyclePolicyResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #   * {Types::DeleteLifecyclePolicyResponse#last_evaluated_at #last_evaluated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #   resp.last_evaluated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteLifecyclePolicy AWS API Documentation
    #
    # @overload delete_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def delete_lifecycle_policy(params = {}, options = {})
      req = build_request(:delete_lifecycle_policy, params)
      req.send_request(options)
    end

    # Deletes a pull through cache rule.
    #
    # @option params [required, String] :ecr_repository_prefix
    #   The Amazon ECR repository prefix associated with the pull through
    #   cache rule to delete.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the pull through cache rule. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @return [Types::DeletePullThroughCacheRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePullThroughCacheRuleResponse#ecr_repository_prefix #ecr_repository_prefix} => String
    #   * {Types::DeletePullThroughCacheRuleResponse#upstream_registry_url #upstream_registry_url} => String
    #   * {Types::DeletePullThroughCacheRuleResponse#created_at #created_at} => Time
    #   * {Types::DeletePullThroughCacheRuleResponse#registry_id #registry_id} => String
    #   * {Types::DeletePullThroughCacheRuleResponse#credential_arn #credential_arn} => String
    #   * {Types::DeletePullThroughCacheRuleResponse#custom_role_arn #custom_role_arn} => String
    #   * {Types::DeletePullThroughCacheRuleResponse#upstream_repository_prefix #upstream_repository_prefix} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pull_through_cache_rule({
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix", # required
    #     registry_id: "RegistryId",
    #   })
    #
    # @example Response structure
    #
    #   resp.ecr_repository_prefix #=> String
    #   resp.upstream_registry_url #=> String
    #   resp.created_at #=> Time
    #   resp.registry_id #=> String
    #   resp.credential_arn #=> String
    #   resp.custom_role_arn #=> String
    #   resp.upstream_repository_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeletePullThroughCacheRule AWS API Documentation
    #
    # @overload delete_pull_through_cache_rule(params = {})
    # @param [Hash] params ({})
    def delete_pull_through_cache_rule(params = {}, options = {})
      req = build_request(:delete_pull_through_cache_rule, params)
      req.send_request(options)
    end

    # Deletes the registry permissions policy.
    #
    # @return [Types::DeleteRegistryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRegistryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::DeleteRegistryPolicyResponse#policy_text #policy_text} => String
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRegistryPolicy AWS API Documentation
    #
    # @overload delete_registry_policy(params = {})
    # @param [Hash] params ({})
    def delete_registry_policy(params = {}, options = {})
      req = build_request(:delete_registry_policy, params)
      req.send_request(options)
    end

    # Deletes a repository. If the repository isn't empty, you must either
    # delete the contents of the repository or use the `force` option to
    # delete the repository and have Amazon ECR delete all of its contents
    # on your behalf.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository to delete. If you do not specify a registry,
    #   the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to delete.
    #
    # @option params [Boolean] :force
    #   If true, deleting the repository force deletes the contents of the
    #   repository. If false, the repository must be empty before attempting
    #   to delete it.
    #
    # @return [Types::DeleteRepositoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryResponse#repository #repository} => Types::Repository
    #
    #
    # @example Example: To force delete a repository
    #
    #   # This example force deletes a repository named ubuntu in the default registry for an account. The force parameter is
    #   # required if the repository contains images.
    #
    #   resp = client.delete_repository({
    #     force: true, 
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     repository: {
    #       registry_id: "012345678901", 
    #       repository_arn: "arn:aws:ecr:us-west-2:012345678901:repository/ubuntu", 
    #       repository_name: "ubuntu", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.repository_arn #=> String
    #   resp.repository.registry_id #=> String
    #   resp.repository.repository_name #=> String
    #   resp.repository.repository_uri #=> String
    #   resp.repository.created_at #=> Time
    #   resp.repository.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"
    #   resp.repository.image_tag_mutability_exclusion_filters #=> Array
    #   resp.repository.image_tag_mutability_exclusion_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.repository.image_tag_mutability_exclusion_filters[0].filter #=> String
    #   resp.repository.image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.repository.encryption_configuration.encryption_type #=> String, one of "AES256", "KMS", "KMS_DSSE"
    #   resp.repository.encryption_configuration.kms_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepository AWS API Documentation
    #
    # @overload delete_repository(params = {})
    # @param [Hash] params ({})
    def delete_repository(params = {}, options = {})
      req = build_request(:delete_repository, params)
      req.send_request(options)
    end

    # Deletes a repository creation template.
    #
    # @option params [required, String] :prefix
    #   The repository namespace prefix associated with the repository
    #   creation template.
    #
    # @return [Types::DeleteRepositoryCreationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryCreationTemplateResponse#registry_id #registry_id} => String
    #   * {Types::DeleteRepositoryCreationTemplateResponse#repository_creation_template #repository_creation_template} => Types::RepositoryCreationTemplate
    #
    #
    # @example Example: Delete a repository creation template
    #
    #   # This example deletes a repository creation template.
    #
    #   resp = client.delete_repository_creation_template({
    #     prefix: "eng", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     registry_id: "012345678901", 
    #     repository_creation_template: {
    #       created_at: Time.parse("2023-12-03T16:27:57.933000-08:00"), 
    #       encryption_configuration: {
    #         encryption_type: "AES256", 
    #       }, 
    #       image_tag_mutability: "MUTABLE", 
    #       prefix: "eng", 
    #       updated_at: Time.parse("2023-12-03T16:27:57.933000-08:00"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository_creation_template({
    #     prefix: "Prefix", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_creation_template.prefix #=> String
    #   resp.repository_creation_template.description #=> String
    #   resp.repository_creation_template.encryption_configuration.encryption_type #=> String, one of "AES256", "KMS", "KMS_DSSE"
    #   resp.repository_creation_template.encryption_configuration.kms_key #=> String
    #   resp.repository_creation_template.resource_tags #=> Array
    #   resp.repository_creation_template.resource_tags[0].key #=> String
    #   resp.repository_creation_template.resource_tags[0].value #=> String
    #   resp.repository_creation_template.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters #=> Array
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters[0].filter #=> String
    #   resp.repository_creation_template.repository_policy #=> String
    #   resp.repository_creation_template.lifecycle_policy #=> String
    #   resp.repository_creation_template.applied_for #=> Array
    #   resp.repository_creation_template.applied_for[0] #=> String, one of "REPLICATION", "PULL_THROUGH_CACHE"
    #   resp.repository_creation_template.custom_role_arn #=> String
    #   resp.repository_creation_template.created_at #=> Time
    #   resp.repository_creation_template.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepositoryCreationTemplate AWS API Documentation
    #
    # @overload delete_repository_creation_template(params = {})
    # @param [Hash] params ({})
    def delete_repository_creation_template(params = {}, options = {})
      req = build_request(:delete_repository_creation_template, params)
      req.send_request(options)
    end

    # Deletes the repository policy associated with the specified
    # repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository policy to delete. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that is associated with the repository
    #   policy to delete.
    #
    # @return [Types::DeleteRepositoryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::DeleteRepositoryPolicyResponse#repository_name #repository_name} => String
    #   * {Types::DeleteRepositoryPolicyResponse#policy_text #policy_text} => String
    #
    #
    # @example Example: To delete the policy associated with a repository
    #
    #   # This example deletes the policy associated with the repository named ubuntu in the current account.
    #
    #   resp = client.delete_repository_policy({
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_text: "{ ... }", 
    #     registry_id: "012345678901", 
    #     repository_name: "ubuntu", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DeleteRepositoryPolicy AWS API Documentation
    #
    # @overload delete_repository_policy(params = {})
    # @param [Hash] params ({})
    def delete_repository_policy(params = {}, options = {})
      req = build_request(:delete_repository_policy, params)
      req.send_request(options)
    end

    # Returns the replication status for a specified image.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that the image is in.
    #
    # @option params [required, Types::ImageIdentifier] :image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry. If
    #   you do not specify a registry, the default registry is assumed.
    #
    # @return [Types::DescribeImageReplicationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImageReplicationStatusResponse#repository_name #repository_name} => String
    #   * {Types::DescribeImageReplicationStatusResponse#image_id #image_id} => Types::ImageIdentifier
    #   * {Types::DescribeImageReplicationStatusResponse#replication_statuses #replication_statuses} => Array&lt;Types::ImageReplicationStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_replication_status({
    #     repository_name: "RepositoryName", # required
    #     image_id: { # required
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag",
    #     },
    #     registry_id: "RegistryId",
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_name #=> String
    #   resp.image_id.image_digest #=> String
    #   resp.image_id.image_tag #=> String
    #   resp.replication_statuses #=> Array
    #   resp.replication_statuses[0].region #=> String
    #   resp.replication_statuses[0].registry_id #=> String
    #   resp.replication_statuses[0].status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.replication_statuses[0].failure_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImageReplicationStatus AWS API Documentation
    #
    # @overload describe_image_replication_status(params = {})
    # @param [Hash] params ({})
    def describe_image_replication_status(params = {}, options = {})
      req = build_request(:describe_image_replication_status, params)
      req.send_request(options)
    end

    # Returns the scan findings for the specified image.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to describe the image scan findings
    #   for. If you do not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository for the image for which to describe the scan findings.
    #
    # @option params [required, Types::ImageIdentifier] :image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeImageScanFindings` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is null when there are no more results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of image scan results returned by
    #   `DescribeImageScanFindings` in paginated output. When this parameter
    #   is used, `DescribeImageScanFindings` only returns `maxResults` results
    #   in a single page along with a `nextToken` response element. The
    #   remaining results of the initial request can be seen by sending
    #   another `DescribeImageScanFindings` request with the returned
    #   `nextToken` value. This value can be between 1 and 1000. If this
    #   parameter is not used, then `DescribeImageScanFindings` returns up to
    #   100 results and a `nextToken` value, if applicable.
    #
    # @return [Types::DescribeImageScanFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImageScanFindingsResponse#registry_id #registry_id} => String
    #   * {Types::DescribeImageScanFindingsResponse#repository_name #repository_name} => String
    #   * {Types::DescribeImageScanFindingsResponse#image_id #image_id} => Types::ImageIdentifier
    #   * {Types::DescribeImageScanFindingsResponse#image_scan_status #image_scan_status} => Types::ImageScanStatus
    #   * {Types::DescribeImageScanFindingsResponse#image_scan_findings #image_scan_findings} => Types::ImageScanFindings
    #   * {Types::DescribeImageScanFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_image_scan_findings({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_id: { # required
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.image_id.image_digest #=> String
    #   resp.image_id.image_tag #=> String
    #   resp.image_scan_status.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE", "LIMIT_EXCEEDED"
    #   resp.image_scan_status.description #=> String
    #   resp.image_scan_findings.image_scan_completed_at #=> Time
    #   resp.image_scan_findings.vulnerability_source_updated_at #=> Time
    #   resp.image_scan_findings.finding_severity_counts #=> Hash
    #   resp.image_scan_findings.finding_severity_counts["FindingSeverity"] #=> Integer
    #   resp.image_scan_findings.findings #=> Array
    #   resp.image_scan_findings.findings[0].name #=> String
    #   resp.image_scan_findings.findings[0].description #=> String
    #   resp.image_scan_findings.findings[0].uri #=> String
    #   resp.image_scan_findings.findings[0].severity #=> String, one of "INFORMATIONAL", "LOW", "MEDIUM", "HIGH", "CRITICAL", "UNDEFINED"
    #   resp.image_scan_findings.findings[0].attributes #=> Array
    #   resp.image_scan_findings.findings[0].attributes[0].key #=> String
    #   resp.image_scan_findings.findings[0].attributes[0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.image_scan_findings.enhanced_findings #=> Array
    #   resp.image_scan_findings.enhanced_findings[0].aws_account_id #=> String
    #   resp.image_scan_findings.enhanced_findings[0].description #=> String
    #   resp.image_scan_findings.enhanced_findings[0].finding_arn #=> String
    #   resp.image_scan_findings.enhanced_findings[0].first_observed_at #=> Time
    #   resp.image_scan_findings.enhanced_findings[0].last_observed_at #=> Time
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss #=> Array
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0].base_score #=> Float
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0].scoring_vector #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0].source #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.cvss[0].version #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.reference_urls #=> Array
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.reference_urls[0] #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.related_vulnerabilities #=> Array
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.related_vulnerabilities[0] #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.source #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.source_url #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vendor_created_at #=> Time
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vendor_severity #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vendor_updated_at #=> Time
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerability_id #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages #=> Array
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].arch #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].epoch #=> Integer
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].file_path #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].name #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].package_manager #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].release #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].source_layer_hash #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].version #=> String
    #   resp.image_scan_findings.enhanced_findings[0].package_vulnerability_details.vulnerable_packages[0].fixed_in_version #=> String
    #   resp.image_scan_findings.enhanced_findings[0].remediation.recommendation.url #=> String
    #   resp.image_scan_findings.enhanced_findings[0].remediation.recommendation.text #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources #=> Array
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.architecture #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.author #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.image_hash #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.image_tags #=> Array
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.image_tags[0] #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.platform #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.pushed_at #=> Time
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.last_in_use_at #=> Time
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.in_use_count #=> Integer
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.registry #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].details.aws_ecr_container_image.repository_name #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].id #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].tags #=> Hash
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].tags["TagKey"] #=> String
    #   resp.image_scan_findings.enhanced_findings[0].resources[0].type #=> String
    #   resp.image_scan_findings.enhanced_findings[0].score #=> Float
    #   resp.image_scan_findings.enhanced_findings[0].score_details.cvss.adjustments #=> Array
    #   resp.image_scan_findings.enhanced_findings[0].score_details.cvss.adjustments[0].metric #=> String
    #   resp.image_scan_findings.enhanced_findings[0].score_details.cvss.adjustments[0].reason #=> String
    #   resp.image_scan_findings.enhanced_findings[0].score_details.cvss.score #=> Float
    #   resp.image_scan_findings.enhanced_findings[0].score_details.cvss.score_source #=> String
    #   resp.image_scan_findings.enhanced_findings[0].score_details.cvss.scoring_vector #=> String
    #   resp.image_scan_findings.enhanced_findings[0].score_details.cvss.version #=> String
    #   resp.image_scan_findings.enhanced_findings[0].severity #=> String
    #   resp.image_scan_findings.enhanced_findings[0].status #=> String
    #   resp.image_scan_findings.enhanced_findings[0].title #=> String
    #   resp.image_scan_findings.enhanced_findings[0].type #=> String
    #   resp.image_scan_findings.enhanced_findings[0].updated_at #=> Time
    #   resp.image_scan_findings.enhanced_findings[0].fix_available #=> String
    #   resp.image_scan_findings.enhanced_findings[0].exploit_available #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * image_scan_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImageScanFindings AWS API Documentation
    #
    # @overload describe_image_scan_findings(params = {})
    # @param [Hash] params ({})
    def describe_image_scan_findings(params = {}, options = {})
      req = build_request(:describe_image_scan_findings, params)
      req.send_request(options)
    end

    # Returns metadata about the images in a repository.
    #
    # <note markdown="1"> Starting with Docker version 1.9, the Docker client compresses image
    # layers before pushing them to a V2 Docker registry. The output of the
    # `docker images` command shows the uncompressed image size. Therefore,
    # Docker might return a larger image than the image shown in the Amazon
    # Web Services Management Console.
    #
    #  </note>
    #
    # The new version of Amazon ECR *Basic Scanning* doesn't use the
    # ImageDetail$imageScanFindingsSummary and ImageDetail$imageScanStatus
    # attributes from the API response to return scan results. Use the
    # DescribeImageScanFindings API instead. For more information about
    # Amazon Web Services native basic scanning, see [ Scan images for
    # software vulnerabilities in Amazon ECR][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to describe images. If you do not
    #   specify a registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository that contains the images to describe.
    #
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   The list of image IDs for the requested repository.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeImages` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value. This
    #   value is `null` when there are no more results to return. This option
    #   cannot be used when you specify images with `imageIds`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results returned by `DescribeImages`
    #   in paginated output. When this parameter is used, `DescribeImages`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `DescribeImages` request with
    #   the returned `nextToken` value. This value can be between 1 and 1000.
    #   If this parameter is not used, then `DescribeImages` returns up to 100
    #   results and a `nextToken` value, if applicable. This option cannot be
    #   used when you specify images with `imageIds`.
    #
    # @option params [Types::DescribeImagesFilter] :filter
    #   The filter key and value with which to filter your `DescribeImages`
    #   results.
    #
    # @return [Types::DescribeImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeImagesResponse#image_details #image_details} => Array&lt;Types::ImageDetail&gt;
    #   * {Types::DescribeImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_images({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: {
    #       tag_status: "TAGGED", # accepts TAGGED, UNTAGGED, ANY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.image_details #=> Array
    #   resp.image_details[0].registry_id #=> String
    #   resp.image_details[0].repository_name #=> String
    #   resp.image_details[0].image_digest #=> String
    #   resp.image_details[0].image_tags #=> Array
    #   resp.image_details[0].image_tags[0] #=> String
    #   resp.image_details[0].image_size_in_bytes #=> Integer
    #   resp.image_details[0].image_pushed_at #=> Time
    #   resp.image_details[0].image_scan_status.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE", "LIMIT_EXCEEDED"
    #   resp.image_details[0].image_scan_status.description #=> String
    #   resp.image_details[0].image_scan_findings_summary.image_scan_completed_at #=> Time
    #   resp.image_details[0].image_scan_findings_summary.vulnerability_source_updated_at #=> Time
    #   resp.image_details[0].image_scan_findings_summary.finding_severity_counts #=> Hash
    #   resp.image_details[0].image_scan_findings_summary.finding_severity_counts["FindingSeverity"] #=> Integer
    #   resp.image_details[0].image_manifest_media_type #=> String
    #   resp.image_details[0].artifact_media_type #=> String
    #   resp.image_details[0].last_recorded_pull_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeImages AWS API Documentation
    #
    # @overload describe_images(params = {})
    # @param [Hash] params ({})
    def describe_images(params = {}, options = {})
      req = build_request(:describe_images, params)
      req.send_request(options)
    end

    # Returns the pull through cache rules for a registry.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   return the pull through cache rules for. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @option params [Array<String>] :ecr_repository_prefixes
    #   The Amazon ECR repository prefixes associated with the pull through
    #   cache rules to return. If no repository prefix value is specified, all
    #   pull through cache rules are returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribePullThroughCacheRulesRequest` request where `maxResults` was
    #   used and the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value. This value is null when there are no more results
    #   to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of pull through cache rules returned by
    #   `DescribePullThroughCacheRulesRequest` in paginated output. When this
    #   parameter is used, `DescribePullThroughCacheRulesRequest` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `DescribePullThroughCacheRulesRequest` request
    #   with the returned `nextToken` value. This value can be between 1 and
    #   1000. If this parameter is not used, then
    #   `DescribePullThroughCacheRulesRequest` returns up to 100 results and a
    #   `nextToken` value, if applicable.
    #
    # @return [Types::DescribePullThroughCacheRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePullThroughCacheRulesResponse#pull_through_cache_rules #pull_through_cache_rules} => Array&lt;Types::PullThroughCacheRule&gt;
    #   * {Types::DescribePullThroughCacheRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pull_through_cache_rules({
    #     registry_id: "RegistryId",
    #     ecr_repository_prefixes: ["PullThroughCacheRuleRepositoryPrefix"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pull_through_cache_rules #=> Array
    #   resp.pull_through_cache_rules[0].ecr_repository_prefix #=> String
    #   resp.pull_through_cache_rules[0].upstream_registry_url #=> String
    #   resp.pull_through_cache_rules[0].created_at #=> Time
    #   resp.pull_through_cache_rules[0].registry_id #=> String
    #   resp.pull_through_cache_rules[0].credential_arn #=> String
    #   resp.pull_through_cache_rules[0].custom_role_arn #=> String
    #   resp.pull_through_cache_rules[0].upstream_repository_prefix #=> String
    #   resp.pull_through_cache_rules[0].upstream_registry #=> String, one of "ecr", "ecr-public", "quay", "k8s", "docker-hub", "github-container-registry", "azure-container-registry", "gitlab-container-registry"
    #   resp.pull_through_cache_rules[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribePullThroughCacheRules AWS API Documentation
    #
    # @overload describe_pull_through_cache_rules(params = {})
    # @param [Hash] params ({})
    def describe_pull_through_cache_rules(params = {}, options = {})
      req = build_request(:describe_pull_through_cache_rules, params)
      req.send_request(options)
    end

    # Describes the settings for a registry. The replication configuration
    # for a repository can be created or updated with the
    # PutReplicationConfiguration API action.
    #
    # @return [Types::DescribeRegistryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistryResponse#registry_id #registry_id} => String
    #   * {Types::DescribeRegistryResponse#replication_configuration #replication_configuration} => Types::ReplicationConfiguration
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.replication_configuration.rules #=> Array
    #   resp.replication_configuration.rules[0].destinations #=> Array
    #   resp.replication_configuration.rules[0].destinations[0].region #=> String
    #   resp.replication_configuration.rules[0].destinations[0].registry_id #=> String
    #   resp.replication_configuration.rules[0].repository_filters #=> Array
    #   resp.replication_configuration.rules[0].repository_filters[0].filter #=> String
    #   resp.replication_configuration.rules[0].repository_filters[0].filter_type #=> String, one of "PREFIX_MATCH"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRegistry AWS API Documentation
    #
    # @overload describe_registry(params = {})
    # @param [Hash] params ({})
    def describe_registry(params = {}, options = {})
      req = build_request(:describe_registry, params)
      req.send_request(options)
    end

    # Describes image repositories in a registry.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repositories to be described. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @option params [Array<String>] :repository_names
    #   A list of repositories to describe. If this parameter is omitted, then
    #   all repositories in a registry are described.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeRepositories` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value. This value is `null` when there are no more results to return.
    #   This option cannot be used when you specify repositories with
    #   `repositoryNames`.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results returned by
    #   `DescribeRepositories` in paginated output. When this parameter is
    #   used, `DescribeRepositories` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `DescribeRepositories` request with the returned `nextToken` value.
    #   This value can be between 1 and 1000. If this parameter is not used,
    #   then `DescribeRepositories` returns up to 100 results and a
    #   `nextToken` value, if applicable. This option cannot be used when you
    #   specify repositories with `repositoryNames`.
    #
    # @return [Types::DescribeRepositoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRepositoriesResponse#repositories #repositories} => Array&lt;Types::Repository&gt;
    #   * {Types::DescribeRepositoriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe all repositories in the current account
    #
    #   # The following example obtains a list and description of all repositories in the default registry to which the current
    #   # user has access.
    #
    #   resp = client.describe_repositories({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     repositories: [
    #       {
    #         registry_id: "012345678910", 
    #         repository_arn: "arn:aws:ecr:us-west-2:012345678910:repository/ubuntu", 
    #         repository_name: "ubuntu", 
    #       }, 
    #       {
    #         registry_id: "012345678910", 
    #         repository_arn: "arn:aws:ecr:us-west-2:012345678910:repository/test", 
    #         repository_name: "test", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repositories({
    #     registry_id: "RegistryId",
    #     repository_names: ["RepositoryName"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.repositories #=> Array
    #   resp.repositories[0].repository_arn #=> String
    #   resp.repositories[0].registry_id #=> String
    #   resp.repositories[0].repository_name #=> String
    #   resp.repositories[0].repository_uri #=> String
    #   resp.repositories[0].created_at #=> Time
    #   resp.repositories[0].image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"
    #   resp.repositories[0].image_tag_mutability_exclusion_filters #=> Array
    #   resp.repositories[0].image_tag_mutability_exclusion_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.repositories[0].image_tag_mutability_exclusion_filters[0].filter #=> String
    #   resp.repositories[0].image_scanning_configuration.scan_on_push #=> Boolean
    #   resp.repositories[0].encryption_configuration.encryption_type #=> String, one of "AES256", "KMS", "KMS_DSSE"
    #   resp.repositories[0].encryption_configuration.kms_key #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRepositories AWS API Documentation
    #
    # @overload describe_repositories(params = {})
    # @param [Hash] params ({})
    def describe_repositories(params = {}, options = {})
      req = build_request(:describe_repositories, params)
      req.send_request(options)
    end

    # Returns details about the repository creation templates in a registry.
    # The `prefixes` request parameter can be used to return the details for
    # a specific repository creation template.
    #
    # @option params [Array<String>] :prefixes
    #   The repository namespace prefixes associated with the repository
    #   creation templates to describe. If this value is not specified, all
    #   repository creation templates are returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated
    #   `DescribeRepositoryCreationTemplates` request where `maxResults` was
    #   used and the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value. This value is `null` when there are no more results
    #   to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results returned by
    #   `DescribeRepositoryCreationTemplatesRequest` in paginated output. When
    #   this parameter is used, `DescribeRepositoryCreationTemplatesRequest`
    #   only returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another
    #   `DescribeRepositoryCreationTemplatesRequest` request with the returned
    #   `nextToken` value. This value can be between 1 and 1000. If this
    #   parameter is not used, then
    #   `DescribeRepositoryCreationTemplatesRequest` returns up to 100 results
    #   and a `nextToken` value, if applicable.
    #
    # @return [Types::DescribeRepositoryCreationTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRepositoryCreationTemplatesResponse#registry_id #registry_id} => String
    #   * {Types::DescribeRepositoryCreationTemplatesResponse#repository_creation_templates #repository_creation_templates} => Array&lt;Types::RepositoryCreationTemplate&gt;
    #   * {Types::DescribeRepositoryCreationTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Describe a repository creation template
    #
    #   # This example describes the contents of a repository creation template.
    #
    #   resp = client.describe_repository_creation_templates({
    #     max_results: 123, 
    #     next_token: "", 
    #     prefixes: [
    #       "eng", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "", 
    #     registry_id: "012345678901", 
    #     repository_creation_templates: [
    #       {
    #         applied_for: [
    #           "PULL_THROUGH_CACHE", 
    #           "REPLICATION", 
    #         ], 
    #         created_at: Time.parse("2023-12-16T17:29:02-07:00"), 
    #         encryption_configuration: {
    #           encryption_type: "AES256", 
    #         }, 
    #         image_tag_mutability: "MUTABLE", 
    #         prefix: "eng/test", 
    #         updated_at: Time.parse("2023-12-16T19:55:02-07:00"), 
    #       }, 
    #       {
    #         applied_for: [
    #           "REPLICATION", 
    #         ], 
    #         created_at: Time.parse("2023-12-14T17:29:02-07:00"), 
    #         encryption_configuration: {
    #           encryption_type: "AES256", 
    #         }, 
    #         image_tag_mutability: "IMMUTABLE", 
    #         prefix: "eng/replication-test", 
    #         updated_at: Time.parse("2023-12-14T19:55:02-07:00"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repository_creation_templates({
    #     prefixes: ["Prefix"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_creation_templates #=> Array
    #   resp.repository_creation_templates[0].prefix #=> String
    #   resp.repository_creation_templates[0].description #=> String
    #   resp.repository_creation_templates[0].encryption_configuration.encryption_type #=> String, one of "AES256", "KMS", "KMS_DSSE"
    #   resp.repository_creation_templates[0].encryption_configuration.kms_key #=> String
    #   resp.repository_creation_templates[0].resource_tags #=> Array
    #   resp.repository_creation_templates[0].resource_tags[0].key #=> String
    #   resp.repository_creation_templates[0].resource_tags[0].value #=> String
    #   resp.repository_creation_templates[0].image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"
    #   resp.repository_creation_templates[0].image_tag_mutability_exclusion_filters #=> Array
    #   resp.repository_creation_templates[0].image_tag_mutability_exclusion_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.repository_creation_templates[0].image_tag_mutability_exclusion_filters[0].filter #=> String
    #   resp.repository_creation_templates[0].repository_policy #=> String
    #   resp.repository_creation_templates[0].lifecycle_policy #=> String
    #   resp.repository_creation_templates[0].applied_for #=> Array
    #   resp.repository_creation_templates[0].applied_for[0] #=> String, one of "REPLICATION", "PULL_THROUGH_CACHE"
    #   resp.repository_creation_templates[0].custom_role_arn #=> String
    #   resp.repository_creation_templates[0].created_at #=> Time
    #   resp.repository_creation_templates[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/DescribeRepositoryCreationTemplates AWS API Documentation
    #
    # @overload describe_repository_creation_templates(params = {})
    # @param [Hash] params ({})
    def describe_repository_creation_templates(params = {}, options = {})
      req = build_request(:describe_repository_creation_templates, params)
      req.send_request(options)
    end

    # Retrieves the account setting value for the specified setting name.
    #
    # @option params [required, String] :name
    #   The name of the account setting, such as `BASIC_SCAN_TYPE_VERSION` or
    #   `REGISTRY_POLICY_SCOPE`.
    #
    # @return [Types::GetAccountSettingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingResponse#name #name} => String
    #   * {Types::GetAccountSettingResponse#value #value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_setting({
    #     name: "AccountSettingName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetAccountSetting AWS API Documentation
    #
    # @overload get_account_setting(params = {})
    # @param [Hash] params ({})
    def get_account_setting(params = {}, options = {})
      req = build_request(:get_account_setting, params)
      req.send_request(options)
    end

    # Retrieves an authorization token. An authorization token represents
    # your IAM authentication credentials and can be used to access any
    # Amazon ECR registry that your IAM principal has access to. The
    # authorization token is valid for 12 hours.
    #
    # The `authorizationToken` returned is a base64 encoded string that can
    # be decoded and used in a `docker login` command to authenticate to a
    # registry. The CLI offers an `get-login-password` command that
    # simplifies the login process. For more information, see [Registry
    # authentication][1] in the *Amazon Elastic Container Registry User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth
    #
    # @option params [Array<String>] :registry_ids
    #   A list of Amazon Web Services account IDs that are associated with the
    #   registries for which to get AuthorizationData objects. If you do not
    #   specify a registry, the default registry is assumed.
    #
    # @return [Types::GetAuthorizationTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAuthorizationTokenResponse#authorization_data #authorization_data} => Array&lt;Types::AuthorizationData&gt;
    #
    #
    # @example Example: To obtain an authorization token
    #
    #   # This example gets an authorization token for your default registry.
    #
    #   resp = client.get_authorization_token({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     authorization_data: [
    #       {
    #         authorization_token: "QVdTOkNEXAMPLE", 
    #         expires_at: Time.parse("2022-05-17T06:56:13.652000+00:00"), 
    #         proxy_endpoint: "https://012345678901.dkr.ecr.us-west-2.amazonaws.com", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorization_token({
    #     registry_ids: ["RegistryId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.authorization_data #=> Array
    #   resp.authorization_data[0].authorization_token #=> String
    #   resp.authorization_data[0].expires_at #=> Time
    #   resp.authorization_data[0].proxy_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetAuthorizationToken AWS API Documentation
    #
    # @overload get_authorization_token(params = {})
    # @param [Hash] params ({})
    def get_authorization_token(params = {}, options = {})
      req = build_request(:get_authorization_token, params)
      req.send_request(options)
    end

    # Retrieves the pre-signed Amazon S3 download URL corresponding to an
    # image layer. You can only get URLs for image layers that are
    # referenced in an image.
    #
    # When an image is pulled, the GetDownloadUrlForLayer API is called once
    # per image layer that is not already cached.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the image layer to download. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that is associated with the image layer to
    #   download.
    #
    # @option params [required, String] :layer_digest
    #   The digest of the image layer to download.
    #
    # @return [Types::GetDownloadUrlForLayerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDownloadUrlForLayerResponse#download_url #download_url} => String
    #   * {Types::GetDownloadUrlForLayerResponse#layer_digest #layer_digest} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_download_url_for_layer({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     layer_digest: "LayerDigest", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.download_url #=> String
    #   resp.layer_digest #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetDownloadUrlForLayer AWS API Documentation
    #
    # @overload get_download_url_for_layer(params = {})
    # @param [Hash] params ({})
    def get_download_url_for_layer(params = {}, options = {})
      req = build_request(:get_download_url_for_layer, params)
      req.send_request(options)
    end

    # Retrieves the lifecycle policy for the specified repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository.
    #
    # @return [Types::GetLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePolicyResponse#registry_id #registry_id} => String
    #   * {Types::GetLifecyclePolicyResponse#repository_name #repository_name} => String
    #   * {Types::GetLifecyclePolicyResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #   * {Types::GetLifecyclePolicyResponse#last_evaluated_at #last_evaluated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #   resp.last_evaluated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicy AWS API Documentation
    #
    # @overload get_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policy(params = {}, options = {})
      req = build_request(:get_lifecycle_policy, params)
      req.send_request(options)
    end

    # Retrieves the results of the lifecycle policy preview request for the
    # specified repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository.
    #
    # @option params [Array<Types::ImageIdentifier>] :image_ids
    #   The list of imageIDs to be included.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated 
    #   `GetLifecyclePolicyPreviewRequest` request where `maxResults` was used
    #   and the  results exceeded the value of that parameter. Pagination
    #   continues from the end of the  previous results that returned the
    #   `nextToken` value. This value is  `null` when there are no more
    #   results to return. This option cannot be used when you specify images
    #   with `imageIds`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of repository results returned by
    #   `GetLifecyclePolicyPreviewRequest` in  paginated output. When this
    #   parameter is used, `GetLifecyclePolicyPreviewRequest` only returns 
    #   `maxResults` results in a single page along with a `nextToken` 
    #   response element. The remaining results of the initial request can be
    #   seen by sending  another `GetLifecyclePolicyPreviewRequest` request
    #   with the returned `nextToken`  value. This value can be between 1 and
    #   100. If this  parameter is not used, then
    #   `GetLifecyclePolicyPreviewRequest` returns up to 100 results and a
    #   `nextToken` value, if  applicable. This option cannot be used when you
    #   specify images with `imageIds`.
    #
    # @option params [Types::LifecyclePolicyPreviewFilter] :filter
    #   An optional parameter that filters results based on image tag status
    #   and all tags, if tagged.
    #
    # @return [Types::GetLifecyclePolicyPreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLifecyclePolicyPreviewResponse#registry_id #registry_id} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#repository_name #repository_name} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#status #status} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#next_token #next_token} => String
    #   * {Types::GetLifecyclePolicyPreviewResponse#preview_results #preview_results} => Array&lt;Types::LifecyclePolicyPreviewResult&gt;
    #   * {Types::GetLifecyclePolicyPreviewResponse#summary #summary} => Types::LifecyclePolicyPreviewSummary
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lifecycle_policy_preview({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_ids: [
    #       {
    #         image_digest: "ImageDigest",
    #         image_tag: "ImageTag",
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: {
    #       tag_status: "TAGGED", # accepts TAGGED, UNTAGGED, ANY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"
    #   resp.next_token #=> String
    #   resp.preview_results #=> Array
    #   resp.preview_results[0].image_tags #=> Array
    #   resp.preview_results[0].image_tags[0] #=> String
    #   resp.preview_results[0].image_digest #=> String
    #   resp.preview_results[0].image_pushed_at #=> Time
    #   resp.preview_results[0].action.type #=> String, one of "EXPIRE"
    #   resp.preview_results[0].applied_rule_priority #=> Integer
    #   resp.summary.expiring_image_total_count #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * lifecycle_policy_preview_complete
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetLifecyclePolicyPreview AWS API Documentation
    #
    # @overload get_lifecycle_policy_preview(params = {})
    # @param [Hash] params ({})
    def get_lifecycle_policy_preview(params = {}, options = {})
      req = build_request(:get_lifecycle_policy_preview, params)
      req.send_request(options)
    end

    # Retrieves the permissions policy for a registry.
    #
    # @return [Types::GetRegistryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::GetRegistryPolicyResponse#policy_text #policy_text} => String
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRegistryPolicy AWS API Documentation
    #
    # @overload get_registry_policy(params = {})
    # @param [Hash] params ({})
    def get_registry_policy(params = {}, options = {})
      req = build_request(:get_registry_policy, params)
      req.send_request(options)
    end

    # Retrieves the scanning configuration for a registry.
    #
    # @return [Types::GetRegistryScanningConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistryScanningConfigurationResponse#registry_id #registry_id} => String
    #   * {Types::GetRegistryScanningConfigurationResponse#scanning_configuration #scanning_configuration} => Types::RegistryScanningConfiguration
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.scanning_configuration.scan_type #=> String, one of "BASIC", "ENHANCED"
    #   resp.scanning_configuration.rules #=> Array
    #   resp.scanning_configuration.rules[0].scan_frequency #=> String, one of "SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"
    #   resp.scanning_configuration.rules[0].repository_filters #=> Array
    #   resp.scanning_configuration.rules[0].repository_filters[0].filter #=> String
    #   resp.scanning_configuration.rules[0].repository_filters[0].filter_type #=> String, one of "WILDCARD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRegistryScanningConfiguration AWS API Documentation
    #
    # @overload get_registry_scanning_configuration(params = {})
    # @param [Hash] params ({})
    def get_registry_scanning_configuration(params = {}, options = {})
      req = build_request(:get_registry_scanning_configuration, params)
      req.send_request(options)
    end

    # Retrieves the repository policy for the specified repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository with the policy to retrieve.
    #
    # @return [Types::GetRepositoryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::GetRepositoryPolicyResponse#repository_name #repository_name} => String
    #   * {Types::GetRepositoryPolicyResponse#policy_text #policy_text} => String
    #
    #
    # @example Example: To get the current policy for a repository
    #
    #   # This example obtains the repository policy for the repository named ubuntu.
    #
    #   resp = client.get_repository_policy({
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy_text: "{\n  \"Version\" : \"2008-10-17\",\n  \"Statement\" : [ {\n    \"Sid\" : \"new statement\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n     \"AWS\" : \"arn:aws:iam::012345678901:role/CodeDeployDemo\"\n    },\n\"Action\" : [ \"ecr:GetDownloadUrlForLayer\", \"ecr:BatchGetImage\", \"ecr:BatchCheckLayerAvailability\" ]\n } ]\n}", 
    #     registry_id: "012345678901", 
    #     repository_name: "ubuntu", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/GetRepositoryPolicy AWS API Documentation
    #
    # @overload get_repository_policy(params = {})
    # @param [Hash] params ({})
    def get_repository_policy(params = {}, options = {})
      req = build_request(:get_repository_policy, params)
      req.send_request(options)
    end

    # Notifies Amazon ECR that you intend to upload an image layer.
    #
    # When an image is pushed, the InitiateLayerUpload API is called once
    # per image layer that has not already been uploaded. Whether or not an
    # image layer has been uploaded is determined by the
    # BatchCheckLayerAvailability API action.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   which you intend to upload layers. If you do not specify a registry,
    #   the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to which you intend to upload layers.
    #
    # @return [Types::InitiateLayerUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateLayerUploadResponse#upload_id #upload_id} => String
    #   * {Types::InitiateLayerUploadResponse#part_size #part_size} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_layer_upload({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_id #=> String
    #   resp.part_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/InitiateLayerUpload AWS API Documentation
    #
    # @overload initiate_layer_upload(params = {})
    # @param [Hash] params ({})
    def initiate_layer_upload(params = {}, options = {})
      req = build_request(:initiate_layer_upload, params)
      req.send_request(options)
    end

    # Lists all the image IDs for the specified repository.
    #
    # You can filter images based on whether or not they are tagged by using
    # the `tagStatus` filter and specifying either `TAGGED`, `UNTAGGED` or
    # `ANY`. For example, you can filter your results to return only
    # `UNTAGGED` images and then pipe that result to a BatchDeleteImage
    # operation to delete them. Or, you can filter your results to return
    # only `TAGGED` images to list all of the tags in your repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to list images. If you do not specify
    #   a registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The repository with image IDs to be listed.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous paginated `ListImages`
    #   request where `maxResults` was used and the results exceeded the value
    #   of that parameter. Pagination continues from the end of the previous
    #   results that returned the `nextToken` value. This value is `null` when
    #   there are no more results to return.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only used
    #   to retrieve the next items in a list and not for other programmatic
    #   purposes.
    #
    #    </note>
    #
    # @option params [Integer] :max_results
    #   The maximum number of image results returned by `ListImages` in
    #   paginated output. When this parameter is used, `ListImages` only
    #   returns `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can be
    #   seen by sending another `ListImages` request with the returned
    #   `nextToken` value. This value can be between 1 and 1000. If this
    #   parameter is not used, then `ListImages` returns up to 100 results and
    #   a `nextToken` value, if applicable.
    #
    # @option params [Types::ListImagesFilter] :filter
    #   The filter key and value with which to filter your `ListImages`
    #   results.
    #
    # @return [Types::ListImagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImagesResponse#image_ids #image_ids} => Array&lt;Types::ImageIdentifier&gt;
    #   * {Types::ListImagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list all images in a repository
    #
    #   # This example lists all of the images in the repository named ubuntu in the default registry in the current account. 
    #
    #   resp = client.list_images({
    #     repository_name: "ubuntu", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     image_ids: [
    #       {
    #         image_digest: "sha256:764f63476bdff6d83a09ba2a818f0d35757063724a9ac3ba5019c56f74ebf42a", 
    #         image_tag: "precise", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_images({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: {
    #       tag_status: "TAGGED", # accepts TAGGED, UNTAGGED, ANY
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.image_ids #=> Array
    #   resp.image_ids[0].image_digest #=> String
    #   resp.image_ids[0].image_tag #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListImages AWS API Documentation
    #
    # @overload list_images(params = {})
    # @param [Hash] params ({})
    def list_images(params = {}, options = {})
      req = build_request(:list_images, params)
      req.send_request(options)
    end

    # List the tags for an Amazon ECR resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource for which
    #   to list the tags. Currently, the only supported resource is an Amazon
    #   ECR repository.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Allows you to change the basic scan type version or registry policy
    # scope.
    #
    # @option params [required, String] :name
    #   The name of the account setting, such as `BASIC_SCAN_TYPE_VERSION` or
    #   `REGISTRY_POLICY_SCOPE`.
    #
    # @option params [required, String] :value
    #   Setting value that is specified. The following are valid values for
    #   the basic scan type being used: `AWS_NATIVE` or `CLAIR`. The following
    #   are valid values for the registry policy scope being used: `V1` or
    #   `V2`.
    #
    # @return [Types::PutAccountSettingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAccountSettingResponse#name #name} => String
    #   * {Types::PutAccountSettingResponse#value #value} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_setting({
    #     name: "AccountSettingName", # required
    #     value: "AccountSettingValue", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutAccountSetting AWS API Documentation
    #
    # @overload put_account_setting(params = {})
    # @param [Hash] params ({})
    def put_account_setting(params = {}, options = {})
      req = build_request(:put_account_setting, params)
      req.send_request(options)
    end

    # Creates or updates the image manifest and tags associated with an
    # image.
    #
    # When an image is pushed and all new image layers have been uploaded,
    # the PutImage API is called once to create or update the image manifest
    # and the tags associated with the image.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to put the image. If you do not
    #   specify a registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in which to put the image.
    #
    # @option params [required, String] :image_manifest
    #   The image manifest corresponding to the image to be uploaded.
    #
    # @option params [String] :image_manifest_media_type
    #   The media type of the image manifest. If you push an image manifest
    #   that does not contain the `mediaType` field, you must specify the
    #   `imageManifestMediaType` in the request.
    #
    # @option params [String] :image_tag
    #   The tag to associate with the image. This parameter is required for
    #   images that use the Docker Image Manifest V2 Schema 2 or Open
    #   Container Initiative (OCI) formats.
    #
    # @option params [String] :image_digest
    #   The image digest of the image manifest corresponding to the image.
    #
    # @return [Types::PutImageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageResponse#image #image} => Types::Image
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_manifest: "ImageManifest", # required
    #     image_manifest_media_type: "MediaType",
    #     image_tag: "ImageTag",
    #     image_digest: "ImageDigest",
    #   })
    #
    # @example Response structure
    #
    #   resp.image.registry_id #=> String
    #   resp.image.repository_name #=> String
    #   resp.image.image_id.image_digest #=> String
    #   resp.image.image_id.image_tag #=> String
    #   resp.image.image_manifest #=> String
    #   resp.image.image_manifest_media_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImage AWS API Documentation
    #
    # @overload put_image(params = {})
    # @param [Hash] params ({})
    def put_image(params = {}, options = {})
      req = build_request(:put_image, params)
      req.send_request(options)
    end

    # The `PutImageScanningConfiguration` API is being deprecated, in favor
    # of specifying the image scanning configuration at the registry level.
    # For more information, see PutRegistryScanningConfiguration.
    #
    # Updates the image scanning configuration for the specified repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to update the image scanning
    #   configuration setting. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in which to update the image scanning
    #   configuration setting.
    #
    # @option params [required, Types::ImageScanningConfiguration] :image_scanning_configuration
    #   The image scanning configuration for the repository. This setting
    #   determines whether images are scanned for known vulnerabilities after
    #   being pushed to the repository.
    #
    # @return [Types::PutImageScanningConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageScanningConfigurationResponse#registry_id #registry_id} => String
    #   * {Types::PutImageScanningConfigurationResponse#repository_name #repository_name} => String
    #   * {Types::PutImageScanningConfigurationResponse#image_scanning_configuration #image_scanning_configuration} => Types::ImageScanningConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_scanning_configuration({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_scanning_configuration: { # required
    #       scan_on_push: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.image_scanning_configuration.scan_on_push #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageScanningConfiguration AWS API Documentation
    #
    # @overload put_image_scanning_configuration(params = {})
    # @param [Hash] params ({})
    def put_image_scanning_configuration(params = {}, options = {})
      req = build_request(:put_image_scanning_configuration, params)
      req.send_request(options)
    end

    # Updates the image tag mutability settings for the specified
    # repository. For more information, see [Image tag mutability][1] in the
    # *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to update the image tag mutability
    #   settings. If you do not specify a registry, the default registry is
    #   assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository in which to update the image tag mutability
    #   settings.
    #
    # @option params [required, String] :image_tag_mutability
    #   The tag mutability setting for the repository. If `MUTABLE` is
    #   specified, image tags can be overwritten. If `IMMUTABLE` is specified,
    #   all image tags within the repository will be immutable which will
    #   prevent them from being overwritten.
    #
    # @option params [Array<Types::ImageTagMutabilityExclusionFilter>] :image_tag_mutability_exclusion_filters
    #   Creates or updates a repository with filters that define which image
    #   tags can override the default image tag mutability setting.
    #
    # @return [Types::PutImageTagMutabilityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutImageTagMutabilityResponse#registry_id #registry_id} => String
    #   * {Types::PutImageTagMutabilityResponse#repository_name #repository_name} => String
    #   * {Types::PutImageTagMutabilityResponse#image_tag_mutability #image_tag_mutability} => String
    #   * {Types::PutImageTagMutabilityResponse#image_tag_mutability_exclusion_filters #image_tag_mutability_exclusion_filters} => Array&lt;Types::ImageTagMutabilityExclusionFilter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_image_tag_mutability({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_tag_mutability: "MUTABLE", # required, accepts MUTABLE, IMMUTABLE, IMMUTABLE_WITH_EXCLUSION, MUTABLE_WITH_EXCLUSION
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD", # required, accepts WILDCARD
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"
    #   resp.image_tag_mutability_exclusion_filters #=> Array
    #   resp.image_tag_mutability_exclusion_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.image_tag_mutability_exclusion_filters[0].filter #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutImageTagMutability AWS API Documentation
    #
    # @overload put_image_tag_mutability(params = {})
    # @param [Hash] params ({})
    def put_image_tag_mutability(params = {}, options = {})
      req = build_request(:put_image_tag_mutability, params)
      req.send_request(options)
    end

    # Creates or updates the lifecycle policy for the specified repository.
    # For more information, see [Lifecycle policy template][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do  not specify a registry, the
    #   default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to receive the policy.
    #
    # @option params [required, String] :lifecycle_policy_text
    #   The JSON repository policy text to apply to the repository.
    #
    # @return [Types::PutLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutLifecyclePolicyResponse#registry_id #registry_id} => String
    #   * {Types::PutLifecyclePolicyResponse#repository_name #repository_name} => String
    #   * {Types::PutLifecyclePolicyResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     lifecycle_policy_text: "LifecyclePolicyText", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutLifecyclePolicy AWS API Documentation
    #
    # @overload put_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def put_lifecycle_policy(params = {}, options = {})
      req = build_request(:put_lifecycle_policy, params)
      req.send_request(options)
    end

    # Creates or updates the permissions policy for your registry.
    #
    # A registry policy is used to specify permissions for another Amazon
    # Web Services account and is used when configuring cross-account
    # replication. For more information, see [Registry permissions][1] in
    # the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html
    #
    # @option params [required, String] :policy_text
    #   The JSON policy text to apply to your registry. The policy text
    #   follows the same format as IAM policy text. For more information, see
    #   [Registry permissions][1] in the *Amazon Elastic Container Registry
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html
    #
    # @return [Types::PutRegistryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRegistryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::PutRegistryPolicyResponse#policy_text #policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_registry_policy({
    #     policy_text: "RegistryPolicyText", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutRegistryPolicy AWS API Documentation
    #
    # @overload put_registry_policy(params = {})
    # @param [Hash] params ({})
    def put_registry_policy(params = {}, options = {})
      req = build_request(:put_registry_policy, params)
      req.send_request(options)
    end

    # Creates or updates the scanning configuration for your private
    # registry.
    #
    # @option params [String] :scan_type
    #   The scanning type to set for the registry.
    #
    #   When a registry scanning configuration is not defined, by default the
    #   `BASIC` scan type is used. When basic scanning is used, you may
    #   specify filters to determine which individual repositories, or all
    #   repositories, are scanned when new images are pushed to those
    #   repositories. Alternatively, you can do manual scans of images with
    #   basic scanning.
    #
    #   When the `ENHANCED` scan type is set, Amazon Inspector provides
    #   automated vulnerability scanning. You may choose between continuous
    #   scanning or scan on push and you may specify filters to determine
    #   which individual repositories, or all repositories, are scanned.
    #
    # @option params [Array<Types::RegistryScanningRule>] :rules
    #   The scanning rules to use for the registry. A scanning rule is used to
    #   determine which repository filters are used and at what frequency
    #   scanning will occur.
    #
    # @return [Types::PutRegistryScanningConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRegistryScanningConfigurationResponse#registry_scanning_configuration #registry_scanning_configuration} => Types::RegistryScanningConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_registry_scanning_configuration({
    #     scan_type: "BASIC", # accepts BASIC, ENHANCED
    #     rules: [
    #       {
    #         scan_frequency: "SCAN_ON_PUSH", # required, accepts SCAN_ON_PUSH, CONTINUOUS_SCAN, MANUAL
    #         repository_filters: [ # required
    #           {
    #             filter: "ScanningRepositoryFilterValue", # required
    #             filter_type: "WILDCARD", # required, accepts WILDCARD
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_scanning_configuration.scan_type #=> String, one of "BASIC", "ENHANCED"
    #   resp.registry_scanning_configuration.rules #=> Array
    #   resp.registry_scanning_configuration.rules[0].scan_frequency #=> String, one of "SCAN_ON_PUSH", "CONTINUOUS_SCAN", "MANUAL"
    #   resp.registry_scanning_configuration.rules[0].repository_filters #=> Array
    #   resp.registry_scanning_configuration.rules[0].repository_filters[0].filter #=> String
    #   resp.registry_scanning_configuration.rules[0].repository_filters[0].filter_type #=> String, one of "WILDCARD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutRegistryScanningConfiguration AWS API Documentation
    #
    # @overload put_registry_scanning_configuration(params = {})
    # @param [Hash] params ({})
    def put_registry_scanning_configuration(params = {}, options = {})
      req = build_request(:put_registry_scanning_configuration, params)
      req.send_request(options)
    end

    # Creates or updates the replication configuration for a registry. The
    # existing replication configuration for a repository can be retrieved
    # with the DescribeRegistry API action. The first time the
    # PutReplicationConfiguration API is called, a service-linked IAM role
    # is created in your account for the replication process. For more
    # information, see [Using service-linked roles for Amazon ECR][1] in the
    # *Amazon Elastic Container Registry User Guide*. For more information
    # on the custom role for replication, see [Creating an IAM role for
    # replication][2].
    #
    # <note markdown="1"> When configuring cross-account replication, the destination account
    # must grant the source account permission to replicate. This permission
    # is controlled using a registry permissions policy. For more
    # information, see PutRegistryPolicy.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html
    # [2]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/replication-creation-templates.html#roles-creatingrole-user-console
    #
    # @option params [required, Types::ReplicationConfiguration] :replication_configuration
    #   An object representing the replication configuration for a registry.
    #
    # @return [Types::PutReplicationConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutReplicationConfigurationResponse#replication_configuration #replication_configuration} => Types::ReplicationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_replication_configuration({
    #     replication_configuration: { # required
    #       rules: [ # required
    #         {
    #           destinations: [ # required
    #             {
    #               region: "Region", # required
    #               registry_id: "RegistryId", # required
    #             },
    #           ],
    #           repository_filters: [
    #             {
    #               filter: "RepositoryFilterValue", # required
    #               filter_type: "PREFIX_MATCH", # required, accepts PREFIX_MATCH
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_configuration.rules #=> Array
    #   resp.replication_configuration.rules[0].destinations #=> Array
    #   resp.replication_configuration.rules[0].destinations[0].region #=> String
    #   resp.replication_configuration.rules[0].destinations[0].registry_id #=> String
    #   resp.replication_configuration.rules[0].repository_filters #=> Array
    #   resp.replication_configuration.rules[0].repository_filters[0].filter #=> String
    #   resp.replication_configuration.rules[0].repository_filters[0].filter_type #=> String, one of "PREFIX_MATCH"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/PutReplicationConfiguration AWS API Documentation
    #
    # @overload put_replication_configuration(params = {})
    # @param [Hash] params ({})
    def put_replication_configuration(params = {}, options = {})
      req = build_request(:put_replication_configuration, params)
      req.send_request(options)
    end

    # Applies a repository policy to the specified repository to control
    # access permissions. For more information, see [Amazon ECR Repository
    # policies][1] in the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to receive the policy.
    #
    # @option params [required, String] :policy_text
    #   The JSON repository policy text to apply to the repository. For more
    #   information, see [Amazon ECR repository policies][1] in the *Amazon
    #   Elastic Container Registry User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html
    #
    # @option params [Boolean] :force
    #   If the policy you are attempting to set on a repository policy would
    #   prevent you from setting another policy in the future, you must force
    #   the SetRepositoryPolicy operation. This is intended to prevent
    #   accidental repository lock outs.
    #
    # @return [Types::SetRepositoryPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetRepositoryPolicyResponse#registry_id #registry_id} => String
    #   * {Types::SetRepositoryPolicyResponse#repository_name #repository_name} => String
    #   * {Types::SetRepositoryPolicyResponse#policy_text #policy_text} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_repository_policy({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     policy_text: "RepositoryPolicyText", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.policy_text #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/SetRepositoryPolicy AWS API Documentation
    #
    # @overload set_repository_policy(params = {})
    # @param [Hash] params ({})
    def set_repository_policy(params = {}, options = {})
      req = build_request(:set_repository_policy, params)
      req.send_request(options)
    end

    # Starts a basic image vulnerability scan.
    #
    # A basic image scan can only be started once per 24 hours on an
    # individual image. This limit includes if an image was scanned on
    # initial push. You can start up to 100,000 basic scans per 24 hours.
    # This limit includes both scans on initial push and scans initiated by
    # the StartImageScan API. For more information, see [Basic scanning][1]
    # in the *Amazon Elastic Container Registry User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning-basic.html
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository in which to start an image scan request. If
    #   you do not specify a registry, the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository that contains the images to scan.
    #
    # @option params [required, Types::ImageIdentifier] :image_id
    #   An object with identifying information for an image in an Amazon ECR
    #   repository.
    #
    # @return [Types::StartImageScanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImageScanResponse#registry_id #registry_id} => String
    #   * {Types::StartImageScanResponse#repository_name #repository_name} => String
    #   * {Types::StartImageScanResponse#image_id #image_id} => Types::ImageIdentifier
    #   * {Types::StartImageScanResponse#image_scan_status #image_scan_status} => Types::ImageScanStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_image_scan({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     image_id: { # required
    #       image_digest: "ImageDigest",
    #       image_tag: "ImageTag",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.image_id.image_digest #=> String
    #   resp.image_id.image_tag #=> String
    #   resp.image_scan_status.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED", "UNSUPPORTED_IMAGE", "ACTIVE", "PENDING", "SCAN_ELIGIBILITY_EXPIRED", "FINDINGS_UNAVAILABLE", "LIMIT_EXCEEDED"
    #   resp.image_scan_status.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartImageScan AWS API Documentation
    #
    # @overload start_image_scan(params = {})
    # @param [Hash] params ({})
    def start_image_scan(params = {}, options = {})
      req = build_request(:start_image_scan, params)
      req.send_request(options)
    end

    # Starts a preview of a lifecycle policy for the specified repository.
    # This allows you to see the results before associating the lifecycle
    # policy with the repository.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry that
    #   contains the repository. If you do not specify a registry, the default
    #   registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to be evaluated.
    #
    # @option params [String] :lifecycle_policy_text
    #   The policy to be evaluated against. If you do not specify a policy,
    #   the current policy for the repository is used.
    #
    # @return [Types::StartLifecyclePolicyPreviewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartLifecyclePolicyPreviewResponse#registry_id #registry_id} => String
    #   * {Types::StartLifecyclePolicyPreviewResponse#repository_name #repository_name} => String
    #   * {Types::StartLifecyclePolicyPreviewResponse#lifecycle_policy_text #lifecycle_policy_text} => String
    #   * {Types::StartLifecyclePolicyPreviewResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_lifecycle_policy_preview({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     lifecycle_policy_text: "LifecyclePolicyText",
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.lifecycle_policy_text #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "EXPIRED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/StartLifecyclePolicyPreview AWS API Documentation
    #
    # @overload start_lifecycle_policy_preview(params = {})
    # @param [Hash] params ({})
    def start_lifecycle_policy_preview(params = {}, options = {})
      req = build_request(:start_lifecycle_policy_preview, params)
      req.send_request(options)
    end

    # Adds specified tags to a resource with the specified ARN. Existing
    # tags on a resource are not changed if they are not specified in the
    # request parameters.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the the resource to which to add
    #   tags. Currently, the only supported resource is an Amazon ECR
    #   repository.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the resource. A tag is an array of key-value pairs.
    #   Tag keys can have a maximum character length of 128 characters, and
    #   tag values can have a maximum length of 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/TagResource AWS API Documentation
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
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags. Currently, the only supported resource is an Amazon ECR
    #   repository.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing pull through cache rule.
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry
    #   associated with the pull through cache rule. If you do not specify a
    #   registry, the default registry is assumed.
    #
    # @option params [required, String] :ecr_repository_prefix
    #   The repository name prefix to use when caching images from the source
    #   registry.
    #
    # @option params [String] :credential_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Secrets
    #   Manager secret that identifies the credentials to authenticate to the
    #   upstream registry.
    #
    # @option params [String] :custom_role_arn
    #   Amazon Resource Name (ARN) of the IAM role to be assumed by Amazon ECR
    #   to authenticate to the ECR upstream registry. This role must be in the
    #   same account as the registry that you are configuring.
    #
    # @return [Types::UpdatePullThroughCacheRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePullThroughCacheRuleResponse#ecr_repository_prefix #ecr_repository_prefix} => String
    #   * {Types::UpdatePullThroughCacheRuleResponse#registry_id #registry_id} => String
    #   * {Types::UpdatePullThroughCacheRuleResponse#updated_at #updated_at} => Time
    #   * {Types::UpdatePullThroughCacheRuleResponse#credential_arn #credential_arn} => String
    #   * {Types::UpdatePullThroughCacheRuleResponse#custom_role_arn #custom_role_arn} => String
    #   * {Types::UpdatePullThroughCacheRuleResponse#upstream_repository_prefix #upstream_repository_prefix} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_through_cache_rule({
    #     registry_id: "RegistryId",
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix", # required
    #     credential_arn: "CredentialArn",
    #     custom_role_arn: "CustomRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.ecr_repository_prefix #=> String
    #   resp.registry_id #=> String
    #   resp.updated_at #=> Time
    #   resp.credential_arn #=> String
    #   resp.custom_role_arn #=> String
    #   resp.upstream_repository_prefix #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UpdatePullThroughCacheRule AWS API Documentation
    #
    # @overload update_pull_through_cache_rule(params = {})
    # @param [Hash] params ({})
    def update_pull_through_cache_rule(params = {}, options = {})
      req = build_request(:update_pull_through_cache_rule, params)
      req.send_request(options)
    end

    # Updates an existing repository creation template.
    #
    # @option params [required, String] :prefix
    #   The repository namespace prefix that matches an existing repository
    #   creation template in the registry. All repositories created using this
    #   namespace prefix will have the settings defined in this template
    #   applied. For example, a prefix of `prod` would apply to all
    #   repositories beginning with `prod/`. This includes a repository named
    #   `prod/team1` as well as a repository named `prod/repository1`.
    #
    #   To apply a template to all repositories in your registry that don't
    #   have an associated creation template, you can use `ROOT` as the
    #   prefix.
    #
    # @option params [String] :description
    #   A description for the repository creation template.
    #
    # @option params [Types::EncryptionConfigurationForRepositoryCreationTemplate] :encryption_configuration
    #   The encryption configuration to associate with the repository creation
    #   template.
    #
    # @option params [Array<Types::Tag>] :resource_tags
    #   The metadata to apply to the repository to help you categorize and
    #   organize. Each tag consists of a key and an optional value, both of
    #   which you define. Tag keys can have a maximum character length of 128
    #   characters, and tag values can have a maximum length of 256
    #   characters.
    #
    # @option params [String] :image_tag_mutability
    #   Updates the tag mutability setting for the repository. If this
    #   parameter is omitted, the default setting of `MUTABLE` will be used
    #   which will allow image tags to be overwritten. If `IMMUTABLE` is
    #   specified, all image tags within the repository will be immutable
    #   which will prevent them from being overwritten.
    #
    # @option params [Array<Types::ImageTagMutabilityExclusionFilter>] :image_tag_mutability_exclusion_filters
    #   Updates a repository with filters that define which image tags can
    #   override the default image tag mutability setting.
    #
    # @option params [String] :repository_policy
    #   Updates the repository policy created using the template. A repository
    #   policy is a permissions policy associated with a repository to control
    #   access permissions.
    #
    # @option params [String] :lifecycle_policy
    #   Updates the lifecycle policy associated with the specified repository
    #   creation template.
    #
    # @option params [Array<String>] :applied_for
    #   Updates the list of enumerable strings representing the Amazon ECR
    #   repository creation scenarios that this template will apply towards.
    #   The two supported scenarios are `PULL_THROUGH_CACHE` and `REPLICATION`
    #
    # @option params [String] :custom_role_arn
    #   The ARN of the role to be assumed by Amazon ECR. This role must be in
    #   the same account as the registry that you are configuring. Amazon ECR
    #   will assume your supplied role when the customRoleArn is specified.
    #   When this field isn't specified, Amazon ECR will use the
    #   service-linked role for the repository creation template.
    #
    # @return [Types::UpdateRepositoryCreationTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRepositoryCreationTemplateResponse#registry_id #registry_id} => String
    #   * {Types::UpdateRepositoryCreationTemplateResponse#repository_creation_template #repository_creation_template} => Types::RepositoryCreationTemplate
    #
    #
    # @example Example: Update a repository creation template
    #
    #   # This example updates a repository creation template.
    #
    #   resp = client.update_repository_creation_template({
    #     applied_for: [
    #       "REPLICATION", 
    #     ], 
    #     prefix: "eng/test", 
    #     resource_tags: [
    #       {
    #         key: "environment", 
    #         value: "test", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     registry_id: "012345678901", 
    #     repository_creation_template: {
    #       applied_for: [
    #         "REPLICATION", 
    #       ], 
    #       created_at: Time.parse("2023-12-16T17:29:02-07:00"), 
    #       description: "Repos for testing images", 
    #       encryption_configuration: {
    #         encryption_type: "AES256", 
    #       }, 
    #       image_tag_mutability: "MUTABLE", 
    #       lifecycle_policy: "{\r\n    \"rules\": [\r\n        {\r\n            \"rulePriority\": 1,\r\n            \"description\": \"Expire images older than 14 days\",\r\n            \"selection\": {\r\n                \"tagStatus\": \"untagged\",\r\n                \"countType\": \"sinceImagePushed\",\r\n                \"countUnit\": \"days\",\r\n                \"countNumber\": 14\r\n            },\r\n            \"action\": {\r\n                \"type\": \"expire\"\r\n            }\r\n        }\r\n    ]\r\n}", 
    #       prefix: "eng/test", 
    #       repository_policy: "{\n  \"Version\" : \"2012-10-17\",\n  \"Statement\" : [ {\n    \"Sid\" : \"LambdaECRPullPolicy\",\n    \"Effect\" : \"Allow\",\n    \"Principal\" : {\n      \"Service\" : \"lambda.amazonaws.com\"\n    },\n    \"Action\" : \"ecr:BatchGetImage\"\n  } ]\n}", 
    #       resource_tags: [
    #         {
    #           key: "environment", 
    #           value: "test", 
    #         }, 
    #       ], 
    #       updated_at: Time.parse("2023-12-16T19:55:02-07:00"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_repository_creation_template({
    #     prefix: "Prefix", # required
    #     description: "RepositoryTemplateDescription",
    #     encryption_configuration: {
    #       encryption_type: "AES256", # required, accepts AES256, KMS, KMS_DSSE
    #       kms_key: "KmsKeyForRepositoryCreationTemplate",
    #     },
    #     resource_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     image_tag_mutability: "MUTABLE", # accepts MUTABLE, IMMUTABLE, IMMUTABLE_WITH_EXCLUSION, MUTABLE_WITH_EXCLUSION
    #     image_tag_mutability_exclusion_filters: [
    #       {
    #         filter_type: "WILDCARD", # required, accepts WILDCARD
    #         filter: "ImageTagMutabilityExclusionFilterValue", # required
    #       },
    #     ],
    #     repository_policy: "RepositoryPolicyText",
    #     lifecycle_policy: "LifecyclePolicyTextForRepositoryCreationTemplate",
    #     applied_for: ["REPLICATION"], # accepts REPLICATION, PULL_THROUGH_CACHE
    #     custom_role_arn: "CustomRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_creation_template.prefix #=> String
    #   resp.repository_creation_template.description #=> String
    #   resp.repository_creation_template.encryption_configuration.encryption_type #=> String, one of "AES256", "KMS", "KMS_DSSE"
    #   resp.repository_creation_template.encryption_configuration.kms_key #=> String
    #   resp.repository_creation_template.resource_tags #=> Array
    #   resp.repository_creation_template.resource_tags[0].key #=> String
    #   resp.repository_creation_template.resource_tags[0].value #=> String
    #   resp.repository_creation_template.image_tag_mutability #=> String, one of "MUTABLE", "IMMUTABLE", "IMMUTABLE_WITH_EXCLUSION", "MUTABLE_WITH_EXCLUSION"
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters #=> Array
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters[0].filter_type #=> String, one of "WILDCARD"
    #   resp.repository_creation_template.image_tag_mutability_exclusion_filters[0].filter #=> String
    #   resp.repository_creation_template.repository_policy #=> String
    #   resp.repository_creation_template.lifecycle_policy #=> String
    #   resp.repository_creation_template.applied_for #=> Array
    #   resp.repository_creation_template.applied_for[0] #=> String, one of "REPLICATION", "PULL_THROUGH_CACHE"
    #   resp.repository_creation_template.custom_role_arn #=> String
    #   resp.repository_creation_template.created_at #=> Time
    #   resp.repository_creation_template.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UpdateRepositoryCreationTemplate AWS API Documentation
    #
    # @overload update_repository_creation_template(params = {})
    # @param [Hash] params ({})
    def update_repository_creation_template(params = {}, options = {})
      req = build_request(:update_repository_creation_template, params)
      req.send_request(options)
    end

    # Uploads an image layer part to Amazon ECR.
    #
    # When an image is pushed, each new image layer is uploaded in parts.
    # The maximum size of each image layer part can be 20971520 bytes (or
    # about 20MB). The UploadLayerPart API is called once per each new image
    # layer part.
    #
    # <note markdown="1"> This operation is used by the Amazon ECR proxy and is not generally
    # used by customers for pulling and pushing images. In most cases, you
    # should use the `docker` CLI to pull, tag, and push images.
    #
    #  </note>
    #
    # @option params [String] :registry_id
    #   The Amazon Web Services account ID associated with the registry to
    #   which you are uploading layer parts. If you do not specify a registry,
    #   the default registry is assumed.
    #
    # @option params [required, String] :repository_name
    #   The name of the repository to which you are uploading layer parts.
    #
    # @option params [required, String] :upload_id
    #   The upload ID from a previous InitiateLayerUpload operation to
    #   associate with the layer part upload.
    #
    # @option params [required, Integer] :part_first_byte
    #   The position of the first byte of the layer part witin the overall
    #   image layer.
    #
    # @option params [required, Integer] :part_last_byte
    #   The position of the last byte of the layer part within the overall
    #   image layer.
    #
    # @option params [required, String, StringIO, File] :layer_part_blob
    #   The base64-encoded layer part payload.
    #
    # @return [Types::UploadLayerPartResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadLayerPartResponse#registry_id #registry_id} => String
    #   * {Types::UploadLayerPartResponse#repository_name #repository_name} => String
    #   * {Types::UploadLayerPartResponse#upload_id #upload_id} => String
    #   * {Types::UploadLayerPartResponse#last_byte_received #last_byte_received} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_layer_part({
    #     registry_id: "RegistryId",
    #     repository_name: "RepositoryName", # required
    #     upload_id: "UploadId", # required
    #     part_first_byte: 1, # required
    #     part_last_byte: 1, # required
    #     layer_part_blob: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_id #=> String
    #   resp.repository_name #=> String
    #   resp.upload_id #=> String
    #   resp.last_byte_received #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/UploadLayerPart AWS API Documentation
    #
    # @overload upload_layer_part(params = {})
    # @param [Hash] params ({})
    def upload_layer_part(params = {}, options = {})
      req = build_request(:upload_layer_part, params)
      req.send_request(options)
    end

    # Validates an existing pull through cache rule for an upstream registry
    # that requires authentication. This will retrieve the contents of the
    # Amazon Web Services Secrets Manager secret, verify the syntax, and
    # then validate that authentication to the upstream registry is
    # successful.
    #
    # @option params [required, String] :ecr_repository_prefix
    #   The repository name prefix associated with the pull through cache
    #   rule.
    #
    # @option params [String] :registry_id
    #   The registry ID associated with the pull through cache rule. If you do
    #   not specify a registry, the default registry is assumed.
    #
    # @return [Types::ValidatePullThroughCacheRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidatePullThroughCacheRuleResponse#ecr_repository_prefix #ecr_repository_prefix} => String
    #   * {Types::ValidatePullThroughCacheRuleResponse#registry_id #registry_id} => String
    #   * {Types::ValidatePullThroughCacheRuleResponse#upstream_registry_url #upstream_registry_url} => String
    #   * {Types::ValidatePullThroughCacheRuleResponse#credential_arn #credential_arn} => String
    #   * {Types::ValidatePullThroughCacheRuleResponse#custom_role_arn #custom_role_arn} => String
    #   * {Types::ValidatePullThroughCacheRuleResponse#upstream_repository_prefix #upstream_repository_prefix} => String
    #   * {Types::ValidatePullThroughCacheRuleResponse#is_valid #is_valid} => Boolean
    #   * {Types::ValidatePullThroughCacheRuleResponse#failure #failure} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_pull_through_cache_rule({
    #     ecr_repository_prefix: "PullThroughCacheRuleRepositoryPrefix", # required
    #     registry_id: "RegistryId",
    #   })
    #
    # @example Response structure
    #
    #   resp.ecr_repository_prefix #=> String
    #   resp.registry_id #=> String
    #   resp.upstream_registry_url #=> String
    #   resp.credential_arn #=> String
    #   resp.custom_role_arn #=> String
    #   resp.upstream_repository_prefix #=> String
    #   resp.is_valid #=> Boolean
    #   resp.failure #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ecr-2015-09-21/ValidatePullThroughCacheRule AWS API Documentation
    #
    # @overload validate_pull_through_cache_rule(params = {})
    # @param [Hash] params ({})
    def validate_pull_through_cache_rule(params = {}, options = {})
      req = build_request(:validate_pull_through_cache_rule, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ECR')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-ecr'
      context[:gem_version] = '1.106.0'
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
    # | waiter_name                       | params                                | :delay   | :max_attempts |
    # | --------------------------------- | ------------------------------------- | -------- | ------------- |
    # | image_scan_complete               | {Client#describe_image_scan_findings} | 5        | 60            |
    # | lifecycle_policy_preview_complete | {Client#get_lifecycle_policy_preview} | 5        | 20            |
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
        image_scan_complete: Waiters::ImageScanComplete,
        lifecycle_policy_preview_complete: Waiters::LifecyclePolicyPreviewComplete
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
