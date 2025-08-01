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

module Aws::Signer
  # An API client for Signer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Signer::Client.new(
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

    @identifier = :signer

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
    add_plugin(Aws::Signer::Plugins::Endpoints)

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
    #   @option options [Aws::Signer::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Signer::EndpointParameters`.
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

    # Adds cross-account permissions to a signing profile.
    #
    # @option params [required, String] :profile_name
    #   The human-readable name of the signing profile.
    #
    # @option params [String] :profile_version
    #   The version of the signing profile.
    #
    # @option params [required, String] :action
    #   For cross-account signing. Grant a designated account permission to
    #   perform one or more of the following actions. Each action is
    #   associated with a specific API's operations. For more information
    #   about cross-account signing, see [Using cross-account signing with
    #   signing profiles][1] in the *AWS Signer Developer Guide*.
    #
    #   You can designate the following actions to an account.
    #
    #   * `signer:StartSigningJob`. This action isn't supported for container
    #     image workflows. For details, see StartSigningJob.
    #
    #   * `signer:SignPayload`. This action isn't supported for AWS Lambda
    #     workflows. For details, see SignPayload
    #
    #   * `signer:GetSigningProfile`. For details, see GetSigningProfile.
    #
    #   * `signer:RevokeSignature`. For details, see RevokeSignature.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/signer/latest/developerguide/signing-profile-cross-account.html
    #
    # @option params [required, String] :principal
    #   The AWS principal receiving cross-account permissions. This may be an
    #   IAM role or another AWS account ID.
    #
    # @option params [String] :revision_id
    #   A unique identifier for the current profile revision.
    #
    # @option params [required, String] :statement_id
    #   A unique identifier for the cross-account permission statement.
    #
    # @return [Types::AddProfilePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddProfilePermissionResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_profile_permission({
    #     profile_name: "ProfileName", # required
    #     profile_version: "ProfileVersion",
    #     action: "String", # required
    #     principal: "String", # required
    #     revision_id: "String",
    #     statement_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/AddProfilePermission AWS API Documentation
    #
    # @overload add_profile_permission(params = {})
    # @param [Hash] params ({})
    def add_profile_permission(params = {}, options = {})
      req = build_request(:add_profile_permission, params)
      req.send_request(options)
    end

    # Changes the state of an `ACTIVE` signing profile to `CANCELED`. A
    # canceled profile is still viewable with the `ListSigningProfiles`
    # operation, but it cannot perform new signing jobs, and is deleted two
    # years after cancelation.
    #
    # @option params [required, String] :profile_name
    #   The name of the signing profile to be canceled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_signing_profile({
    #     profile_name: "ProfileName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/CancelSigningProfile AWS API Documentation
    #
    # @overload cancel_signing_profile(params = {})
    # @param [Hash] params ({})
    def cancel_signing_profile(params = {}, options = {})
      req = build_request(:cancel_signing_profile, params)
      req.send_request(options)
    end

    # Returns information about a specific code signing job. You specify the
    # job by using the `jobId` value that is returned by the StartSigningJob
    # operation.
    #
    # @option params [required, String] :job_id
    #   The ID of the signing job on input.
    #
    # @return [Types::DescribeSigningJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSigningJobResponse#job_id #job_id} => String
    #   * {Types::DescribeSigningJobResponse#source #source} => Types::Source
    #   * {Types::DescribeSigningJobResponse#signing_material #signing_material} => Types::SigningMaterial
    #   * {Types::DescribeSigningJobResponse#platform_id #platform_id} => String
    #   * {Types::DescribeSigningJobResponse#platform_display_name #platform_display_name} => String
    #   * {Types::DescribeSigningJobResponse#profile_name #profile_name} => String
    #   * {Types::DescribeSigningJobResponse#profile_version #profile_version} => String
    #   * {Types::DescribeSigningJobResponse#overrides #overrides} => Types::SigningPlatformOverrides
    #   * {Types::DescribeSigningJobResponse#signing_parameters #signing_parameters} => Hash&lt;String,String&gt;
    #   * {Types::DescribeSigningJobResponse#created_at #created_at} => Time
    #   * {Types::DescribeSigningJobResponse#completed_at #completed_at} => Time
    #   * {Types::DescribeSigningJobResponse#signature_expires_at #signature_expires_at} => Time
    #   * {Types::DescribeSigningJobResponse#requested_by #requested_by} => String
    #   * {Types::DescribeSigningJobResponse#status #status} => String
    #   * {Types::DescribeSigningJobResponse#status_reason #status_reason} => String
    #   * {Types::DescribeSigningJobResponse#revocation_record #revocation_record} => Types::SigningJobRevocationRecord
    #   * {Types::DescribeSigningJobResponse#signed_object #signed_object} => Types::SignedObject
    #   * {Types::DescribeSigningJobResponse#job_owner #job_owner} => String
    #   * {Types::DescribeSigningJobResponse#job_invoker #job_invoker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_signing_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.source.s3.bucket_name #=> String
    #   resp.source.s3.key #=> String
    #   resp.source.s3.version #=> String
    #   resp.signing_material.certificate_arn #=> String
    #   resp.platform_id #=> String
    #   resp.platform_display_name #=> String
    #   resp.profile_name #=> String
    #   resp.profile_version #=> String
    #   resp.overrides.signing_configuration.encryption_algorithm #=> String, one of "RSA", "ECDSA"
    #   resp.overrides.signing_configuration.hash_algorithm #=> String, one of "SHA1", "SHA256"
    #   resp.overrides.signing_image_format #=> String, one of "JSON", "JSONEmbedded", "JSONDetached"
    #   resp.signing_parameters #=> Hash
    #   resp.signing_parameters["SigningParameterKey"] #=> String
    #   resp.created_at #=> Time
    #   resp.completed_at #=> Time
    #   resp.signature_expires_at #=> Time
    #   resp.requested_by #=> String
    #   resp.status #=> String, one of "InProgress", "Failed", "Succeeded"
    #   resp.status_reason #=> String
    #   resp.revocation_record.reason #=> String
    #   resp.revocation_record.revoked_at #=> Time
    #   resp.revocation_record.revoked_by #=> String
    #   resp.signed_object.s3.bucket_name #=> String
    #   resp.signed_object.s3.key #=> String
    #   resp.job_owner #=> String
    #   resp.job_invoker #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * successful_signing_job
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/DescribeSigningJob AWS API Documentation
    #
    # @overload describe_signing_job(params = {})
    # @param [Hash] params ({})
    def describe_signing_job(params = {}, options = {})
      req = build_request(:describe_signing_job, params)
      req.send_request(options)
    end

    # Retrieves the revocation status of one or more of the signing profile,
    # signing job, and signing certificate.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :signature_timestamp
    #   The timestamp of the signature that validates the profile or job.
    #
    # @option params [required, String] :platform_id
    #   The ID of a signing platform.
    #
    # @option params [required, String] :profile_version_arn
    #   The version of a signing profile.
    #
    # @option params [required, String] :job_arn
    #   The ARN of a signing job.
    #
    # @option params [required, Array<String>] :certificate_hashes
    #   A list of composite signed hashes that identify certificates.
    #
    #   A certificate identifier consists of a subject certificate TBS hash
    #   (signed by the parent CA) combined with a parent CA TBS hash (signed
    #   by the parent CA’s CA). Root certificates are defined as their own CA.
    #
    #   The following example shows how to calculate a hash for this parameter
    #   using OpenSSL commands:
    #
    #   `openssl asn1parse -in childCert.pem -strparse 4 -out childCert.tbs`
    #
    #   `openssl sha384 < childCert.tbs -binary > childCertTbsHash`
    #
    #   `openssl asn1parse -in parentCert.pem -strparse 4 -out parentCert.tbs`
    #
    #   `openssl sha384 < parentCert.tbs -binary > parentCertTbsHash xxd -p
    #   childCertTbsHash > certificateHash.hex xxd -p parentCertTbsHash >>
    #   certificateHash.hex`
    #
    #   `cat certificateHash.hex | tr -d '\n'`
    #
    # @return [Types::GetRevocationStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRevocationStatusResponse#revoked_entities #revoked_entities} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revocation_status({
    #     signature_timestamp: Time.now, # required
    #     platform_id: "PlatformId", # required
    #     profile_version_arn: "Arn", # required
    #     job_arn: "Arn", # required
    #     certificate_hashes: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.revoked_entities #=> Array
    #   resp.revoked_entities[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetRevocationStatus AWS API Documentation
    #
    # @overload get_revocation_status(params = {})
    # @param [Hash] params ({})
    def get_revocation_status(params = {}, options = {})
      req = build_request(:get_revocation_status, params)
      req.send_request(options)
    end

    # Returns information on a specific signing platform.
    #
    # @option params [required, String] :platform_id
    #   The ID of the target signing platform.
    #
    # @return [Types::GetSigningPlatformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSigningPlatformResponse#platform_id #platform_id} => String
    #   * {Types::GetSigningPlatformResponse#display_name #display_name} => String
    #   * {Types::GetSigningPlatformResponse#partner #partner} => String
    #   * {Types::GetSigningPlatformResponse#target #target} => String
    #   * {Types::GetSigningPlatformResponse#category #category} => String
    #   * {Types::GetSigningPlatformResponse#signing_configuration #signing_configuration} => Types::SigningConfiguration
    #   * {Types::GetSigningPlatformResponse#signing_image_format #signing_image_format} => Types::SigningImageFormat
    #   * {Types::GetSigningPlatformResponse#max_size_in_mb #max_size_in_mb} => Integer
    #   * {Types::GetSigningPlatformResponse#revocation_supported #revocation_supported} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_platform({
    #     platform_id: "PlatformId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.platform_id #=> String
    #   resp.display_name #=> String
    #   resp.partner #=> String
    #   resp.target #=> String
    #   resp.category #=> String, one of "AWSIoT"
    #   resp.signing_configuration.encryption_algorithm_options.allowed_values #=> Array
    #   resp.signing_configuration.encryption_algorithm_options.allowed_values[0] #=> String, one of "RSA", "ECDSA"
    #   resp.signing_configuration.encryption_algorithm_options.default_value #=> String, one of "RSA", "ECDSA"
    #   resp.signing_configuration.hash_algorithm_options.allowed_values #=> Array
    #   resp.signing_configuration.hash_algorithm_options.allowed_values[0] #=> String, one of "SHA1", "SHA256"
    #   resp.signing_configuration.hash_algorithm_options.default_value #=> String, one of "SHA1", "SHA256"
    #   resp.signing_image_format.supported_formats #=> Array
    #   resp.signing_image_format.supported_formats[0] #=> String, one of "JSON", "JSONEmbedded", "JSONDetached"
    #   resp.signing_image_format.default_format #=> String, one of "JSON", "JSONEmbedded", "JSONDetached"
    #   resp.max_size_in_mb #=> Integer
    #   resp.revocation_supported #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningPlatform AWS API Documentation
    #
    # @overload get_signing_platform(params = {})
    # @param [Hash] params ({})
    def get_signing_platform(params = {}, options = {})
      req = build_request(:get_signing_platform, params)
      req.send_request(options)
    end

    # Returns information on a specific signing profile.
    #
    # @option params [required, String] :profile_name
    #   The name of the target signing profile.
    #
    # @option params [String] :profile_owner
    #   The AWS account ID of the profile owner.
    #
    # @return [Types::GetSigningProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSigningProfileResponse#profile_name #profile_name} => String
    #   * {Types::GetSigningProfileResponse#profile_version #profile_version} => String
    #   * {Types::GetSigningProfileResponse#profile_version_arn #profile_version_arn} => String
    #   * {Types::GetSigningProfileResponse#revocation_record #revocation_record} => Types::SigningProfileRevocationRecord
    #   * {Types::GetSigningProfileResponse#signing_material #signing_material} => Types::SigningMaterial
    #   * {Types::GetSigningProfileResponse#platform_id #platform_id} => String
    #   * {Types::GetSigningProfileResponse#platform_display_name #platform_display_name} => String
    #   * {Types::GetSigningProfileResponse#signature_validity_period #signature_validity_period} => Types::SignatureValidityPeriod
    #   * {Types::GetSigningProfileResponse#overrides #overrides} => Types::SigningPlatformOverrides
    #   * {Types::GetSigningProfileResponse#signing_parameters #signing_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetSigningProfileResponse#status #status} => String
    #   * {Types::GetSigningProfileResponse#status_reason #status_reason} => String
    #   * {Types::GetSigningProfileResponse#arn #arn} => String
    #   * {Types::GetSigningProfileResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_profile({
    #     profile_name: "ProfileName", # required
    #     profile_owner: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_name #=> String
    #   resp.profile_version #=> String
    #   resp.profile_version_arn #=> String
    #   resp.revocation_record.revocation_effective_from #=> Time
    #   resp.revocation_record.revoked_at #=> Time
    #   resp.revocation_record.revoked_by #=> String
    #   resp.signing_material.certificate_arn #=> String
    #   resp.platform_id #=> String
    #   resp.platform_display_name #=> String
    #   resp.signature_validity_period.value #=> Integer
    #   resp.signature_validity_period.type #=> String, one of "DAYS", "MONTHS", "YEARS"
    #   resp.overrides.signing_configuration.encryption_algorithm #=> String, one of "RSA", "ECDSA"
    #   resp.overrides.signing_configuration.hash_algorithm #=> String, one of "SHA1", "SHA256"
    #   resp.overrides.signing_image_format #=> String, one of "JSON", "JSONEmbedded", "JSONDetached"
    #   resp.signing_parameters #=> Hash
    #   resp.signing_parameters["SigningParameterKey"] #=> String
    #   resp.status #=> String, one of "Active", "Canceled", "Revoked"
    #   resp.status_reason #=> String
    #   resp.arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningProfile AWS API Documentation
    #
    # @overload get_signing_profile(params = {})
    # @param [Hash] params ({})
    def get_signing_profile(params = {}, options = {})
      req = build_request(:get_signing_profile, params)
      req.send_request(options)
    end

    # Lists the cross-account permissions associated with a signing profile.
    #
    # @option params [required, String] :profile_name
    #   Name of the signing profile containing the cross-account permissions.
    #
    # @option params [String] :next_token
    #   String for specifying the next set of paginated results.
    #
    # @return [Types::ListProfilePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProfilePermissionsResponse#revision_id #revision_id} => String
    #   * {Types::ListProfilePermissionsResponse#policy_size_bytes #policy_size_bytes} => Integer
    #   * {Types::ListProfilePermissionsResponse#permissions #permissions} => Array&lt;Types::Permission&gt;
    #   * {Types::ListProfilePermissionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_profile_permissions({
    #     profile_name: "ProfileName", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.revision_id #=> String
    #   resp.policy_size_bytes #=> Integer
    #   resp.permissions #=> Array
    #   resp.permissions[0].action #=> String
    #   resp.permissions[0].principal #=> String
    #   resp.permissions[0].statement_id #=> String
    #   resp.permissions[0].profile_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListProfilePermissions AWS API Documentation
    #
    # @overload list_profile_permissions(params = {})
    # @param [Hash] params ({})
    def list_profile_permissions(params = {}, options = {})
      req = build_request(:list_profile_permissions, params)
      req.send_request(options)
    end

    # Lists all your signing jobs. You can use the `maxResults` parameter to
    # limit the number of signing jobs that are returned in the response. If
    # additional jobs remain to be listed, AWS Signer returns a `nextToken`
    # value. Use this value in subsequent calls to `ListSigningJobs` to
    # fetch the remaining values. You can continue calling `ListSigningJobs`
    # with your `maxResults` parameter and with new values that Signer
    # returns in the `nextToken` parameter until all of your signing jobs
    # have been returned.
    #
    # @option params [String] :status
    #   A status value with which to filter your results.
    #
    # @option params [String] :platform_id
    #   The ID of microcontroller platform that you specified for the
    #   distribution of your code image.
    #
    # @option params [String] :requested_by
    #   The IAM principal that requested the signing job.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of items to return in the response. Use
    #   this parameter when paginating results. If additional items exist
    #   beyond the number you specify, the `nextToken` element is set in the
    #   response. Use the `nextToken` value in a subsequent request to
    #   retrieve additional items.
    #
    # @option params [String] :next_token
    #   String for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of `nextToken`
    #   from the response that you just received.
    #
    # @option params [Boolean] :is_revoked
    #   Filters results to return only signing jobs with revoked signatures.
    #
    # @option params [Time,DateTime,Date,Integer,String] :signature_expires_before
    #   Filters results to return only signing jobs with signatures expiring
    #   before a specified timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :signature_expires_after
    #   Filters results to return only signing jobs with signatures expiring
    #   after a specified timestamp.
    #
    # @option params [String] :job_invoker
    #   Filters results to return only signing jobs initiated by a specified
    #   IAM entity.
    #
    # @return [Types::ListSigningJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSigningJobsResponse#jobs #jobs} => Array&lt;Types::SigningJob&gt;
    #   * {Types::ListSigningJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_jobs({
    #     status: "InProgress", # accepts InProgress, Failed, Succeeded
    #     platform_id: "PlatformId",
    #     requested_by: "RequestedBy",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     is_revoked: false,
    #     signature_expires_before: Time.now,
    #     signature_expires_after: Time.now,
    #     job_invoker: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].source.s3.bucket_name #=> String
    #   resp.jobs[0].source.s3.key #=> String
    #   resp.jobs[0].source.s3.version #=> String
    #   resp.jobs[0].signed_object.s3.bucket_name #=> String
    #   resp.jobs[0].signed_object.s3.key #=> String
    #   resp.jobs[0].signing_material.certificate_arn #=> String
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].status #=> String, one of "InProgress", "Failed", "Succeeded"
    #   resp.jobs[0].is_revoked #=> Boolean
    #   resp.jobs[0].profile_name #=> String
    #   resp.jobs[0].profile_version #=> String
    #   resp.jobs[0].platform_id #=> String
    #   resp.jobs[0].platform_display_name #=> String
    #   resp.jobs[0].signature_expires_at #=> Time
    #   resp.jobs[0].job_owner #=> String
    #   resp.jobs[0].job_invoker #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningJobs AWS API Documentation
    #
    # @overload list_signing_jobs(params = {})
    # @param [Hash] params ({})
    def list_signing_jobs(params = {}, options = {})
      req = build_request(:list_signing_jobs, params)
      req.send_request(options)
    end

    # Lists all signing platforms available in AWS Signer that match the
    # request parameters. If additional jobs remain to be listed, Signer
    # returns a `nextToken` value. Use this value in subsequent calls to
    # `ListSigningJobs` to fetch the remaining values. You can continue
    # calling `ListSigningJobs` with your `maxResults` parameter and with
    # new values that Signer returns in the `nextToken` parameter until all
    # of your signing jobs have been returned.
    #
    # @option params [String] :category
    #   The category type of a signing platform.
    #
    # @option params [String] :partner
    #   Any partner entities connected to a signing platform.
    #
    # @option params [String] :target
    #   The validation template that is used by the target signing platform.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned by this operation.
    #
    # @option params [String] :next_token
    #   Value for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of `nextToken`
    #   from the response that you just received.
    #
    # @return [Types::ListSigningPlatformsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSigningPlatformsResponse#platforms #platforms} => Array&lt;Types::SigningPlatform&gt;
    #   * {Types::ListSigningPlatformsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_platforms({
    #     category: "String",
    #     partner: "String",
    #     target: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.platforms #=> Array
    #   resp.platforms[0].platform_id #=> String
    #   resp.platforms[0].display_name #=> String
    #   resp.platforms[0].partner #=> String
    #   resp.platforms[0].target #=> String
    #   resp.platforms[0].category #=> String, one of "AWSIoT"
    #   resp.platforms[0].signing_configuration.encryption_algorithm_options.allowed_values #=> Array
    #   resp.platforms[0].signing_configuration.encryption_algorithm_options.allowed_values[0] #=> String, one of "RSA", "ECDSA"
    #   resp.platforms[0].signing_configuration.encryption_algorithm_options.default_value #=> String, one of "RSA", "ECDSA"
    #   resp.platforms[0].signing_configuration.hash_algorithm_options.allowed_values #=> Array
    #   resp.platforms[0].signing_configuration.hash_algorithm_options.allowed_values[0] #=> String, one of "SHA1", "SHA256"
    #   resp.platforms[0].signing_configuration.hash_algorithm_options.default_value #=> String, one of "SHA1", "SHA256"
    #   resp.platforms[0].signing_image_format.supported_formats #=> Array
    #   resp.platforms[0].signing_image_format.supported_formats[0] #=> String, one of "JSON", "JSONEmbedded", "JSONDetached"
    #   resp.platforms[0].signing_image_format.default_format #=> String, one of "JSON", "JSONEmbedded", "JSONDetached"
    #   resp.platforms[0].max_size_in_mb #=> Integer
    #   resp.platforms[0].revocation_supported #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningPlatforms AWS API Documentation
    #
    # @overload list_signing_platforms(params = {})
    # @param [Hash] params ({})
    def list_signing_platforms(params = {}, options = {})
      req = build_request(:list_signing_platforms, params)
      req.send_request(options)
    end

    # Lists all available signing profiles in your AWS account. Returns only
    # profiles with an `ACTIVE` status unless the `includeCanceled` request
    # field is set to `true`. If additional jobs remain to be listed, AWS
    # Signer returns a `nextToken` value. Use this value in subsequent calls
    # to `ListSigningJobs` to fetch the remaining values. You can continue
    # calling `ListSigningJobs` with your `maxResults` parameter and with
    # new values that Signer returns in the `nextToken` parameter until all
    # of your signing jobs have been returned.
    #
    # @option params [Boolean] :include_canceled
    #   Designates whether to include profiles with the status of `CANCELED`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of profiles to be returned.
    #
    # @option params [String] :next_token
    #   Value for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of `nextToken`
    #   from the response that you just received.
    #
    # @option params [String] :platform_id
    #   Filters results to return only signing jobs initiated for a specified
    #   signing platform.
    #
    # @option params [Array<String>] :statuses
    #   Filters results to return only signing jobs with statuses in the
    #   specified list.
    #
    # @return [Types::ListSigningProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSigningProfilesResponse#profiles #profiles} => Array&lt;Types::SigningProfile&gt;
    #   * {Types::ListSigningProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_profiles({
    #     include_canceled: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     platform_id: "PlatformId",
    #     statuses: ["Active"], # accepts Active, Canceled, Revoked
    #   })
    #
    # @example Response structure
    #
    #   resp.profiles #=> Array
    #   resp.profiles[0].profile_name #=> String
    #   resp.profiles[0].profile_version #=> String
    #   resp.profiles[0].profile_version_arn #=> String
    #   resp.profiles[0].signing_material.certificate_arn #=> String
    #   resp.profiles[0].signature_validity_period.value #=> Integer
    #   resp.profiles[0].signature_validity_period.type #=> String, one of "DAYS", "MONTHS", "YEARS"
    #   resp.profiles[0].platform_id #=> String
    #   resp.profiles[0].platform_display_name #=> String
    #   resp.profiles[0].signing_parameters #=> Hash
    #   resp.profiles[0].signing_parameters["SigningParameterKey"] #=> String
    #   resp.profiles[0].status #=> String, one of "Active", "Canceled", "Revoked"
    #   resp.profiles[0].arn #=> String
    #   resp.profiles[0].tags #=> Hash
    #   resp.profiles[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningProfiles AWS API Documentation
    #
    # @overload list_signing_profiles(params = {})
    # @param [Hash] params ({})
    def list_signing_profiles(params = {}, options = {})
      req = build_request(:list_signing_profiles, params)
      req.send_request(options)
    end

    # Returns a list of the tags associated with a signing profile resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the signing profile.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a signing profile. A signing profile is a code-signing
    # template that can be used to carry out a pre-defined signing job.
    #
    # @option params [required, String] :profile_name
    #   The name of the signing profile to be created.
    #
    # @option params [Types::SigningMaterial] :signing_material
    #   The AWS Certificate Manager certificate that will be used to sign code
    #   with the new signing profile.
    #
    # @option params [Types::SignatureValidityPeriod] :signature_validity_period
    #   The default validity period override for any signature generated using
    #   this signing profile. If unspecified, the default is 135 months.
    #
    # @option params [required, String] :platform_id
    #   The ID of the signing platform to be created.
    #
    # @option params [Types::SigningPlatformOverrides] :overrides
    #   A subfield of `platform`. This specifies any different configuration
    #   options that you want to apply to the chosen platform (such as a
    #   different `hash-algorithm` or `signing-algorithm`).
    #
    # @option params [Hash<String,String>] :signing_parameters
    #   Map of key-value pairs for signing. These can include any information
    #   that you want to use during signing.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to be associated with the signing profile that is being created.
    #
    # @return [Types::PutSigningProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSigningProfileResponse#arn #arn} => String
    #   * {Types::PutSigningProfileResponse#profile_version #profile_version} => String
    #   * {Types::PutSigningProfileResponse#profile_version_arn #profile_version_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_signing_profile({
    #     profile_name: "ProfileName", # required
    #     signing_material: {
    #       certificate_arn: "CertificateArn", # required
    #     },
    #     signature_validity_period: {
    #       value: 1,
    #       type: "DAYS", # accepts DAYS, MONTHS, YEARS
    #     },
    #     platform_id: "PlatformId", # required
    #     overrides: {
    #       signing_configuration: {
    #         encryption_algorithm: "RSA", # accepts RSA, ECDSA
    #         hash_algorithm: "SHA1", # accepts SHA1, SHA256
    #       },
    #       signing_image_format: "JSON", # accepts JSON, JSONEmbedded, JSONDetached
    #     },
    #     signing_parameters: {
    #       "SigningParameterKey" => "SigningParameterValue",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.profile_version #=> String
    #   resp.profile_version_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/PutSigningProfile AWS API Documentation
    #
    # @overload put_signing_profile(params = {})
    # @param [Hash] params ({})
    def put_signing_profile(params = {}, options = {})
      req = build_request(:put_signing_profile, params)
      req.send_request(options)
    end

    # Removes cross-account permissions from a signing profile.
    #
    # @option params [required, String] :profile_name
    #   A human-readable name for the signing profile with permissions to be
    #   removed.
    #
    # @option params [required, String] :revision_id
    #   An identifier for the current revision of the signing profile
    #   permissions.
    #
    # @option params [required, String] :statement_id
    #   A unique identifier for the cross-account permissions statement.
    #
    # @return [Types::RemoveProfilePermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveProfilePermissionResponse#revision_id #revision_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_profile_permission({
    #     profile_name: "ProfileName", # required
    #     revision_id: "String", # required
    #     statement_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.revision_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/RemoveProfilePermission AWS API Documentation
    #
    # @overload remove_profile_permission(params = {})
    # @param [Hash] params ({})
    def remove_profile_permission(params = {}, options = {})
      req = build_request(:remove_profile_permission, params)
      req.send_request(options)
    end

    # Changes the state of a signing job to REVOKED. This indicates that the
    # signature is no longer valid.
    #
    # @option params [required, String] :job_id
    #   ID of the signing job to be revoked.
    #
    # @option params [String] :job_owner
    #   AWS account ID of the job owner.
    #
    # @option params [required, String] :reason
    #   The reason for revoking the signing job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_signature({
    #     job_id: "JobId", # required
    #     job_owner: "AccountId",
    #     reason: "RevocationReasonString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/RevokeSignature AWS API Documentation
    #
    # @overload revoke_signature(params = {})
    # @param [Hash] params ({})
    def revoke_signature(params = {}, options = {})
      req = build_request(:revoke_signature, params)
      req.send_request(options)
    end

    # Changes the state of a signing profile to REVOKED. This indicates that
    # signatures generated using the signing profile after an effective
    # start date are no longer valid.
    #
    # @option params [required, String] :profile_name
    #   The name of the signing profile to be revoked.
    #
    # @option params [required, String] :profile_version
    #   The version of the signing profile to be revoked.
    #
    # @option params [required, String] :reason
    #   The reason for revoking a signing profile.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :effective_time
    #   A timestamp for when revocation of a Signing Profile should become
    #   effective. Signatures generated using the signing profile after this
    #   timestamp are not trusted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_signing_profile({
    #     profile_name: "ProfileName", # required
    #     profile_version: "ProfileVersion", # required
    #     reason: "RevocationReasonString", # required
    #     effective_time: Time.now, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/RevokeSigningProfile AWS API Documentation
    #
    # @overload revoke_signing_profile(params = {})
    # @param [Hash] params ({})
    def revoke_signing_profile(params = {}, options = {})
      req = build_request(:revoke_signing_profile, params)
      req.send_request(options)
    end

    # Signs a binary payload and returns a signature envelope.
    #
    # @option params [required, String] :profile_name
    #   The name of the signing profile.
    #
    # @option params [String] :profile_owner
    #   The AWS account ID of the profile owner.
    #
    # @option params [required, String, StringIO, File] :payload
    #   Specifies the object digest (hash) to sign.
    #
    # @option params [required, String] :payload_format
    #   Payload content type. The single valid type is
    #   `application/vnd.cncf.notary.payload.v1+json`.
    #
    # @return [Types::SignPayloadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SignPayloadResponse#job_id #job_id} => String
    #   * {Types::SignPayloadResponse#job_owner #job_owner} => String
    #   * {Types::SignPayloadResponse#metadata #metadata} => Hash&lt;String,String&gt;
    #   * {Types::SignPayloadResponse#signature #signature} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sign_payload({
    #     profile_name: "ProfileName", # required
    #     profile_owner: "AccountId",
    #     payload: "data", # required
    #     payload_format: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_owner #=> String
    #   resp.metadata #=> Hash
    #   resp.metadata["String"] #=> String
    #   resp.signature #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/SignPayload AWS API Documentation
    #
    # @overload sign_payload(params = {})
    # @param [Hash] params ({})
    def sign_payload(params = {}, options = {})
      req = build_request(:sign_payload, params)
      req.send_request(options)
    end

    # Initiates a signing job to be performed on the code provided. Signing
    # jobs are viewable by the `ListSigningJobs` operation for two years
    # after they are performed. Note the following requirements:
    #
    # * You must create an Amazon S3 source bucket. For more information,
    #   see [Creating a Bucket][1] in the *Amazon S3 Getting Started Guide*.
    #
    # * Your S3 source bucket must be version enabled.
    #
    # * You must create an S3 destination bucket. AWS Signer uses your S3
    #   destination bucket to write your signed code.
    #
    # * You specify the name of the source and destination buckets when
    #   calling the `StartSigningJob` operation.
    #
    # * You must ensure the S3 buckets are from the same Region as the
    #   signing profile. Cross-Region signing isn't supported.
    #
    # * You must also specify a request token that identifies your request
    #   to Signer.
    #
    # You can call the DescribeSigningJob and the ListSigningJobs actions
    # after you call `StartSigningJob`.
    #
    # For a Java example that shows how to use this action, see
    # [StartSigningJob][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html
    # [2]: https://docs.aws.amazon.com/signer/latest/developerguide/api-startsigningjob.html
    #
    # @option params [required, Types::Source] :source
    #   The S3 bucket that contains the object to sign or a BLOB that contains
    #   your raw code.
    #
    # @option params [required, Types::Destination] :destination
    #   The S3 bucket in which to save your signed object. The destination
    #   contains the name of your bucket and an optional prefix.
    #
    # @option params [required, String] :profile_name
    #   The name of the signing profile.
    #
    # @option params [required, String] :client_request_token
    #   String that identifies the signing request. All calls after the first
    #   that use this token return the same response as the first call.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :profile_owner
    #   The AWS account ID of the signing profile owner.
    #
    # @return [Types::StartSigningJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSigningJobResponse#job_id #job_id} => String
    #   * {Types::StartSigningJobResponse#job_owner #job_owner} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_signing_job({
    #     source: { # required
    #       s3: {
    #         bucket_name: "BucketName", # required
    #         key: "Key", # required
    #         version: "Version", # required
    #       },
    #     },
    #     destination: { # required
    #       s3: {
    #         bucket_name: "BucketName",
    #         prefix: "Prefix",
    #       },
    #     },
    #     profile_name: "ProfileName", # required
    #     client_request_token: "ClientRequestToken", # required
    #     profile_owner: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_owner #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/StartSigningJob AWS API Documentation
    #
    # @overload start_signing_job(params = {})
    # @param [Hash] params ({})
    def start_signing_job(params = {}, options = {})
      req = build_request(:start_signing_job, params)
      req.send_request(options)
    end

    # Adds one or more tags to a signing profile. Tags are labels that you
    # can use to identify and organize your AWS resources. Each tag consists
    # of a key and an optional value. To specify the signing profile, use
    # its Amazon Resource Name (ARN). To specify the tag, use a key-value
    # pair.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the signing profile.
    #
    # @option params [required, Hash<String,String>] :tags
    #   One or more tags to be associated with the signing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a signing profile. To remove the tags,
    # specify a list of tag keys.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) for the signing profile.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to be removed from the signing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Signer')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-signer'
      context[:gem_version] = '1.73.0'
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
    # | waiter_name            | params                        | :delay   | :max_attempts |
    # | ---------------------- | ----------------------------- | -------- | ------------- |
    # | successful_signing_job | {Client#describe_signing_job} | 20       | 25            |
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
        successful_signing_job: Waiters::SuccessfulSigningJob
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
