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

module Aws::CodeArtifact
  # An API client for CodeArtifact.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeArtifact::Client.new(
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

    @identifier = :codeartifact

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
    add_plugin(Aws::CodeArtifact::Plugins::Endpoints)

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
    #   @option options [Aws::CodeArtifact::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CodeArtifact::EndpointParameters`.
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

    # Adds an existing external connection to a repository. One external
    # connection is allowed per repository.
    #
    # <note markdown="1"> A repository can have one or more upstream repositories, or an
    # external connection.
    #
    #  </note>
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository to which the external connection is added.
    #
    # @option params [required, String] :external_connection
    #   The name of the external connection to add to the repository. The
    #   following values are supported:
    #
    #   * `public:npmjs` - for the npm public repository.
    #
    #   * `public:nuget-org` - for the NuGet Gallery.
    #
    #   * `public:pypi` - for the Python Package Index.
    #
    #   * `public:maven-central` - for Maven Central.
    #
    #   * `public:maven-googleandroid` - for the Google Android repository.
    #
    #   * `public:maven-gradleplugins` - for the Gradle plugins repository.
    #
    #   * `public:maven-commonsware` - for the CommonsWare Android repository.
    #
    #   * `public:maven-clojars` - for the Clojars repository.
    #
    #   * `public:ruby-gems-org` - for RubyGems.org.
    #
    #   * `public:crates-io` - for Crates.io.
    #
    # @return [Types::AssociateExternalConnectionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateExternalConnectionResult#repository #repository} => Types::RepositoryDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_external_connection({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     external_connection: "ExternalConnectionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.name #=> String
    #   resp.repository.administrator_account #=> String
    #   resp.repository.domain_name #=> String
    #   resp.repository.domain_owner #=> String
    #   resp.repository.arn #=> String
    #   resp.repository.description #=> String
    #   resp.repository.upstreams #=> Array
    #   resp.repository.upstreams[0].repository_name #=> String
    #   resp.repository.external_connections #=> Array
    #   resp.repository.external_connections[0].external_connection_name #=> String
    #   resp.repository.external_connections[0].package_format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.repository.external_connections[0].status #=> String, one of "Available"
    #   resp.repository.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/AssociateExternalConnection AWS API Documentation
    #
    # @overload associate_external_connection(params = {})
    # @param [Hash] params ({})
    def associate_external_connection(params = {}, options = {})
      req = build_request(:associate_external_connection, params)
      req.send_request(options)
    end

    # Copies package versions from one repository to another repository in
    # the same domain.
    #
    # <note markdown="1"> You must specify `versions` or `versionRevisions`. You cannot specify
    # both.
    #
    #  </note>
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the source and destination
    #   repositories.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :source_repository
    #   The name of the repository that contains the package versions to be
    #   copied.
    #
    # @option params [required, String] :destination_repository
    #   The name of the repository into which package versions are copied.
    #
    # @option params [required, String] :format
    #   The format of the package versions to be copied.
    #
    # @option params [String] :namespace
    #   The namespace of the package versions to be copied. The package
    #   component that specifies its namespace depends on its type. For
    #   example:
    #
    #   <note markdown="1"> The namespace is required when copying package versions of the
    #   following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package that contains the versions to be copied.
    #
    # @option params [Array<String>] :versions
    #   The versions of the package to be copied.
    #
    #   <note markdown="1"> You must specify `versions` or `versionRevisions`. You cannot specify
    #   both.
    #
    #    </note>
    #
    # @option params [Hash<String,String>] :version_revisions
    #   A list of key-value pairs. The keys are package versions and the
    #   values are package version revisions. A `CopyPackageVersion` operation
    #   succeeds if the specified versions in the source repository match the
    #   specified package version revision.
    #
    #   <note markdown="1"> You must specify `versions` or `versionRevisions`. You cannot specify
    #   both.
    #
    #    </note>
    #
    # @option params [Boolean] :allow_overwrite
    #   Set to true to overwrite a package version that already exists in the
    #   destination repository. If set to false and the package version
    #   already exists in the destination repository, the package version is
    #   returned in the `failedVersions` field of the response with an
    #   `ALREADY_EXISTS` error code.
    #
    # @option params [Boolean] :include_from_upstream
    #   Set to true to copy packages from repositories that are upstream from
    #   the source repository to the destination repository. The default
    #   setting is false. For more information, see [Working with upstream
    #   repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html
    #
    # @return [Types::CopyPackageVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyPackageVersionsResult#successful_versions #successful_versions} => Hash&lt;String,Types::SuccessfulPackageVersionInfo&gt;
    #   * {Types::CopyPackageVersionsResult#failed_versions #failed_versions} => Hash&lt;String,Types::PackageVersionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_package_versions({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     source_repository: "RepositoryName", # required
    #     destination_repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     versions: ["PackageVersion"],
    #     version_revisions: {
    #       "PackageVersion" => "PackageVersionRevision",
    #     },
    #     allow_overwrite: false,
    #     include_from_upstream: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_versions #=> Hash
    #   resp.successful_versions["PackageVersion"].revision #=> String
    #   resp.successful_versions["PackageVersion"].status #=> String, one of "Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"
    #   resp.failed_versions #=> Hash
    #   resp.failed_versions["PackageVersion"].error_code #=> String, one of "ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"
    #   resp.failed_versions["PackageVersion"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CopyPackageVersions AWS API Documentation
    #
    # @overload copy_package_versions(params = {})
    # @param [Hash] params ({})
    def copy_package_versions(params = {}, options = {})
      req = build_request(:copy_package_versions, params)
      req.send_request(options)
    end

    # Creates a domain. CodeArtifact *domains* make it easier to manage
    # multiple repositories across an organization. You can use a domain to
    # apply permissions across many repositories owned by different Amazon
    # Web Services accounts. An asset is stored only once in a domain, even
    # if it's in multiple repositories.
    #
    # Although you can have multiple domains, we recommend a single
    # production domain that contains all published artifacts so that your
    # development teams can find and share packages. You can use a second
    # pre-production domain to test changes to the production domain
    # configuration.
    #
    # @option params [required, String] :domain
    #   The name of the domain to create. All domain names in an Amazon Web
    #   Services Region that are in the same Amazon Web Services account must
    #   be unique. The domain name is used as the prefix in DNS hostnames. Do
    #   not use sensitive information in a domain name because it is publicly
    #   discoverable.
    #
    # @option params [String] :encryption_key
    #   The encryption key for the domain. This is used to encrypt content
    #   stored in a domain. An encryption key can be a key ID, a key Amazon
    #   Resource Name (ARN), a key alias, or a key alias ARN. To specify an
    #   `encryptionKey`, your IAM role must have `kms:DescribeKey` and
    #   `kms:CreateGrant` permissions on the encryption key that is used. For
    #   more information, see [DescribeKey][1] in the *Key Management Service
    #   API Reference* and [Key Management Service API Permissions
    #   Reference][2] in the *Key Management Service Developer Guide*.
    #
    #   CodeArtifact supports only symmetric CMKs. Do not associate an
    #   asymmetric CMK with your domain. For more information, see [Using
    #   symmetric and asymmetric keys][3] in the *Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tag key-value pairs for the domain.
    #
    # @return [Types::CreateDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResult#domain #domain} => Types::DomainDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     domain: "DomainName", # required
    #     encryption_key: "Arn",
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
    #   resp.domain.name #=> String
    #   resp.domain.owner #=> String
    #   resp.domain.arn #=> String
    #   resp.domain.status #=> String, one of "Active", "Deleted"
    #   resp.domain.created_time #=> Time
    #   resp.domain.encryption_key #=> String
    #   resp.domain.repository_count #=> Integer
    #   resp.domain.asset_size_bytes #=> Integer
    #   resp.domain.s3_bucket_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates a package group. For more information about creating package
    # groups, including example CLI commands, see [Create a package
    # group][1] in the *CodeArtifact User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/create-package-group.html
    #
    # @option params [required, String] :domain
    #   The name of the domain in which you want to create a package group.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :package_group
    #   The pattern of the package group to create. The pattern is also the
    #   identifier of the package group.
    #
    # @option params [String] :contact_info
    #   The contact information for the created package group.
    #
    # @option params [String] :description
    #   A description of the package group.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tag key-value pairs for the package group.
    #
    # @return [Types::CreatePackageGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePackageGroupResult#package_group #package_group} => Types::PackageGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package_group({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     contact_info: "PackageGroupContactInfo",
    #     description: "Description",
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
    #   resp.package_group.arn #=> String
    #   resp.package_group.pattern #=> String
    #   resp.package_group.domain_name #=> String
    #   resp.package_group.domain_owner #=> String
    #   resp.package_group.created_time #=> Time
    #   resp.package_group.contact_info #=> String
    #   resp.package_group.description #=> String
    #   resp.package_group.origin_configuration.restrictions #=> Hash
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].effective_mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.arn #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.pattern #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].repositories_count #=> Integer
    #   resp.package_group.parent.arn #=> String
    #   resp.package_group.parent.pattern #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreatePackageGroup AWS API Documentation
    #
    # @overload create_package_group(params = {})
    # @param [Hash] params ({})
    def create_package_group(params = {}, options = {})
      req = build_request(:create_package_group, params)
      req.send_request(options)
    end

    # Creates a repository.
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the created repository.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository to create.
    #
    # @option params [String] :description
    #   A description of the created repository.
    #
    # @option params [Array<Types::UpstreamRepository>] :upstreams
    #   A list of upstream repositories to associate with the repository. The
    #   order of the upstream repositories in the list determines their
    #   priority order when CodeArtifact looks for a requested package
    #   version. For more information, see [Working with upstream
    #   repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tag key-value pairs for the repository.
    #
    # @return [Types::CreateRepositoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRepositoryResult#repository #repository} => Types::RepositoryDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     description: "Description",
    #     upstreams: [
    #       {
    #         repository_name: "RepositoryName", # required
    #       },
    #     ],
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
    #   resp.repository.name #=> String
    #   resp.repository.administrator_account #=> String
    #   resp.repository.domain_name #=> String
    #   resp.repository.domain_owner #=> String
    #   resp.repository.arn #=> String
    #   resp.repository.description #=> String
    #   resp.repository.upstreams #=> Array
    #   resp.repository.upstreams[0].repository_name #=> String
    #   resp.repository.external_connections #=> Array
    #   resp.repository.external_connections[0].external_connection_name #=> String
    #   resp.repository.external_connections[0].package_format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.repository.external_connections[0].status #=> String, one of "Available"
    #   resp.repository.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreateRepository AWS API Documentation
    #
    # @overload create_repository(params = {})
    # @param [Hash] params ({})
    def create_repository(params = {}, options = {})
      req = build_request(:create_repository, params)
      req.send_request(options)
    end

    # Deletes a domain. You cannot delete a domain that contains
    # repositories. If you want to delete a domain with repositories, first
    # delete its repositories.
    #
    # @option params [required, String] :domain
    #   The name of the domain to delete.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @return [Types::DeleteDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainResult#domain #domain} => Types::DomainDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.name #=> String
    #   resp.domain.owner #=> String
    #   resp.domain.arn #=> String
    #   resp.domain.status #=> String, one of "Active", "Deleted"
    #   resp.domain.created_time #=> Time
    #   resp.domain.encryption_key #=> String
    #   resp.domain.repository_count #=> Integer
    #   resp.domain.asset_size_bytes #=> Integer
    #   resp.domain.s3_bucket_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Deletes the resource policy set on a domain.
    #
    # @option params [required, String] :domain
    #   The name of the domain associated with the resource policy to be
    #   deleted.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [String] :policy_revision
    #   The current revision of the resource policy to be deleted. This
    #   revision is used for optimistic locking, which prevents others from
    #   overwriting your changes to the domain's resource policy.
    #
    # @return [Types::DeleteDomainPermissionsPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainPermissionsPolicyResult#policy #policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_permissions_policy({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     policy_revision: "PolicyRevision",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.resource_arn #=> String
    #   resp.policy.revision #=> String
    #   resp.policy.document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteDomainPermissionsPolicy AWS API Documentation
    #
    # @overload delete_domain_permissions_policy(params = {})
    # @param [Hash] params ({})
    def delete_domain_permissions_policy(params = {}, options = {})
      req = build_request(:delete_domain_permissions_policy, params)
      req.send_request(options)
    end

    # Deletes a package and all associated package versions. A deleted
    # package cannot be restored. To delete one or more package versions,
    # use the [DeletePackageVersions][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DeletePackageVersions.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the package to delete.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the package to delete.
    #
    # @option params [required, String] :format
    #   The format of the requested package to delete.
    #
    # @option params [String] :namespace
    #   The namespace of the package to delete. The package component that
    #   specifies its namespace depends on its type. For example:
    #
    #   <note markdown="1"> The namespace is required when deleting packages of the following
    #   formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package to delete.
    #
    # @return [Types::DeletePackageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePackageResult#deleted_package #deleted_package} => Types::PackageSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deleted_package.format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.deleted_package.namespace #=> String
    #   resp.deleted_package.package #=> String
    #   resp.deleted_package.origin_configuration.restrictions.publish #=> String, one of "ALLOW", "BLOCK"
    #   resp.deleted_package.origin_configuration.restrictions.upstream #=> String, one of "ALLOW", "BLOCK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeletePackage AWS API Documentation
    #
    # @overload delete_package(params = {})
    # @param [Hash] params ({})
    def delete_package(params = {}, options = {})
      req = build_request(:delete_package, params)
      req.send_request(options)
    end

    # Deletes a package group. Deleting a package group does not delete
    # packages or package versions associated with the package group. When a
    # package group is deleted, the direct child package groups will become
    # children of the package group's direct parent package group.
    # Therefore, if any of the child groups are inheriting any settings from
    # the parent, those settings could change.
    #
    # @option params [required, String] :domain
    #   The domain that contains the package group to be deleted.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :package_group
    #   The pattern of the package group to be deleted.
    #
    # @return [Types::DeletePackageGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePackageGroupResult#package_group #package_group} => Types::PackageGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package_group({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_group.arn #=> String
    #   resp.package_group.pattern #=> String
    #   resp.package_group.domain_name #=> String
    #   resp.package_group.domain_owner #=> String
    #   resp.package_group.created_time #=> Time
    #   resp.package_group.contact_info #=> String
    #   resp.package_group.description #=> String
    #   resp.package_group.origin_configuration.restrictions #=> Hash
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].effective_mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.arn #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.pattern #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].repositories_count #=> Integer
    #   resp.package_group.parent.arn #=> String
    #   resp.package_group.parent.pattern #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeletePackageGroup AWS API Documentation
    #
    # @overload delete_package_group(params = {})
    # @param [Hash] params ({})
    def delete_package_group(params = {}, options = {})
      req = build_request(:delete_package_group, params)
      req.send_request(options)
    end

    # Deletes one or more versions of a package. A deleted package version
    # cannot be restored in your repository. If you want to remove a package
    # version from your repository and be able to restore it later, set its
    # status to `Archived`. Archived packages cannot be downloaded from a
    # repository and don't show up with list package APIs (for example,
    # [ListPackageVersions][1]), but you can restore them using
    # [UpdatePackageVersionsStatus][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html
    # [2]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the package to delete.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the package versions to
    #   delete.
    #
    # @option params [required, String] :format
    #   The format of the package versions to delete.
    #
    # @option params [String] :namespace
    #   The namespace of the package versions to be deleted. The package
    #   component that specifies its namespace depends on its type. For
    #   example:
    #
    #   <note markdown="1"> The namespace is required when deleting package versions of the
    #   following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package with the versions to delete.
    #
    # @option params [required, Array<String>] :versions
    #   An array of strings that specify the versions of the package to
    #   delete.
    #
    # @option params [String] :expected_status
    #   The expected status of the package version to delete.
    #
    # @return [Types::DeletePackageVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePackageVersionsResult#successful_versions #successful_versions} => Hash&lt;String,Types::SuccessfulPackageVersionInfo&gt;
    #   * {Types::DeletePackageVersionsResult#failed_versions #failed_versions} => Hash&lt;String,Types::PackageVersionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package_versions({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     versions: ["PackageVersion"], # required
    #     expected_status: "Published", # accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_versions #=> Hash
    #   resp.successful_versions["PackageVersion"].revision #=> String
    #   resp.successful_versions["PackageVersion"].status #=> String, one of "Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"
    #   resp.failed_versions #=> Hash
    #   resp.failed_versions["PackageVersion"].error_code #=> String, one of "ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"
    #   resp.failed_versions["PackageVersion"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeletePackageVersions AWS API Documentation
    #
    # @overload delete_package_versions(params = {})
    # @param [Hash] params ({})
    def delete_package_versions(params = {}, options = {})
      req = build_request(:delete_package_versions, params)
      req.send_request(options)
    end

    # Deletes a repository.
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository to delete.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository to delete.
    #
    # @return [Types::DeleteRepositoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryResult#repository #repository} => Types::RepositoryDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.name #=> String
    #   resp.repository.administrator_account #=> String
    #   resp.repository.domain_name #=> String
    #   resp.repository.domain_owner #=> String
    #   resp.repository.arn #=> String
    #   resp.repository.description #=> String
    #   resp.repository.upstreams #=> Array
    #   resp.repository.upstreams[0].repository_name #=> String
    #   resp.repository.external_connections #=> Array
    #   resp.repository.external_connections[0].external_connection_name #=> String
    #   resp.repository.external_connections[0].package_format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.repository.external_connections[0].status #=> String, one of "Available"
    #   resp.repository.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteRepository AWS API Documentation
    #
    # @overload delete_repository(params = {})
    # @param [Hash] params ({})
    def delete_repository(params = {}, options = {})
      req = build_request(:delete_repository, params)
      req.send_request(options)
    end

    # Deletes the resource policy that is set on a repository. After a
    # resource policy is deleted, the permissions allowed and denied by the
    # deleted policy are removed. The effect of deleting a resource policy
    # might not be immediate.
    #
    # Use `DeleteRepositoryPermissionsPolicy` with caution. After a policy
    # is deleted, Amazon Web Services users, roles, and accounts lose
    # permissions to perform the repository actions granted by the deleted
    # policy.
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository associated with
    #   the resource policy to be deleted.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that is associated with the resource policy
    #   to be deleted
    #
    # @option params [String] :policy_revision
    #   The revision of the repository's resource policy to be deleted. This
    #   revision is used for optimistic locking, which prevents others from
    #   accidentally overwriting your changes to the repository's resource
    #   policy.
    #
    # @return [Types::DeleteRepositoryPermissionsPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRepositoryPermissionsPolicyResult#policy #policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository_permissions_policy({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     policy_revision: "PolicyRevision",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.resource_arn #=> String
    #   resp.policy.revision #=> String
    #   resp.policy.document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteRepositoryPermissionsPolicy AWS API Documentation
    #
    # @overload delete_repository_permissions_policy(params = {})
    # @param [Hash] params ({})
    def delete_repository_permissions_policy(params = {}, options = {})
      req = build_request(:delete_repository_permissions_policy, params)
      req.send_request(options)
    end

    # Returns a [DomainDescription][1] object that contains information
    # about the requested domain.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html
    #
    # @option params [required, String] :domain
    #   A string that specifies the name of the requested domain.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @return [Types::DescribeDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainResult#domain #domain} => Types::DomainDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.name #=> String
    #   resp.domain.owner #=> String
    #   resp.domain.arn #=> String
    #   resp.domain.status #=> String, one of "Active", "Deleted"
    #   resp.domain.created_time #=> Time
    #   resp.domain.encryption_key #=> String
    #   resp.domain.repository_count #=> Integer
    #   resp.domain.asset_size_bytes #=> Integer
    #   resp.domain.s3_bucket_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribeDomain AWS API Documentation
    #
    # @overload describe_domain(params = {})
    # @param [Hash] params ({})
    def describe_domain(params = {}, options = {})
      req = build_request(:describe_domain, params)
      req.send_request(options)
    end

    # Returns a [PackageDescription][1] object that contains information
    # about the requested package.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   package.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the requested package.
    #
    # @option params [required, String] :format
    #   A format that specifies the type of the requested package.
    #
    # @option params [String] :namespace
    #   The namespace of the requested package. The package component that
    #   specifies its namespace depends on its type. For example:
    #
    #   <note markdown="1"> The namespace is required when requesting packages of the following
    #   formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the requested package.
    #
    # @return [Types::DescribePackageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackageResult#package #package} => Types::PackageDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package.format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.package.namespace #=> String
    #   resp.package.name #=> String
    #   resp.package.origin_configuration.restrictions.publish #=> String, one of "ALLOW", "BLOCK"
    #   resp.package.origin_configuration.restrictions.upstream #=> String, one of "ALLOW", "BLOCK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribePackage AWS API Documentation
    #
    # @overload describe_package(params = {})
    # @param [Hash] params ({})
    def describe_package(params = {}, options = {})
      req = build_request(:describe_package, params)
      req.send_request(options)
    end

    # Returns a [PackageGroupDescription][1] object that contains
    # information about the requested package group.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroupDescription.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the package group.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :package_group
    #   The pattern of the requested package group.
    #
    # @return [Types::DescribePackageGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackageGroupResult#package_group #package_group} => Types::PackageGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package_group({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_group.arn #=> String
    #   resp.package_group.pattern #=> String
    #   resp.package_group.domain_name #=> String
    #   resp.package_group.domain_owner #=> String
    #   resp.package_group.created_time #=> Time
    #   resp.package_group.contact_info #=> String
    #   resp.package_group.description #=> String
    #   resp.package_group.origin_configuration.restrictions #=> Hash
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].effective_mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.arn #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.pattern #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].repositories_count #=> Integer
    #   resp.package_group.parent.arn #=> String
    #   resp.package_group.parent.pattern #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribePackageGroup AWS API Documentation
    #
    # @overload describe_package_group(params = {})
    # @param [Hash] params ({})
    def describe_package_group(params = {}, options = {})
      req = build_request(:describe_package_group, params)
      req.send_request(options)
    end

    # Returns a [PackageVersionDescription][1] object that contains
    # information about the requested package version.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   package version.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the package version.
    #
    # @option params [required, String] :format
    #   A format that specifies the type of the requested package version.
    #
    # @option params [String] :namespace
    #   The namespace of the requested package version. The package component
    #   that specifies its namespace depends on its type. For example:
    #
    #   <note markdown="1"> The namespace is required when requesting package versions of the
    #   following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the requested package version.
    #
    # @option params [required, String] :package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #
    # @return [Types::DescribePackageVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePackageVersionResult#package_version #package_version} => Types::PackageVersionDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package_version({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_version.format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.package_version.namespace #=> String
    #   resp.package_version.package_name #=> String
    #   resp.package_version.display_name #=> String
    #   resp.package_version.version #=> String
    #   resp.package_version.summary #=> String
    #   resp.package_version.home_page #=> String
    #   resp.package_version.source_code_repository #=> String
    #   resp.package_version.published_time #=> Time
    #   resp.package_version.licenses #=> Array
    #   resp.package_version.licenses[0].name #=> String
    #   resp.package_version.licenses[0].url #=> String
    #   resp.package_version.revision #=> String
    #   resp.package_version.status #=> String, one of "Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"
    #   resp.package_version.origin.domain_entry_point.repository_name #=> String
    #   resp.package_version.origin.domain_entry_point.external_connection_name #=> String
    #   resp.package_version.origin.origin_type #=> String, one of "INTERNAL", "EXTERNAL", "UNKNOWN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribePackageVersion AWS API Documentation
    #
    # @overload describe_package_version(params = {})
    # @param [Hash] params ({})
    def describe_package_version(params = {}, options = {})
      req = build_request(:describe_package_version, params)
      req.send_request(options)
    end

    # Returns a `RepositoryDescription` object that contains detailed
    # information about the requested repository.
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository to describe.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   A string that specifies the name of the requested repository.
    #
    # @return [Types::DescribeRepositoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRepositoryResult#repository #repository} => Types::RepositoryDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_repository({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.name #=> String
    #   resp.repository.administrator_account #=> String
    #   resp.repository.domain_name #=> String
    #   resp.repository.domain_owner #=> String
    #   resp.repository.arn #=> String
    #   resp.repository.description #=> String
    #   resp.repository.upstreams #=> Array
    #   resp.repository.upstreams[0].repository_name #=> String
    #   resp.repository.external_connections #=> Array
    #   resp.repository.external_connections[0].external_connection_name #=> String
    #   resp.repository.external_connections[0].package_format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.repository.external_connections[0].status #=> String, one of "Available"
    #   resp.repository.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribeRepository AWS API Documentation
    #
    # @overload describe_repository(params = {})
    # @param [Hash] params ({})
    def describe_repository(params = {}, options = {})
      req = build_request(:describe_repository, params)
      req.send_request(options)
    end

    # Removes an existing external connection from a repository.
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository from which to
    #   remove the external repository.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository from which the external connection will be
    #   removed.
    #
    # @option params [required, String] :external_connection
    #   The name of the external connection to be removed from the repository.
    #
    # @return [Types::DisassociateExternalConnectionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateExternalConnectionResult#repository #repository} => Types::RepositoryDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_external_connection({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     external_connection: "ExternalConnectionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.name #=> String
    #   resp.repository.administrator_account #=> String
    #   resp.repository.domain_name #=> String
    #   resp.repository.domain_owner #=> String
    #   resp.repository.arn #=> String
    #   resp.repository.description #=> String
    #   resp.repository.upstreams #=> Array
    #   resp.repository.upstreams[0].repository_name #=> String
    #   resp.repository.external_connections #=> Array
    #   resp.repository.external_connections[0].external_connection_name #=> String
    #   resp.repository.external_connections[0].package_format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.repository.external_connections[0].status #=> String, one of "Available"
    #   resp.repository.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DisassociateExternalConnection AWS API Documentation
    #
    # @overload disassociate_external_connection(params = {})
    # @param [Hash] params ({})
    def disassociate_external_connection(params = {}, options = {})
      req = build_request(:disassociate_external_connection, params)
      req.send_request(options)
    end

    # Deletes the assets in package versions and sets the package versions'
    # status to `Disposed`. A disposed package version cannot be restored in
    # your repository because its assets are deleted.
    #
    # To view all disposed package versions in a repository, use
    # [ListPackageVersions][1] and set the [status][2] parameter to
    # `Disposed`.
    #
    # To view information about a disposed package version, use
    # [DescribePackageVersion][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html
    # [2]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax
    # [3]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DescribePackageVersion.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository you want to
    #   dispose.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the package versions you want
    #   to dispose.
    #
    # @option params [required, String] :format
    #   A format that specifies the type of package versions you want to
    #   dispose.
    #
    # @option params [String] :namespace
    #   The namespace of the package versions to be disposed. The package
    #   component that specifies its namespace depends on its type. For
    #   example:
    #
    #   <note markdown="1"> The namespace is required when disposing package versions of the
    #   following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package with the versions you want to dispose.
    #
    # @option params [required, Array<String>] :versions
    #   The versions of the package you want to dispose.
    #
    # @option params [Hash<String,String>] :version_revisions
    #   The revisions of the package versions you want to dispose.
    #
    # @option params [String] :expected_status
    #   The expected status of the package version to dispose.
    #
    # @return [Types::DisposePackageVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisposePackageVersionsResult#successful_versions #successful_versions} => Hash&lt;String,Types::SuccessfulPackageVersionInfo&gt;
    #   * {Types::DisposePackageVersionsResult#failed_versions #failed_versions} => Hash&lt;String,Types::PackageVersionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dispose_package_versions({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     versions: ["PackageVersion"], # required
    #     version_revisions: {
    #       "PackageVersion" => "PackageVersionRevision",
    #     },
    #     expected_status: "Published", # accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_versions #=> Hash
    #   resp.successful_versions["PackageVersion"].revision #=> String
    #   resp.successful_versions["PackageVersion"].status #=> String, one of "Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"
    #   resp.failed_versions #=> Hash
    #   resp.failed_versions["PackageVersion"].error_code #=> String, one of "ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"
    #   resp.failed_versions["PackageVersion"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DisposePackageVersions AWS API Documentation
    #
    # @overload dispose_package_versions(params = {})
    # @param [Hash] params ({})
    def dispose_package_versions(params = {}, options = {})
      req = build_request(:dispose_package_versions, params)
      req.send_request(options)
    end

    # Returns the most closely associated package group to the specified
    # package. This API does not require that the package exist in any
    # repository in the domain. As such, `GetAssociatedPackageGroup` can be
    # used to see which package group's origin configuration applies to a
    # package before that package is in a repository. This can be helpful to
    # check if public packages are blocked without ingesting them.
    #
    # For information package group association and matching, see [Package
    # group definition syntax and matching behavior][1] in the *CodeArtifact
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the package from which to get the
    #   associated package group.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :format
    #   The format of the package from which to get the associated package
    #   group.
    #
    # @option params [String] :namespace
    #   The namespace of the package from which to get the associated package
    #   group. The package component that specifies its namespace depends on
    #   its type. For example:
    #
    #   <note markdown="1"> The namespace is required when getting associated package groups from
    #   packages of the following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The package from which to get the associated package group.
    #
    # @return [Types::GetAssociatedPackageGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssociatedPackageGroupResult#package_group #package_group} => Types::PackageGroupDescription
    #   * {Types::GetAssociatedPackageGroupResult#association_type #association_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_associated_package_group({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.package_group.arn #=> String
    #   resp.package_group.pattern #=> String
    #   resp.package_group.domain_name #=> String
    #   resp.package_group.domain_owner #=> String
    #   resp.package_group.created_time #=> Time
    #   resp.package_group.contact_info #=> String
    #   resp.package_group.description #=> String
    #   resp.package_group.origin_configuration.restrictions #=> Hash
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].effective_mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.arn #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.pattern #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].repositories_count #=> Integer
    #   resp.package_group.parent.arn #=> String
    #   resp.package_group.parent.pattern #=> String
    #   resp.association_type #=> String, one of "STRONG", "WEAK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetAssociatedPackageGroup AWS API Documentation
    #
    # @overload get_associated_package_group(params = {})
    # @param [Hash] params ({})
    def get_associated_package_group(params = {}, options = {})
      req = build_request(:get_associated_package_group, params)
      req.send_request(options)
    end

    # Generates a temporary authorization token for accessing repositories
    # in the domain. This API requires the
    # `codeartifact:GetAuthorizationToken` and `sts:GetServiceBearerToken`
    # permissions. For more information about authorization tokens, see
    # [CodeArtifact authentication and tokens][1].
    #
    # <note markdown="1"> CodeArtifact authorization tokens are valid for a period of 12 hours
    # when created with the `login` command. You can call `login`
    # periodically to refresh the token. When you create an authorization
    # token with the `GetAuthorizationToken` API, you can set a custom
    # authorization period, up to a maximum of 12 hours, with the
    # `durationSeconds` parameter.
    #
    #  The authorization period begins after `login` or
    # `GetAuthorizationToken` is called. If `login` or
    # `GetAuthorizationToken` is called while assuming a role, the token
    # lifetime is independent of the maximum session duration of the role.
    # For example, if you call `sts assume-role` and specify a session
    # duration of 15 minutes, then generate a CodeArtifact authorization
    # token, the token will be valid for the full authorization period even
    # though this is longer than the 15-minute session duration.
    #
    #  See [Using IAM Roles][2] for more information on controlling session
    # duration.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html
    # [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that is in scope for the generated
    #   authorization token.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [Integer] :duration_seconds
    #   The time, in seconds, that the generated authorization token is valid.
    #   Valid values are `0` and any number between `900` (15 minutes) and
    #   `43200` (12 hours). A value of `0` will set the expiration of the
    #   authorization token to the same expiration of the user's role's
    #   temporary credentials.
    #
    # @return [Types::GetAuthorizationTokenResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAuthorizationTokenResult#authorization_token #authorization_token} => String
    #   * {Types::GetAuthorizationTokenResult#expiration #expiration} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_authorization_token({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     duration_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.authorization_token #=> String
    #   resp.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetAuthorizationToken AWS API Documentation
    #
    # @overload get_authorization_token(params = {})
    # @param [Hash] params ({})
    def get_authorization_token(params = {}, options = {})
      req = build_request(:get_authorization_token, params)
      req.send_request(options)
    end

    # Returns the resource policy attached to the specified domain.
    #
    # <note markdown="1"> The policy is a resource-based policy, not an identity-based policy.
    # For more information, see [Identity-based policies and resource-based
    # policies ][1] in the *IAM User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html
    #
    # @option params [required, String] :domain
    #   The name of the domain to which the resource policy is attached.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @return [Types::GetDomainPermissionsPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainPermissionsPolicyResult#policy #policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_permissions_policy({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.resource_arn #=> String
    #   resp.policy.revision #=> String
    #   resp.policy.document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetDomainPermissionsPolicy AWS API Documentation
    #
    # @overload get_domain_permissions_policy(params = {})
    # @param [Hash] params ({})
    def get_domain_permissions_policy(params = {}, options = {})
      req = build_request(:get_domain_permissions_policy, params)
      req.send_request(options)
    end

    # Returns an asset (or file) that is in a package. For example, for a
    # Maven package version, use `GetPackageVersionAsset` to download a
    # `JAR` file, a `POM` file, or any other assets in the package version.
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   package version with the requested asset.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The repository that contains the package version with the requested
    #   asset.
    #
    # @option params [required, String] :format
    #   A format that specifies the type of the package version with the
    #   requested asset file.
    #
    # @option params [String] :namespace
    #   The namespace of the package version with the requested asset file.
    #   The package component that specifies its namespace depends on its
    #   type. For example:
    #
    #   <note markdown="1"> The namespace is required when requesting assets from package versions
    #   of the following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package that contains the requested asset.
    #
    # @option params [required, String] :package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #
    # @option params [required, String] :asset
    #   The name of the requested asset.
    #
    # @option params [String] :package_version_revision
    #   The name of the package version revision that contains the requested
    #   asset.
    #
    # @return [Types::GetPackageVersionAssetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPackageVersionAssetResult#asset #asset} => IO
    #   * {Types::GetPackageVersionAssetResult#asset_name #asset_name} => String
    #   * {Types::GetPackageVersionAssetResult#package_version #package_version} => String
    #   * {Types::GetPackageVersionAssetResult#package_version_revision #package_version_revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package_version_asset({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #     asset: "AssetName", # required
    #     package_version_revision: "PackageVersionRevision",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset #=> IO
    #   resp.asset_name #=> String
    #   resp.package_version #=> String
    #   resp.package_version_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetPackageVersionAsset AWS API Documentation
    #
    # @overload get_package_version_asset(params = {})
    # @param [Hash] params ({})
    def get_package_version_asset(params = {}, options = {}, &block)
      req = build_request(:get_package_version_asset, params)
      req.send_request(options, &block)
    end

    # Gets the readme file or descriptive text for a package version.
    #
    # The returned text might contain formatting. For example, it might
    # contain formatting for Markdown or reStructuredText.
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   package version with the requested readme file.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The repository that contains the package with the requested readme
    #   file.
    #
    # @option params [required, String] :format
    #   A format that specifies the type of the package version with the
    #   requested readme file.
    #
    # @option params [String] :namespace
    #   The namespace of the package version with the requested readme file.
    #   The package component that specifies its namespace depends on its
    #   type. For example:
    #
    #   <note markdown="1"> The namespace is required when requesting the readme from package
    #   versions of the following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package version that contains the requested readme
    #   file.
    #
    # @option params [required, String] :package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #
    # @return [Types::GetPackageVersionReadmeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPackageVersionReadmeResult#format #format} => String
    #   * {Types::GetPackageVersionReadmeResult#namespace #namespace} => String
    #   * {Types::GetPackageVersionReadmeResult#package #package} => String
    #   * {Types::GetPackageVersionReadmeResult#version #version} => String
    #   * {Types::GetPackageVersionReadmeResult#version_revision #version_revision} => String
    #   * {Types::GetPackageVersionReadmeResult#readme #readme} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_package_version_readme({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.namespace #=> String
    #   resp.package #=> String
    #   resp.version #=> String
    #   resp.version_revision #=> String
    #   resp.readme #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetPackageVersionReadme AWS API Documentation
    #
    # @overload get_package_version_readme(params = {})
    # @param [Hash] params ({})
    def get_package_version_readme(params = {}, options = {})
      req = build_request(:get_package_version_readme, params)
      req.send_request(options)
    end

    # Returns the endpoint of a repository for a specific package format. A
    # repository has one endpoint for each package format:
    #
    # * `cargo`
    #
    # * `generic`
    #
    # * `maven`
    #
    # * `npm`
    #
    # * `nuget`
    #
    # * `pypi`
    #
    # * `ruby`
    #
    # * `swift`
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain that contains the repository. It does not include
    #   dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository.
    #
    # @option params [required, String] :format
    #   Returns which endpoint of a repository to return. A repository has one
    #   endpoint for each package format.
    #
    # @option params [String] :endpoint_type
    #   A string that specifies the type of endpoint.
    #
    # @return [Types::GetRepositoryEndpointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryEndpointResult#repository_endpoint #repository_endpoint} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_endpoint({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     endpoint_type: "dualstack", # accepts dualstack, ipv4
    #   })
    #
    # @example Response structure
    #
    #   resp.repository_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetRepositoryEndpoint AWS API Documentation
    #
    # @overload get_repository_endpoint(params = {})
    # @param [Hash] params ({})
    def get_repository_endpoint(params = {}, options = {})
      req = build_request(:get_repository_endpoint, params)
      req.send_request(options)
    end

    # Returns the resource policy that is set on a repository.
    #
    # @option params [required, String] :domain
    #   The name of the domain containing the repository whose associated
    #   resource policy is to be retrieved.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository whose associated resource policy is to be
    #   retrieved.
    #
    # @return [Types::GetRepositoryPermissionsPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRepositoryPermissionsPolicyResult#policy #policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_permissions_policy({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.resource_arn #=> String
    #   resp.policy.revision #=> String
    #   resp.policy.document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetRepositoryPermissionsPolicy AWS API Documentation
    #
    # @overload get_repository_permissions_policy(params = {})
    # @param [Hash] params ({})
    def get_repository_permissions_policy(params = {}, options = {})
      req = build_request(:get_repository_permissions_policy, params)
      req.send_request(options)
    end

    # Lists the repositories in the added repositories list of the specified
    # restriction type for a package group. For more information about
    # restriction types and added repository lists, see [Package group
    # origin controls][1] in the *CodeArtifact User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the package group from which to
    #   list allowed repositories.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :package_group
    #   The pattern of the package group from which to list allowed
    #   repositories.
    #
    # @option params [required, String] :origin_restriction_type
    #   The origin configuration restriction type of which to list allowed
    #   repositories.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListAllowedRepositoriesForGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAllowedRepositoriesForGroupResult#allowed_repositories #allowed_repositories} => Array&lt;String&gt;
    #   * {Types::ListAllowedRepositoriesForGroupResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_allowed_repositories_for_group({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     origin_restriction_type: "EXTERNAL_UPSTREAM", # required, accepts EXTERNAL_UPSTREAM, INTERNAL_UPSTREAM, PUBLISH
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.allowed_repositories #=> Array
    #   resp.allowed_repositories[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListAllowedRepositoriesForGroup AWS API Documentation
    #
    # @overload list_allowed_repositories_for_group(params = {})
    # @param [Hash] params ({})
    def list_allowed_repositories_for_group(params = {}, options = {})
      req = build_request(:list_allowed_repositories_for_group, params)
      req.send_request(options)
    end

    # Returns a list of packages associated with the requested package
    # group. For information package group association and matching, see
    # [Package group definition syntax and matching behavior][1] in the
    # *CodeArtifact User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the package group from which to
    #   list associated packages.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :package_group
    #   The pattern of the package group from which to list associated
    #   packages.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Boolean] :preview
    #   When this flag is included, `ListAssociatedPackages` will return a
    #   list of packages that would be associated with a package group, even
    #   if it does not exist.
    #
    # @return [Types::ListAssociatedPackagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedPackagesResult#packages #packages} => Array&lt;Types::AssociatedPackage&gt;
    #   * {Types::ListAssociatedPackagesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_packages({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     preview: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.packages #=> Array
    #   resp.packages[0].format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.packages[0].namespace #=> String
    #   resp.packages[0].package #=> String
    #   resp.packages[0].association_type #=> String, one of "STRONG", "WEAK"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListAssociatedPackages AWS API Documentation
    #
    # @overload list_associated_packages(params = {})
    # @param [Hash] params ({})
    def list_associated_packages(params = {}, options = {})
      req = build_request(:list_associated_packages, params)
      req.send_request(options)
    end

    # Returns a list of [DomainSummary][1] objects for all domains owned by
    # the Amazon Web Services account that makes this call. Each returned
    # `DomainSummary` object contains information about a domain.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListDomainsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResult#domains #domains} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domains #=> Array
    #   resp.domains[0].name #=> String
    #   resp.domains[0].owner #=> String
    #   resp.domains[0].arn #=> String
    #   resp.domains[0].status #=> String, one of "Active", "Deleted"
    #   resp.domains[0].created_time #=> Time
    #   resp.domains[0].encryption_key #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Returns a list of package groups in the requested domain.
    #
    # @option params [required, String] :domain
    #   The domain for which you want to list package groups.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :prefix
    #   A prefix for which to search package groups. When included,
    #   `ListPackageGroups` will return only package groups with patterns that
    #   match the prefix.
    #
    # @return [Types::ListPackageGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackageGroupsResult#package_groups #package_groups} => Array&lt;Types::PackageGroupSummary&gt;
    #   * {Types::ListPackageGroupsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_groups({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     prefix: "PackageGroupPatternPrefix",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_groups #=> Array
    #   resp.package_groups[0].arn #=> String
    #   resp.package_groups[0].pattern #=> String
    #   resp.package_groups[0].domain_name #=> String
    #   resp.package_groups[0].domain_owner #=> String
    #   resp.package_groups[0].created_time #=> Time
    #   resp.package_groups[0].contact_info #=> String
    #   resp.package_groups[0].description #=> String
    #   resp.package_groups[0].origin_configuration.restrictions #=> Hash
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].effective_mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.arn #=> String
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.pattern #=> String
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].repositories_count #=> Integer
    #   resp.package_groups[0].parent.arn #=> String
    #   resp.package_groups[0].parent.pattern #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageGroups AWS API Documentation
    #
    # @overload list_package_groups(params = {})
    # @param [Hash] params ({})
    def list_package_groups(params = {}, options = {})
      req = build_request(:list_package_groups, params)
      req.send_request(options)
    end

    # Returns a list of [AssetSummary][1] objects for assets in a package
    # version.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository associated with
    #   the package version assets.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the package that contains the
    #   requested package version assets.
    #
    # @option params [required, String] :format
    #   The format of the package that contains the requested package version
    #   assets.
    #
    # @option params [String] :namespace
    #   The namespace of the package version that contains the requested
    #   package version assets. The package component that specifies its
    #   namespace depends on its type. For example:
    #
    #   <note markdown="1"> The namespace is required requesting assets from package versions of
    #   the following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package that contains the requested package version
    #   assets.
    #
    # @option params [required, String] :package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListPackageVersionAssetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackageVersionAssetsResult#format #format} => String
    #   * {Types::ListPackageVersionAssetsResult#namespace #namespace} => String
    #   * {Types::ListPackageVersionAssetsResult#package #package} => String
    #   * {Types::ListPackageVersionAssetsResult#version #version} => String
    #   * {Types::ListPackageVersionAssetsResult#version_revision #version_revision} => String
    #   * {Types::ListPackageVersionAssetsResult#next_token #next_token} => String
    #   * {Types::ListPackageVersionAssetsResult#assets #assets} => Array&lt;Types::AssetSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_version_assets({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.namespace #=> String
    #   resp.package #=> String
    #   resp.version #=> String
    #   resp.version_revision #=> String
    #   resp.next_token #=> String
    #   resp.assets #=> Array
    #   resp.assets[0].name #=> String
    #   resp.assets[0].size #=> Integer
    #   resp.assets[0].hashes #=> Hash
    #   resp.assets[0].hashes["HashAlgorithm"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersionAssets AWS API Documentation
    #
    # @overload list_package_version_assets(params = {})
    # @param [Hash] params ({})
    def list_package_version_assets(params = {}, options = {})
      req = build_request(:list_package_version_assets, params)
      req.send_request(options)
    end

    # Returns the direct dependencies for a package version. The
    # dependencies are returned as [PackageDependency][1] objects.
    # CodeArtifact extracts the dependencies for a package version from the
    # metadata file for the package format (for example, the `package.json`
    # file for npm packages and the `pom.xml` file for Maven). Any package
    # version dependencies that are not listed in the configuration file are
    # not returned.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   requested package version dependencies.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the requested package
    #   version.
    #
    # @option params [required, String] :format
    #   The format of the package with the requested dependencies.
    #
    # @option params [String] :namespace
    #   The namespace of the package version with the requested dependencies.
    #   The package component that specifies its namespace depends on its
    #   type. For example:
    #
    #   <note markdown="1"> The namespace is required when listing dependencies from package
    #   versions of the following formats:
    #
    #    * Maven
    #
    #   ^
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    # @option params [required, String] :package
    #   The name of the package versions' package.
    #
    # @option params [required, String] :package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListPackageVersionDependenciesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackageVersionDependenciesResult#format #format} => String
    #   * {Types::ListPackageVersionDependenciesResult#namespace #namespace} => String
    #   * {Types::ListPackageVersionDependenciesResult#package #package} => String
    #   * {Types::ListPackageVersionDependenciesResult#version #version} => String
    #   * {Types::ListPackageVersionDependenciesResult#version_revision #version_revision} => String
    #   * {Types::ListPackageVersionDependenciesResult#next_token #next_token} => String
    #   * {Types::ListPackageVersionDependenciesResult#dependencies #dependencies} => Array&lt;Types::PackageDependency&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_version_dependencies({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.namespace #=> String
    #   resp.package #=> String
    #   resp.version #=> String
    #   resp.version_revision #=> String
    #   resp.next_token #=> String
    #   resp.dependencies #=> Array
    #   resp.dependencies[0].namespace #=> String
    #   resp.dependencies[0].package #=> String
    #   resp.dependencies[0].dependency_type #=> String
    #   resp.dependencies[0].version_requirement #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersionDependencies AWS API Documentation
    #
    # @overload list_package_version_dependencies(params = {})
    # @param [Hash] params ({})
    def list_package_version_dependencies(params = {}, options = {})
      req = build_request(:list_package_version_dependencies, params)
      req.send_request(options)
    end

    # Returns a list of [PackageVersionSummary][1] objects for package
    # versions in a repository that match the request parameters. Package
    # versions of all statuses will be returned by default when calling
    # `list-package-versions` with no `--status` parameter.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   requested package versions.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the requested package
    #   versions.
    #
    # @option params [required, String] :format
    #   The format of the package versions you want to list.
    #
    # @option params [String] :namespace
    #   The namespace of the package that contains the requested package
    #   versions. The package component that specifies its namespace depends
    #   on its type. For example:
    #
    #   <note markdown="1"> The namespace is required when deleting package versions of the
    #   following formats:
    #
    #    * Maven
    #
    #   * Swift
    #
    #   * generic
    #
    #    </note>
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package for which you want to request package
    #   versions.
    #
    # @option params [String] :status
    #   A string that filters the requested package versions by status.
    #
    # @option params [String] :sort_by
    #   How to sort the requested list of package versions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :origin_type
    #   The `originType` used to filter package versions. Only package
    #   versions with the provided `originType` will be returned.
    #
    # @return [Types::ListPackageVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackageVersionsResult#default_display_version #default_display_version} => String
    #   * {Types::ListPackageVersionsResult#format #format} => String
    #   * {Types::ListPackageVersionsResult#namespace #namespace} => String
    #   * {Types::ListPackageVersionsResult#package #package} => String
    #   * {Types::ListPackageVersionsResult#versions #versions} => Array&lt;Types::PackageVersionSummary&gt;
    #   * {Types::ListPackageVersionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_versions({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     status: "Published", # accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #     sort_by: "PUBLISHED_TIME", # accepts PUBLISHED_TIME
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     origin_type: "INTERNAL", # accepts INTERNAL, EXTERNAL, UNKNOWN
    #   })
    #
    # @example Response structure
    #
    #   resp.default_display_version #=> String
    #   resp.format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.namespace #=> String
    #   resp.package #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].version #=> String
    #   resp.versions[0].revision #=> String
    #   resp.versions[0].status #=> String, one of "Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"
    #   resp.versions[0].origin.domain_entry_point.repository_name #=> String
    #   resp.versions[0].origin.domain_entry_point.external_connection_name #=> String
    #   resp.versions[0].origin.origin_type #=> String, one of "INTERNAL", "EXTERNAL", "UNKNOWN"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersions AWS API Documentation
    #
    # @overload list_package_versions(params = {})
    # @param [Hash] params ({})
    def list_package_versions(params = {}, options = {})
      req = build_request(:list_package_versions, params)
      req.send_request(options)
    end

    # Returns a list of [PackageSummary][1] objects for packages in a
    # repository that match the request parameters.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   requested packages.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the requested packages.
    #
    # @option params [String] :format
    #   The format used to filter requested packages. Only packages from the
    #   provided format will be returned.
    #
    # @option params [String] :namespace
    #   The namespace prefix used to filter requested packages. Only packages
    #   with a namespace that starts with the provided string value are
    #   returned. Note that although this option is called `--namespace` and
    #   not `--namespace-prefix`, it has prefix-matching behavior.
    #
    #   Each package format uses namespace as follows:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [String] :package_prefix
    #   A prefix used to filter requested packages. Only packages with names
    #   that start with `packagePrefix` are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :publish
    #   The value of the `Publish` package origin control restriction used to
    #   filter requested packages. Only packages with the provided restriction
    #   are returned. For more information, see
    #   [PackageOriginRestrictions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html
    #
    # @option params [String] :upstream
    #   The value of the `Upstream` package origin control restriction used to
    #   filter requested packages. Only packages with the provided restriction
    #   are returned. For more information, see
    #   [PackageOriginRestrictions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html
    #
    # @return [Types::ListPackagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPackagesResult#packages #packages} => Array&lt;Types::PackageSummary&gt;
    #   * {Types::ListPackagesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packages({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package_prefix: "PackageName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     publish: "ALLOW", # accepts ALLOW, BLOCK
    #     upstream: "ALLOW", # accepts ALLOW, BLOCK
    #   })
    #
    # @example Response structure
    #
    #   resp.packages #=> Array
    #   resp.packages[0].format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.packages[0].namespace #=> String
    #   resp.packages[0].package #=> String
    #   resp.packages[0].origin_configuration.restrictions.publish #=> String, one of "ALLOW", "BLOCK"
    #   resp.packages[0].origin_configuration.restrictions.upstream #=> String, one of "ALLOW", "BLOCK"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackages AWS API Documentation
    #
    # @overload list_packages(params = {})
    # @param [Hash] params ({})
    def list_packages(params = {}, options = {})
      req = build_request(:list_packages, params)
      req.send_request(options)
    end

    # Returns a list of [RepositorySummary][1] objects. Each
    # `RepositorySummary` contains information about a repository in the
    # specified Amazon Web Services account and that matches the input
    # parameters.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html
    #
    # @option params [String] :repository_prefix
    #   A prefix used to filter returned repositories. Only repositories with
    #   names that start with `repositoryPrefix` are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListRepositoriesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoriesResult#repositories #repositories} => Array&lt;Types::RepositorySummary&gt;
    #   * {Types::ListRepositoriesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories({
    #     repository_prefix: "RepositoryName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.repositories #=> Array
    #   resp.repositories[0].name #=> String
    #   resp.repositories[0].administrator_account #=> String
    #   resp.repositories[0].domain_name #=> String
    #   resp.repositories[0].domain_owner #=> String
    #   resp.repositories[0].arn #=> String
    #   resp.repositories[0].description #=> String
    #   resp.repositories[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListRepositories AWS API Documentation
    #
    # @overload list_repositories(params = {})
    # @param [Hash] params ({})
    def list_repositories(params = {}, options = {})
      req = build_request(:list_repositories, params)
      req.send_request(options)
    end

    # Returns a list of [RepositorySummary][1] objects. Each
    # `RepositorySummary` contains information about a repository in the
    # specified domain and that matches the input parameters.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the returned list of
    #   repositories.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [String] :administrator_account
    #   Filter the list of repositories to only include those that are managed
    #   by the Amazon Web Services account ID.
    #
    # @option params [String] :repository_prefix
    #   A prefix used to filter returned repositories. Only repositories with
    #   names that start with `repositoryPrefix` are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListRepositoriesInDomainResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRepositoriesInDomainResult#repositories #repositories} => Array&lt;Types::RepositorySummary&gt;
    #   * {Types::ListRepositoriesInDomainResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories_in_domain({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     administrator_account: "AccountId",
    #     repository_prefix: "RepositoryName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.repositories #=> Array
    #   resp.repositories[0].name #=> String
    #   resp.repositories[0].administrator_account #=> String
    #   resp.repositories[0].domain_name #=> String
    #   resp.repositories[0].domain_owner #=> String
    #   resp.repositories[0].arn #=> String
    #   resp.repositories[0].description #=> String
    #   resp.repositories[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListRepositoriesInDomain AWS API Documentation
    #
    # @overload list_repositories_in_domain(params = {})
    # @param [Hash] params ({})
    def list_repositories_in_domain(params = {}, options = {})
      req = build_request(:list_repositories_in_domain, params)
      req.send_request(options)
    end

    # Returns a list of direct children of the specified package group.
    #
    # For information package group hierarchy, see [Package group definition
    # syntax and matching behavior][1] in the *CodeArtifact User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html
    #
    # @option params [required, String] :domain
    #   The name of the domain which contains the package group from which to
    #   list sub package groups.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :package_group
    #   The pattern of the package group from which to list sub package
    #   groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListSubPackageGroupsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubPackageGroupsResult#package_groups #package_groups} => Array&lt;Types::PackageGroupSummary&gt;
    #   * {Types::ListSubPackageGroupsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sub_package_groups({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_groups #=> Array
    #   resp.package_groups[0].arn #=> String
    #   resp.package_groups[0].pattern #=> String
    #   resp.package_groups[0].domain_name #=> String
    #   resp.package_groups[0].domain_owner #=> String
    #   resp.package_groups[0].created_time #=> Time
    #   resp.package_groups[0].contact_info #=> String
    #   resp.package_groups[0].description #=> String
    #   resp.package_groups[0].origin_configuration.restrictions #=> Hash
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].effective_mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.arn #=> String
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.pattern #=> String
    #   resp.package_groups[0].origin_configuration.restrictions["PackageGroupOriginRestrictionType"].repositories_count #=> Integer
    #   resp.package_groups[0].parent.arn #=> String
    #   resp.package_groups[0].parent.pattern #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListSubPackageGroups AWS API Documentation
    #
    # @overload list_sub_package_groups(params = {})
    # @param [Hash] params ({})
    def list_sub_package_groups(params = {}, options = {})
      req = build_request(:list_sub_package_groups, params)
      req.send_request(options)
    end

    # Gets information about Amazon Web Services tags for a specified Amazon
    # Resource Name (ARN) in CodeArtifact.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to get tags for.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#tags #tags} => Array&lt;Types::Tag&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates a new package version containing one or more assets (or
    # files).
    #
    # The `unfinished` flag can be used to keep the package version in the
    # `Unfinished` state until all of its assets have been uploaded (see
    # [Package version status][1] in the *CodeArtifact user guide*). To set
    # the package version’s status to `Published`, omit the `unfinished`
    # flag when uploading the final asset, or set the status using
    # [UpdatePackageVersionStatus][2]. Once a package version’s status is
    # set to `Published`, it cannot change back to `Unfinished`.
    #
    # <note markdown="1"> Only generic packages can be published using this API. For more
    # information, see [Using generic packages][3] in the *CodeArtifact User
    # Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status
    # [2]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html
    # [3]: https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   package version to publish.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that the package version will be published
    #   to.
    #
    # @option params [required, String] :format
    #   A format that specifies the type of the package version with the
    #   requested asset file.
    #
    #   The only supported value is `generic`.
    #
    # @option params [String] :namespace
    #   The namespace of the package version to publish.
    #
    # @option params [required, String] :package
    #   The name of the package version to publish.
    #
    # @option params [required, String] :package_version
    #   The package version to publish (for example, `3.5.2`).
    #
    # @option params [required, String, StringIO, File] :asset_content
    #   The content of the asset to publish.
    #
    # @option params [required, String] :asset_name
    #   The name of the asset to publish. Asset names can include Unicode
    #   letters and numbers, and the following special characters: `` ~ ! @ ^
    #   & ( ) - ` _ + [ ] { } ; , . ` ``
    #
    # @option params [required, String] :asset_sha256
    #   The SHA256 hash of the `assetContent` to publish. This value must be
    #   calculated by the caller and provided with the request (see
    #   [Publishing a generic package][1] in the *CodeArtifact User Guide*).
    #
    #   This value is used as an integrity check to verify that the
    #   `assetContent` has not changed after it was originally sent.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html#publishing-generic-packages
    #
    # @option params [Boolean] :unfinished
    #   Specifies whether the package version should remain in the
    #   `unfinished` state. If omitted, the package version status will be set
    #   to `Published` (see [Package version status][1] in the *CodeArtifact
    #   User Guide*).
    #
    #   Valid values: `unfinished`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status
    #
    # @return [Types::PublishPackageVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishPackageVersionResult#format #format} => String
    #   * {Types::PublishPackageVersionResult#namespace #namespace} => String
    #   * {Types::PublishPackageVersionResult#package #package} => String
    #   * {Types::PublishPackageVersionResult#version #version} => String
    #   * {Types::PublishPackageVersionResult#version_revision #version_revision} => String
    #   * {Types::PublishPackageVersionResult#status #status} => String
    #   * {Types::PublishPackageVersionResult#asset #asset} => Types::AssetSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_package_version({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #     asset_content: "data", # required
    #     asset_name: "AssetName", # required
    #     asset_sha256: "SHA256", # required
    #     unfinished: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.namespace #=> String
    #   resp.package #=> String
    #   resp.version #=> String
    #   resp.version_revision #=> String
    #   resp.status #=> String, one of "Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"
    #   resp.asset.name #=> String
    #   resp.asset.size #=> Integer
    #   resp.asset.hashes #=> Hash
    #   resp.asset.hashes["HashAlgorithm"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PublishPackageVersion AWS API Documentation
    #
    # @overload publish_package_version(params = {})
    # @param [Hash] params ({})
    def publish_package_version(params = {}, options = {})
      req = build_request(:publish_package_version, params)
      req.send_request(options)
    end

    # Sets a resource policy on a domain that specifies permissions to
    # access it.
    #
    # When you call `PutDomainPermissionsPolicy`, the resource policy on the
    # domain is ignored when evaluting permissions. This ensures that the
    # owner of a domain cannot lock themselves out of the domain, which
    # would prevent them from being able to update the resource policy.
    #
    # @option params [required, String] :domain
    #   The name of the domain on which to set the resource policy.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [String] :policy_revision
    #   The current revision of the resource policy to be set. This revision
    #   is used for optimistic locking, which prevents others from overwriting
    #   your changes to the domain's resource policy.
    #
    # @option params [required, String] :policy_document
    #   A valid displayable JSON Aspen policy string to be set as the access
    #   control resource policy on the provided domain.
    #
    # @return [Types::PutDomainPermissionsPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDomainPermissionsPolicyResult#policy #policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_domain_permissions_policy({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     policy_revision: "PolicyRevision",
    #     policy_document: "PolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.resource_arn #=> String
    #   resp.policy.revision #=> String
    #   resp.policy.document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutDomainPermissionsPolicy AWS API Documentation
    #
    # @overload put_domain_permissions_policy(params = {})
    # @param [Hash] params ({})
    def put_domain_permissions_policy(params = {}, options = {})
      req = build_request(:put_domain_permissions_policy, params)
      req.send_request(options)
    end

    # Sets the package origin configuration for a package.
    #
    # The package origin configuration determines how new versions of a
    # package can be added to a repository. You can allow or block direct
    # publishing of new package versions, or ingestion and retaining of new
    # package versions from an external connection or upstream source. For
    # more information about package origin controls and configuration, see
    # [Editing package origin controls][1] in the *CodeArtifact User Guide*.
    #
    # `PutPackageOriginConfiguration` can be called on a package that
    # doesn't yet exist in the repository. When called on a package that
    # does not exist, a package is created in the repository with no
    # versions and the requested restrictions are set on the package. This
    # can be used to preemptively block ingesting or retaining any versions
    # from external connections or upstream repositories, or to block
    # publishing any versions of the package into the repository before
    # connecting any package managers or publishers to the repository.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/package-origin-controls.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   package.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository that contains the package.
    #
    # @option params [required, String] :format
    #   A format that specifies the type of the package to be updated.
    #
    # @option params [String] :namespace
    #   The namespace of the package to be updated. The package component that
    #   specifies its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package to be updated.
    #
    # @option params [required, Types::PackageOriginRestrictions] :restrictions
    #   A [PackageOriginRestrictions][1] object that contains information
    #   about the `upstream` and `publish` package origin restrictions. The
    #   `upstream` restriction determines if new package versions can be
    #   ingested or retained from external connections or upstream
    #   repositories. The `publish` restriction determines if new package
    #   versions can be published directly to the repository.
    #
    #   You must include both the desired `upstream` and `publish`
    #   restrictions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html
    #
    # @return [Types::PutPackageOriginConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutPackageOriginConfigurationResult#origin_configuration #origin_configuration} => Types::PackageOriginConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_package_origin_configuration({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     restrictions: { # required
    #       publish: "ALLOW", # required, accepts ALLOW, BLOCK
    #       upstream: "ALLOW", # required, accepts ALLOW, BLOCK
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.origin_configuration.restrictions.publish #=> String, one of "ALLOW", "BLOCK"
    #   resp.origin_configuration.restrictions.upstream #=> String, one of "ALLOW", "BLOCK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutPackageOriginConfiguration AWS API Documentation
    #
    # @overload put_package_origin_configuration(params = {})
    # @param [Hash] params ({})
    def put_package_origin_configuration(params = {}, options = {})
      req = build_request(:put_package_origin_configuration, params)
      req.send_request(options)
    end

    # Sets the resource policy on a repository that specifies permissions to
    # access it.
    #
    # When you call `PutRepositoryPermissionsPolicy`, the resource policy on
    # the repository is ignored when evaluting permissions. This ensures
    # that the owner of a repository cannot lock themselves out of the
    # repository, which would prevent them from being able to update the
    # resource policy.
    #
    # @option params [required, String] :domain
    #   The name of the domain containing the repository to set the resource
    #   policy on.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository to set the resource policy on.
    #
    # @option params [String] :policy_revision
    #   Sets the revision of the resource policy that specifies permissions to
    #   access the repository. This revision is used for optimistic locking,
    #   which prevents others from overwriting your changes to the
    #   repository's resource policy.
    #
    # @option params [required, String] :policy_document
    #   A valid displayable JSON Aspen policy string to be set as the access
    #   control resource policy on the provided repository.
    #
    # @return [Types::PutRepositoryPermissionsPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRepositoryPermissionsPolicyResult#policy #policy} => Types::ResourcePolicy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_repository_permissions_policy({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     policy_revision: "PolicyRevision",
    #     policy_document: "PolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.resource_arn #=> String
    #   resp.policy.revision #=> String
    #   resp.policy.document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutRepositoryPermissionsPolicy AWS API Documentation
    #
    # @overload put_repository_permissions_policy(params = {})
    # @param [Hash] params ({})
    def put_repository_permissions_policy(params = {}, options = {})
      req = build_request(:put_repository_permissions_policy, params)
      req.send_request(options)
    end

    # Adds or updates tags for a resource in CodeArtifact.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add or
    #   update tags for.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags you want to modify or add to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource in CodeArtifact.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag key for each tag that you want to remove from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a package group. This API cannot be used to update a package
    # group's origin configuration or pattern. To update a package group's
    # origin configuration, use [UpdatePackageGroupOriginConfiguration][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageGroupOriginConfiguration.html
    #
    # @option params [required, String] :domain
    #   The name of the domain which contains the package group to be updated.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :package_group
    #   The pattern of the package group to be updated.
    #
    # @option params [String] :contact_info
    #   Contact information which you want to update the requested package
    #   group with.
    #
    # @option params [String] :description
    #   The description you want to update the requested package group with.
    #
    # @return [Types::UpdatePackageGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePackageGroupResult#package_group #package_group} => Types::PackageGroupDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package_group({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     contact_info: "PackageGroupContactInfo",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.package_group.arn #=> String
    #   resp.package_group.pattern #=> String
    #   resp.package_group.domain_name #=> String
    #   resp.package_group.domain_owner #=> String
    #   resp.package_group.created_time #=> Time
    #   resp.package_group.contact_info #=> String
    #   resp.package_group.description #=> String
    #   resp.package_group.origin_configuration.restrictions #=> Hash
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].effective_mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.arn #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.pattern #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].repositories_count #=> Integer
    #   resp.package_group.parent.arn #=> String
    #   resp.package_group.parent.pattern #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpdatePackageGroup AWS API Documentation
    #
    # @overload update_package_group(params = {})
    # @param [Hash] params ({})
    def update_package_group(params = {}, options = {})
      req = build_request(:update_package_group, params)
      req.send_request(options)
    end

    # Updates the package origin configuration for a package group.
    #
    # The package origin configuration determines how new versions of a
    # package can be added to a repository. You can allow or block direct
    # publishing of new package versions, or ingestion and retaining of new
    # package versions from an external connection or upstream source. For
    # more information about package group origin controls and
    # configuration, see [Package group origin controls][1] in the
    # *CodeArtifact User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html
    #
    # @option params [required, String] :domain
    #   The name of the domain which contains the package group for which to
    #   update the origin configuration.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :package_group
    #   The pattern of the package group for which to update the origin
    #   configuration.
    #
    # @option params [Hash<String,String>] :restrictions
    #   The origin configuration settings that determine how package versions
    #   can enter repositories.
    #
    # @option params [Array<Types::PackageGroupAllowedRepository>] :add_allowed_repositories
    #   The repository name and restrictions to add to the allowed repository
    #   list of the specified package group.
    #
    # @option params [Array<Types::PackageGroupAllowedRepository>] :remove_allowed_repositories
    #   The repository name and restrictions to remove from the allowed
    #   repository list of the specified package group.
    #
    # @return [Types::UpdatePackageGroupOriginConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePackageGroupOriginConfigurationResult#package_group #package_group} => Types::PackageGroupDescription
    #   * {Types::UpdatePackageGroupOriginConfigurationResult#allowed_repository_updates #allowed_repository_updates} => Hash&lt;String,Hash&lt;String,Array&lt;String&gt;&gt;&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package_group_origin_configuration({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     restrictions: {
    #       "EXTERNAL_UPSTREAM" => "ALLOW", # accepts ALLOW, ALLOW_SPECIFIC_REPOSITORIES, BLOCK, INHERIT
    #     },
    #     add_allowed_repositories: [
    #       {
    #         repository_name: "RepositoryName",
    #         origin_restriction_type: "EXTERNAL_UPSTREAM", # accepts EXTERNAL_UPSTREAM, INTERNAL_UPSTREAM, PUBLISH
    #       },
    #     ],
    #     remove_allowed_repositories: [
    #       {
    #         repository_name: "RepositoryName",
    #         origin_restriction_type: "EXTERNAL_UPSTREAM", # accepts EXTERNAL_UPSTREAM, INTERNAL_UPSTREAM, PUBLISH
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.package_group.arn #=> String
    #   resp.package_group.pattern #=> String
    #   resp.package_group.domain_name #=> String
    #   resp.package_group.domain_owner #=> String
    #   resp.package_group.created_time #=> Time
    #   resp.package_group.contact_info #=> String
    #   resp.package_group.description #=> String
    #   resp.package_group.origin_configuration.restrictions #=> Hash
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].effective_mode #=> String, one of "ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.arn #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].inherited_from.pattern #=> String
    #   resp.package_group.origin_configuration.restrictions["PackageGroupOriginRestrictionType"].repositories_count #=> Integer
    #   resp.package_group.parent.arn #=> String
    #   resp.package_group.parent.pattern #=> String
    #   resp.allowed_repository_updates #=> Hash
    #   resp.allowed_repository_updates["PackageGroupOriginRestrictionType"] #=> Hash
    #   resp.allowed_repository_updates["PackageGroupOriginRestrictionType"]["PackageGroupAllowedRepositoryUpdateType"] #=> Array
    #   resp.allowed_repository_updates["PackageGroupOriginRestrictionType"]["PackageGroupAllowedRepositoryUpdateType"][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpdatePackageGroupOriginConfiguration AWS API Documentation
    #
    # @overload update_package_group_origin_configuration(params = {})
    # @param [Hash] params ({})
    def update_package_group_origin_configuration(params = {}, options = {})
      req = build_request(:update_package_group_origin_configuration, params)
      req.send_request(options)
    end

    # Updates the status of one or more versions of a package. Using
    # `UpdatePackageVersionsStatus`, you can update the status of package
    # versions to `Archived`, `Published`, or `Unlisted`. To set the status
    # of a package version to `Disposed`, use [DisposePackageVersions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DisposePackageVersions.html
    #
    # @option params [required, String] :domain
    #   The name of the domain that contains the repository that contains the
    #   package versions with a status to be updated.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The repository that contains the package versions with the status you
    #   want to update.
    #
    # @option params [required, String] :format
    #   A format that specifies the type of the package with the statuses to
    #   update.
    #
    # @option params [String] :namespace
    #   The namespace of the package version to be updated. The package
    #   component that specifies its namespace depends on its type. For
    #   example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm or Swift package version is its `scope`.
    #
    #   * The namespace of a generic package is its `namespace`.
    #
    #   * Python, NuGet, Ruby, and Cargo package versions do not contain a
    #     corresponding component, package versions of those formats do not
    #     have a namespace.
    #
    # @option params [required, String] :package
    #   The name of the package with the version statuses to update.
    #
    # @option params [required, Array<String>] :versions
    #   An array of strings that specify the versions of the package with the
    #   statuses to update.
    #
    # @option params [Hash<String,String>] :version_revisions
    #   A map of package versions and package version revisions. The map `key`
    #   is the package version (for example, `3.5.2`), and the map `value` is
    #   the package version revision.
    #
    # @option params [String] :expected_status
    #   The package version’s expected status before it is updated. If
    #   `expectedStatus` is provided, the package version's status is updated
    #   only if its status at the time `UpdatePackageVersionsStatus` is called
    #   matches `expectedStatus`.
    #
    # @option params [required, String] :target_status
    #   The status you want to change the package version status to.
    #
    # @return [Types::UpdatePackageVersionsStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePackageVersionsStatusResult#successful_versions #successful_versions} => Hash&lt;String,Types::SuccessfulPackageVersionInfo&gt;
    #   * {Types::UpdatePackageVersionsStatusResult#failed_versions #failed_versions} => Hash&lt;String,Types::PackageVersionError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_package_versions_status({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm", # required, accepts npm, pypi, maven, nuget, generic, ruby, swift, cargo
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     versions: ["PackageVersion"], # required
    #     version_revisions: {
    #       "PackageVersion" => "PackageVersionRevision",
    #     },
    #     expected_status: "Published", # accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #     target_status: "Published", # required, accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_versions #=> Hash
    #   resp.successful_versions["PackageVersion"].revision #=> String
    #   resp.successful_versions["PackageVersion"].status #=> String, one of "Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"
    #   resp.failed_versions #=> Hash
    #   resp.failed_versions["PackageVersion"].error_code #=> String, one of "ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"
    #   resp.failed_versions["PackageVersion"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpdatePackageVersionsStatus AWS API Documentation
    #
    # @overload update_package_versions_status(params = {})
    # @param [Hash] params ({})
    def update_package_versions_status(params = {}, options = {})
      req = build_request(:update_package_versions_status, params)
      req.send_request(options)
    end

    # Update the properties of a repository.
    #
    # @option params [required, String] :domain
    #   The name of the domain associated with the repository to update.
    #
    # @option params [String] :domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #
    # @option params [required, String] :repository
    #   The name of the repository to update.
    #
    # @option params [String] :description
    #   An updated repository description.
    #
    # @option params [Array<Types::UpstreamRepository>] :upstreams
    #   A list of upstream repositories to associate with the repository. The
    #   order of the upstream repositories in the list determines their
    #   priority order when CodeArtifact looks for a requested package
    #   version. For more information, see [Working with upstream
    #   repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html
    #
    # @return [Types::UpdateRepositoryResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRepositoryResult#repository #repository} => Types::RepositoryDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_repository({
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     description: "Description",
    #     upstreams: [
    #       {
    #         repository_name: "RepositoryName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.repository.name #=> String
    #   resp.repository.administrator_account #=> String
    #   resp.repository.domain_name #=> String
    #   resp.repository.domain_owner #=> String
    #   resp.repository.arn #=> String
    #   resp.repository.description #=> String
    #   resp.repository.upstreams #=> Array
    #   resp.repository.upstreams[0].repository_name #=> String
    #   resp.repository.external_connections #=> Array
    #   resp.repository.external_connections[0].external_connection_name #=> String
    #   resp.repository.external_connections[0].package_format #=> String, one of "npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"
    #   resp.repository.external_connections[0].status #=> String, one of "Available"
    #   resp.repository.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpdateRepository AWS API Documentation
    #
    # @overload update_repository(params = {})
    # @param [Hash] params ({})
    def update_repository(params = {}, options = {})
      req = build_request(:update_repository, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CodeArtifact')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-codeartifact'
      context[:gem_version] = '1.63.0'
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
