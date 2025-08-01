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

module Aws::Amplify
  # An API client for Amplify.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Amplify::Client.new(
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

    @identifier = :amplify

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
    add_plugin(Aws::Amplify::Plugins::Endpoints)

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
    #   @option options [Aws::Amplify::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Amplify::EndpointParameters`.
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

    # Creates a new Amplify app.
    #
    # @option params [required, String] :name
    #   The name of the Amplify app.
    #
    # @option params [String] :description
    #   The description of the Amplify app.
    #
    # @option params [String] :repository
    #   The Git repository for the Amplify app.
    #
    # @option params [String] :platform
    #   The platform for the Amplify app. For a static app, set the platform
    #   type to `WEB`. For a dynamic server-side rendered (SSR) app, set the
    #   platform type to `WEB_COMPUTE`. For an app requiring Amplify
    #   Hosting's original SSR support only, set the platform type to
    #   `WEB_DYNAMIC`.
    #
    #   If you are deploying an SSG only app with Next.js version 14 or later,
    #   you must set the platform type to `WEB_COMPUTE` and set the artifacts
    #   `baseDirectory` to `.next` in the application's build settings. For
    #   an example of the build specification settings, see [Amplify build
    #   settings for a Next.js 14 SSG application][1] in the *Amplify Hosting
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/deploy-nextjs-app.html#build-setting-detection-ssg-14
    #
    # @option params [String] :compute_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to assign to an SSR
    #   app. The SSR Compute role allows the Amplify Hosting compute service
    #   to securely access specific Amazon Web Services resources based on the
    #   role's permissions. For more information about the SSR Compute role,
    #   see [Adding an SSR Compute role][1] in the *Amplify User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html
    #
    # @option params [String] :iam_service_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role for the Amplify
    #   app.
    #
    # @option params [String] :oauth_token
    #   The OAuth token for a third-party source control system for an Amplify
    #   app. The OAuth token is used to create a webhook and a read-only
    #   deploy key using SSH cloning. The OAuth token is not stored.
    #
    #   Use `oauthToken` for repository providers other than GitHub, such as
    #   Bitbucket or CodeCommit. To authorize access to GitHub as your
    #   repository provider, use `accessToken`.
    #
    #   You must specify either `oauthToken` or `accessToken` when you create
    #   a new app.
    #
    #   Existing Amplify apps deployed from a GitHub repository using OAuth
    #   continue to work with CI/CD. However, we strongly recommend that you
    #   migrate these apps to use the GitHub App. For more information, see
    #   [Migrating an existing OAuth app to the Amplify GitHub App][1] in the
    #   *Amplify User Guide* .
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth
    #
    # @option params [String] :access_token
    #   The personal access token for a GitHub repository for an Amplify app.
    #   The personal access token is used to authorize access to a GitHub
    #   repository using the Amplify GitHub App. The token is not stored.
    #
    #   Use `accessToken` for GitHub repositories only. To authorize access to
    #   a repository provider such as Bitbucket or CodeCommit, use
    #   `oauthToken`.
    #
    #   You must specify either `accessToken` or `oauthToken` when you create
    #   a new app.
    #
    #   Existing Amplify apps deployed from a GitHub repository using OAuth
    #   continue to work with CI/CD. However, we strongly recommend that you
    #   migrate these apps to use the GitHub App. For more information, see
    #   [Migrating an existing OAuth app to the Amplify GitHub App][1] in the
    #   *Amplify User Guide* .
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth
    #
    # @option params [Hash<String,String>] :environment_variables
    #   The environment variables map for an Amplify app.
    #
    #   For a list of the environment variables that are accessible to Amplify
    #   by default, see [Amplify Environment variables][1] in the *Amplify
    #   Hosting User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/amplify-console-environment-variables.html
    #
    # @option params [Boolean] :enable_branch_auto_build
    #   Enables the auto building of branches for an Amplify app.
    #
    # @option params [Boolean] :enable_branch_auto_deletion
    #   Automatically disconnects a branch in the Amplify console when you
    #   delete a branch from your Git repository.
    #
    # @option params [Boolean] :enable_basic_auth
    #   Enables basic authorization for an Amplify app. This will apply to all
    #   branches that are part of this app.
    #
    # @option params [String] :basic_auth_credentials
    #   The credentials for basic authorization for an Amplify app. You must
    #   base64-encode the authorization credentials and provide them in the
    #   format `user:password`.
    #
    # @option params [Array<Types::CustomRule>] :custom_rules
    #   The custom rewrite and redirect rules for an Amplify app.
    #
    # @option params [Hash<String,String>] :tags
    #   The tag for an Amplify app.
    #
    # @option params [String] :build_spec
    #   The build specification (build spec) for an Amplify app.
    #
    # @option params [String] :custom_headers
    #   The custom HTTP headers for an Amplify app.
    #
    # @option params [Boolean] :enable_auto_branch_creation
    #   Enables automated branch creation for an Amplify app.
    #
    # @option params [Array<String>] :auto_branch_creation_patterns
    #   The automated branch creation glob patterns for an Amplify app.
    #
    # @option params [Types::AutoBranchCreationConfig] :auto_branch_creation_config
    #   The automated branch creation configuration for an Amplify app.
    #
    # @option params [Types::JobConfig] :job_config
    #   Describes the configuration details that apply to the jobs for an
    #   Amplify app.
    #
    # @option params [Types::CacheConfig] :cache_config
    #   The cache configuration for the Amplify app.
    #
    # @return [Types::CreateAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppResult#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app({
    #     name: "Name", # required
    #     description: "Description",
    #     repository: "Repository",
    #     platform: "WEB", # accepts WEB, WEB_DYNAMIC, WEB_COMPUTE
    #     compute_role_arn: "ComputeRoleArn",
    #     iam_service_role_arn: "ServiceRoleArn",
    #     oauth_token: "OauthToken",
    #     access_token: "AccessToken",
    #     environment_variables: {
    #       "EnvKey" => "EnvValue",
    #     },
    #     enable_branch_auto_build: false,
    #     enable_branch_auto_deletion: false,
    #     enable_basic_auth: false,
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     custom_rules: [
    #       {
    #         source: "Source", # required
    #         target: "Target", # required
    #         status: "Status",
    #         condition: "Condition",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     build_spec: "BuildSpec",
    #     custom_headers: "CustomHeaders",
    #     enable_auto_branch_creation: false,
    #     auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #     auto_branch_creation_config: {
    #       stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #       framework: "Framework",
    #       enable_auto_build: false,
    #       environment_variables: {
    #         "EnvKey" => "EnvValue",
    #       },
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       enable_basic_auth: false,
    #       enable_performance_mode: false,
    #       build_spec: "BuildSpec",
    #       enable_pull_request_preview: false,
    #       pull_request_environment_name: "PullRequestEnvironmentName",
    #     },
    #     job_config: {
    #       build_compute_type: "STANDARD_8GB", # required, accepts STANDARD_8GB, LARGE_16GB, XLARGE_72GB
    #     },
    #     cache_config: {
    #       type: "AMPLIFY_MANAGED", # required, accepts AMPLIFY_MANAGED, AMPLIFY_MANAGED_NO_COOKIES
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_id #=> String
    #   resp.app.app_arn #=> String
    #   resp.app.name #=> String
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #   resp.app.description #=> String
    #   resp.app.repository #=> String
    #   resp.app.platform #=> String, one of "WEB", "WEB_DYNAMIC", "WEB_COMPUTE"
    #   resp.app.create_time #=> Time
    #   resp.app.update_time #=> Time
    #   resp.app.compute_role_arn #=> String
    #   resp.app.iam_service_role_arn #=> String
    #   resp.app.environment_variables #=> Hash
    #   resp.app.environment_variables["EnvKey"] #=> String
    #   resp.app.default_domain #=> String
    #   resp.app.enable_branch_auto_build #=> Boolean
    #   resp.app.enable_branch_auto_deletion #=> Boolean
    #   resp.app.enable_basic_auth #=> Boolean
    #   resp.app.basic_auth_credentials #=> String
    #   resp.app.custom_rules #=> Array
    #   resp.app.custom_rules[0].source #=> String
    #   resp.app.custom_rules[0].target #=> String
    #   resp.app.custom_rules[0].status #=> String
    #   resp.app.custom_rules[0].condition #=> String
    #   resp.app.production_branch.last_deploy_time #=> Time
    #   resp.app.production_branch.status #=> String
    #   resp.app.production_branch.thumbnail_url #=> String
    #   resp.app.production_branch.branch_name #=> String
    #   resp.app.build_spec #=> String
    #   resp.app.custom_headers #=> String
    #   resp.app.enable_auto_branch_creation #=> Boolean
    #   resp.app.auto_branch_creation_patterns #=> Array
    #   resp.app.auto_branch_creation_patterns[0] #=> String
    #   resp.app.auto_branch_creation_config.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.app.auto_branch_creation_config.framework #=> String
    #   resp.app.auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.app.auto_branch_creation_config.environment_variables #=> Hash
    #   resp.app.auto_branch_creation_config.environment_variables["EnvKey"] #=> String
    #   resp.app.auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.app.auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.app.auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.app.auto_branch_creation_config.build_spec #=> String
    #   resp.app.auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.app.auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.app.repository_clone_method #=> String, one of "SSH", "TOKEN", "SIGV4"
    #   resp.app.cache_config.type #=> String, one of "AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"
    #   resp.app.webhook_create_time #=> Time
    #   resp.app.waf_configuration.web_acl_arn #=> String
    #   resp.app.waf_configuration.waf_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"
    #   resp.app.waf_configuration.status_reason #=> String
    #   resp.app.job_config.build_compute_type #=> String, one of "STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateApp AWS API Documentation
    #
    # @overload create_app(params = {})
    # @param [Hash] params ({})
    def create_app(params = {}, options = {})
      req = build_request(:create_app, params)
      req.send_request(options)
    end

    # Creates a new backend environment for an Amplify app.
    #
    # This API is available only to Amplify Gen 1 applications where the
    # backend is created using Amplify Studio or the Amplify command line
    # interface (CLI). This API isn’t available to Amplify Gen 2
    # applications. When you deploy an application with Amplify Gen 2, you
    # provision the app's backend infrastructure using Typescript code.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name for the backend environment.
    #
    # @option params [String] :stack_name
    #   The AWS CloudFormation stack name of a backend environment.
    #
    # @option params [String] :deployment_artifacts
    #   The name of deployment artifacts.
    #
    # @return [Types::CreateBackendEnvironmentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBackendEnvironmentResult#backend_environment #backend_environment} => Types::BackendEnvironment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_environment({
    #     app_id: "AppId", # required
    #     environment_name: "EnvironmentName", # required
    #     stack_name: "StackName",
    #     deployment_artifacts: "DeploymentArtifacts",
    #   })
    #
    # @example Response structure
    #
    #   resp.backend_environment.backend_environment_arn #=> String
    #   resp.backend_environment.environment_name #=> String
    #   resp.backend_environment.stack_name #=> String
    #   resp.backend_environment.deployment_artifacts #=> String
    #   resp.backend_environment.create_time #=> Time
    #   resp.backend_environment.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateBackendEnvironment AWS API Documentation
    #
    # @overload create_backend_environment(params = {})
    # @param [Hash] params ({})
    def create_backend_environment(params = {}, options = {})
      req = build_request(:create_backend_environment, params)
      req.send_request(options)
    end

    # Creates a new branch for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name for the branch.
    #
    # @option params [String] :description
    #   The description for the branch.
    #
    # @option params [String] :stage
    #   Describes the current stage for the branch.
    #
    # @option params [String] :framework
    #   The framework for the branch.
    #
    # @option params [Boolean] :enable_notification
    #   Enables notifications for the branch.
    #
    # @option params [Boolean] :enable_auto_build
    #   Enables auto building for the branch.
    #
    # @option params [Boolean] :enable_skew_protection
    #   Specifies whether the skew protection feature is enabled for the
    #   branch.
    #
    #   Deployment skew protection is available to Amplify applications to
    #   eliminate version skew issues between client and servers in web
    #   applications. When you apply skew protection to a branch, you can
    #   ensure that your clients always interact with the correct version of
    #   server-side assets, regardless of when a deployment occurs. For more
    #   information about skew protection, see [Skew protection for Amplify
    #   deployments][1] in the *Amplify User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html
    #
    # @option params [Hash<String,String>] :environment_variables
    #   The environment variables for the branch.
    #
    # @option params [String] :basic_auth_credentials
    #   The basic authorization credentials for the branch. You must
    #   base64-encode the authorization credentials and provide them in the
    #   format `user:password`.
    #
    # @option params [Boolean] :enable_basic_auth
    #   Enables basic authorization for the branch.
    #
    # @option params [Boolean] :enable_performance_mode
    #   Enables performance mode for the branch.
    #
    #   Performance mode optimizes for faster hosting performance by keeping
    #   content cached at the edge for a longer interval. When performance
    #   mode is enabled, hosting configuration or code changes can take up to
    #   10 minutes to roll out.
    #
    # @option params [Hash<String,String>] :tags
    #   The tag for the branch.
    #
    # @option params [String] :build_spec
    #   The build specification (build spec) for the branch.
    #
    # @option params [String] :ttl
    #   The content Time To Live (TTL) for the website in seconds.
    #
    # @option params [String] :display_name
    #   The display name for a branch. This is used as the default domain
    #   prefix.
    #
    # @option params [Boolean] :enable_pull_request_preview
    #   Enables pull request previews for this branch.
    #
    # @option params [String] :pull_request_environment_name
    #   The Amplify environment name for the pull request.
    #
    # @option params [String] :backend_environment_arn
    #   The Amazon Resource Name (ARN) for a backend environment that is part
    #   of a Gen 1 Amplify app.
    #
    #   This field is available to Amplify Gen 1 apps only where the backend
    #   is created using Amplify Studio or the Amplify command line interface
    #   (CLI).
    #
    # @option params [Types::Backend] :backend
    #   The backend for a `Branch` of an Amplify app. Use for a backend
    #   created from an CloudFormation stack.
    #
    #   This field is available to Amplify Gen 2 apps only. When you deploy an
    #   application with Amplify Gen 2, you provision the app's backend
    #   infrastructure using Typescript code.
    #
    # @option params [String] :compute_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to assign to a branch
    #   of an SSR app. The SSR Compute role allows the Amplify Hosting compute
    #   service to securely access specific Amazon Web Services resources
    #   based on the role's permissions. For more information about the SSR
    #   Compute role, see [Adding an SSR Compute role][1] in the *Amplify User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html
    #
    # @return [Types::CreateBranchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBranchResult#branch #branch} => Types::Branch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_branch({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     description: "Description",
    #     stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #     framework: "Framework",
    #     enable_notification: false,
    #     enable_auto_build: false,
    #     enable_skew_protection: false,
    #     environment_variables: {
    #       "EnvKey" => "EnvValue",
    #     },
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     enable_basic_auth: false,
    #     enable_performance_mode: false,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     build_spec: "BuildSpec",
    #     ttl: "TTL",
    #     display_name: "DisplayName",
    #     enable_pull_request_preview: false,
    #     pull_request_environment_name: "PullRequestEnvironmentName",
    #     backend_environment_arn: "BackendEnvironmentArn",
    #     backend: {
    #       stack_arn: "StackArn",
    #     },
    #     compute_role_arn: "ComputeRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_arn #=> String
    #   resp.branch.branch_name #=> String
    #   resp.branch.description #=> String
    #   resp.branch.tags #=> Hash
    #   resp.branch.tags["TagKey"] #=> String
    #   resp.branch.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.branch.display_name #=> String
    #   resp.branch.enable_notification #=> Boolean
    #   resp.branch.create_time #=> Time
    #   resp.branch.update_time #=> Time
    #   resp.branch.environment_variables #=> Hash
    #   resp.branch.environment_variables["EnvKey"] #=> String
    #   resp.branch.enable_auto_build #=> Boolean
    #   resp.branch.enable_skew_protection #=> Boolean
    #   resp.branch.custom_domains #=> Array
    #   resp.branch.custom_domains[0] #=> String
    #   resp.branch.framework #=> String
    #   resp.branch.active_job_id #=> String
    #   resp.branch.total_number_of_jobs #=> String
    #   resp.branch.enable_basic_auth #=> Boolean
    #   resp.branch.enable_performance_mode #=> Boolean
    #   resp.branch.thumbnail_url #=> String
    #   resp.branch.basic_auth_credentials #=> String
    #   resp.branch.build_spec #=> String
    #   resp.branch.ttl #=> String
    #   resp.branch.associated_resources #=> Array
    #   resp.branch.associated_resources[0] #=> String
    #   resp.branch.enable_pull_request_preview #=> Boolean
    #   resp.branch.pull_request_environment_name #=> String
    #   resp.branch.destination_branch #=> String
    #   resp.branch.source_branch #=> String
    #   resp.branch.backend_environment_arn #=> String
    #   resp.branch.backend.stack_arn #=> String
    #   resp.branch.compute_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateBranch AWS API Documentation
    #
    # @overload create_branch(params = {})
    # @param [Hash] params ({})
    def create_branch(params = {}, options = {})
      req = build_request(:create_branch, params)
      req.send_request(options)
    end

    # Creates a deployment for a manually deployed Amplify app. Manually
    # deployed apps are not connected to a Git repository.
    #
    # The maximum duration between the `CreateDeployment` call and the
    # `StartDeployment` call cannot exceed 8 hours. If the duration exceeds
    # 8 hours, the `StartDeployment` call and the associated `Job` will
    # fail.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch to use for the job.
    #
    # @option params [Hash<String,String>] :file_map
    #   An optional file map that contains the file name as the key and the
    #   file content md5 hash as the value. If this argument is provided, the
    #   service will generate a unique upload URL per file. Otherwise, the
    #   service will only generate a single upload URL for the zipped files.
    #
    # @return [Types::CreateDeploymentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeploymentResult#job_id #job_id} => String
    #   * {Types::CreateDeploymentResult#file_upload_urls #file_upload_urls} => Hash&lt;String,String&gt;
    #   * {Types::CreateDeploymentResult#zip_upload_url #zip_upload_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     file_map: {
    #       "FileName" => "MD5Hash",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.file_upload_urls #=> Hash
    #   resp.file_upload_urls["FileName"] #=> String
    #   resp.zip_upload_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDeployment AWS API Documentation
    #
    # @overload create_deployment(params = {})
    # @param [Hash] params ({})
    def create_deployment(params = {}, options = {})
      req = build_request(:create_deployment, params)
      req.send_request(options)
    end

    # Creates a new domain association for an Amplify app. This action
    # associates a custom domain with the Amplify app
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :domain_name
    #   The domain name for the domain association.
    #
    # @option params [Boolean] :enable_auto_sub_domain
    #   Enables the automated creation of subdomains for branches.
    #
    # @option params [required, Array<Types::SubDomainSetting>] :sub_domain_settings
    #   The setting for the subdomain.
    #
    # @option params [Array<String>] :auto_sub_domain_creation_patterns
    #   Sets the branch patterns for automatic subdomain creation.
    #
    # @option params [String] :auto_sub_domain_iam_role
    #   The required AWS Identity and Access Management (IAM) service role for
    #   the Amazon Resource Name (ARN) for automatically creating subdomains.
    #
    # @option params [Types::CertificateSettings] :certificate_settings
    #   The type of SSL/TLS certificate to use for your custom domain. If you
    #   don't specify a certificate type, Amplify uses the default
    #   certificate that it provisions and manages for you.
    #
    # @return [Types::CreateDomainAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainAssociationResult#domain_association #domain_association} => Types::DomainAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_association({
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #     enable_auto_sub_domain: false,
    #     sub_domain_settings: [ # required
    #       {
    #         prefix: "DomainPrefix", # required
    #         branch_name: "BranchName", # required
    #       },
    #     ],
    #     auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #     auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #     certificate_settings: {
    #       type: "AMPLIFY_MANAGED", # required, accepts AMPLIFY_MANAGED, CUSTOM
    #       custom_certificate_arn: "CertificateArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_association.domain_association_arn #=> String
    #   resp.domain_association.domain_name #=> String
    #   resp.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.domain_association.auto_sub_domain_creation_patterns #=> Array
    #   resp.domain_association.auto_sub_domain_creation_patterns[0] #=> String
    #   resp.domain_association.auto_sub_domain_iam_role #=> String
    #   resp.domain_association.domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"
    #   resp.domain_association.update_status #=> String, one of "REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.domain_association.status_reason #=> String
    #   resp.domain_association.certificate_verification_dns_record #=> String
    #   resp.domain_association.sub_domains #=> Array
    #   resp.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.domain_association.sub_domains[0].dns_record #=> String
    #   resp.domain_association.certificate.type #=> String, one of "AMPLIFY_MANAGED", "CUSTOM"
    #   resp.domain_association.certificate.custom_certificate_arn #=> String
    #   resp.domain_association.certificate.certificate_verification_dns_record #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDomainAssociation AWS API Documentation
    #
    # @overload create_domain_association(params = {})
    # @param [Hash] params ({})
    def create_domain_association(params = {}, options = {})
      req = build_request(:create_domain_association, params)
      req.send_request(options)
    end

    # Creates a new webhook on an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name for a branch that is part of an Amplify app.
    #
    # @option params [String] :description
    #   The description for a webhook.
    #
    # @return [Types::CreateWebhookResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebhookResult#webhook #webhook} => Types::Webhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_webhook({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.webhook_arn #=> String
    #   resp.webhook.webhook_id #=> String
    #   resp.webhook.webhook_url #=> String
    #   resp.webhook.app_id #=> String
    #   resp.webhook.branch_name #=> String
    #   resp.webhook.description #=> String
    #   resp.webhook.create_time #=> Time
    #   resp.webhook.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateWebhook AWS API Documentation
    #
    # @overload create_webhook(params = {})
    # @param [Hash] params ({})
    def create_webhook(params = {}, options = {})
      req = build_request(:create_webhook, params)
      req.send_request(options)
    end

    # Deletes an existing Amplify app specified by an app ID.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @return [Types::DeleteAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAppResult#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app({
    #     app_id: "AppId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_id #=> String
    #   resp.app.app_arn #=> String
    #   resp.app.name #=> String
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #   resp.app.description #=> String
    #   resp.app.repository #=> String
    #   resp.app.platform #=> String, one of "WEB", "WEB_DYNAMIC", "WEB_COMPUTE"
    #   resp.app.create_time #=> Time
    #   resp.app.update_time #=> Time
    #   resp.app.compute_role_arn #=> String
    #   resp.app.iam_service_role_arn #=> String
    #   resp.app.environment_variables #=> Hash
    #   resp.app.environment_variables["EnvKey"] #=> String
    #   resp.app.default_domain #=> String
    #   resp.app.enable_branch_auto_build #=> Boolean
    #   resp.app.enable_branch_auto_deletion #=> Boolean
    #   resp.app.enable_basic_auth #=> Boolean
    #   resp.app.basic_auth_credentials #=> String
    #   resp.app.custom_rules #=> Array
    #   resp.app.custom_rules[0].source #=> String
    #   resp.app.custom_rules[0].target #=> String
    #   resp.app.custom_rules[0].status #=> String
    #   resp.app.custom_rules[0].condition #=> String
    #   resp.app.production_branch.last_deploy_time #=> Time
    #   resp.app.production_branch.status #=> String
    #   resp.app.production_branch.thumbnail_url #=> String
    #   resp.app.production_branch.branch_name #=> String
    #   resp.app.build_spec #=> String
    #   resp.app.custom_headers #=> String
    #   resp.app.enable_auto_branch_creation #=> Boolean
    #   resp.app.auto_branch_creation_patterns #=> Array
    #   resp.app.auto_branch_creation_patterns[0] #=> String
    #   resp.app.auto_branch_creation_config.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.app.auto_branch_creation_config.framework #=> String
    #   resp.app.auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.app.auto_branch_creation_config.environment_variables #=> Hash
    #   resp.app.auto_branch_creation_config.environment_variables["EnvKey"] #=> String
    #   resp.app.auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.app.auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.app.auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.app.auto_branch_creation_config.build_spec #=> String
    #   resp.app.auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.app.auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.app.repository_clone_method #=> String, one of "SSH", "TOKEN", "SIGV4"
    #   resp.app.cache_config.type #=> String, one of "AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"
    #   resp.app.webhook_create_time #=> Time
    #   resp.app.waf_configuration.web_acl_arn #=> String
    #   resp.app.waf_configuration.waf_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"
    #   resp.app.waf_configuration.status_reason #=> String
    #   resp.app.job_config.build_compute_type #=> String, one of "STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteApp AWS API Documentation
    #
    # @overload delete_app(params = {})
    # @param [Hash] params ({})
    def delete_app(params = {}, options = {})
      req = build_request(:delete_app, params)
      req.send_request(options)
    end

    # Deletes a backend environment for an Amplify app.
    #
    # This API is available only to Amplify Gen 1 applications where the
    # backend is created using Amplify Studio or the Amplify command line
    # interface (CLI). This API isn’t available to Amplify Gen 2
    # applications. When you deploy an application with Amplify Gen 2, you
    # provision the app's backend infrastructure using Typescript code.
    #
    # @option params [required, String] :app_id
    #   The unique ID of an Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name of a backend environment of an Amplify app.
    #
    # @return [Types::DeleteBackendEnvironmentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBackendEnvironmentResult#backend_environment #backend_environment} => Types::BackendEnvironment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend_environment({
    #     app_id: "AppId", # required
    #     environment_name: "EnvironmentName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backend_environment.backend_environment_arn #=> String
    #   resp.backend_environment.environment_name #=> String
    #   resp.backend_environment.stack_name #=> String
    #   resp.backend_environment.deployment_artifacts #=> String
    #   resp.backend_environment.create_time #=> Time
    #   resp.backend_environment.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBackendEnvironment AWS API Documentation
    #
    # @overload delete_backend_environment(params = {})
    # @param [Hash] params ({})
    def delete_backend_environment(params = {}, options = {})
      req = build_request(:delete_backend_environment, params)
      req.send_request(options)
    end

    # Deletes a branch for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch.
    #
    # @return [Types::DeleteBranchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBranchResult#branch #branch} => Types::Branch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_branch({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_arn #=> String
    #   resp.branch.branch_name #=> String
    #   resp.branch.description #=> String
    #   resp.branch.tags #=> Hash
    #   resp.branch.tags["TagKey"] #=> String
    #   resp.branch.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.branch.display_name #=> String
    #   resp.branch.enable_notification #=> Boolean
    #   resp.branch.create_time #=> Time
    #   resp.branch.update_time #=> Time
    #   resp.branch.environment_variables #=> Hash
    #   resp.branch.environment_variables["EnvKey"] #=> String
    #   resp.branch.enable_auto_build #=> Boolean
    #   resp.branch.enable_skew_protection #=> Boolean
    #   resp.branch.custom_domains #=> Array
    #   resp.branch.custom_domains[0] #=> String
    #   resp.branch.framework #=> String
    #   resp.branch.active_job_id #=> String
    #   resp.branch.total_number_of_jobs #=> String
    #   resp.branch.enable_basic_auth #=> Boolean
    #   resp.branch.enable_performance_mode #=> Boolean
    #   resp.branch.thumbnail_url #=> String
    #   resp.branch.basic_auth_credentials #=> String
    #   resp.branch.build_spec #=> String
    #   resp.branch.ttl #=> String
    #   resp.branch.associated_resources #=> Array
    #   resp.branch.associated_resources[0] #=> String
    #   resp.branch.enable_pull_request_preview #=> Boolean
    #   resp.branch.pull_request_environment_name #=> String
    #   resp.branch.destination_branch #=> String
    #   resp.branch.source_branch #=> String
    #   resp.branch.backend_environment_arn #=> String
    #   resp.branch.backend.stack_arn #=> String
    #   resp.branch.compute_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBranch AWS API Documentation
    #
    # @overload delete_branch(params = {})
    # @param [Hash] params ({})
    def delete_branch(params = {}, options = {})
      req = build_request(:delete_branch, params)
      req.send_request(options)
    end

    # Deletes a domain association for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique id for an Amplify app.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Types::DeleteDomainAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainAssociationResult#domain_association #domain_association} => Types::DomainAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_association({
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_association.domain_association_arn #=> String
    #   resp.domain_association.domain_name #=> String
    #   resp.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.domain_association.auto_sub_domain_creation_patterns #=> Array
    #   resp.domain_association.auto_sub_domain_creation_patterns[0] #=> String
    #   resp.domain_association.auto_sub_domain_iam_role #=> String
    #   resp.domain_association.domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"
    #   resp.domain_association.update_status #=> String, one of "REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.domain_association.status_reason #=> String
    #   resp.domain_association.certificate_verification_dns_record #=> String
    #   resp.domain_association.sub_domains #=> Array
    #   resp.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.domain_association.sub_domains[0].dns_record #=> String
    #   resp.domain_association.certificate.type #=> String, one of "AMPLIFY_MANAGED", "CUSTOM"
    #   resp.domain_association.certificate.custom_certificate_arn #=> String
    #   resp.domain_association.certificate.certificate_verification_dns_record #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteDomainAssociation AWS API Documentation
    #
    # @overload delete_domain_association(params = {})
    # @param [Hash] params ({})
    def delete_domain_association(params = {}, options = {})
      req = build_request(:delete_domain_association, params)
      req.send_request(options)
    end

    # Deletes a job for a branch of an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch to use for the job.
    #
    # @option params [required, String] :job_id
    #   The unique ID for the job.
    #
    # @return [Types::DeleteJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteJobResult#job_summary #job_summary} => Types::JobSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summary.job_arn #=> String
    #   resp.job_summary.job_id #=> String
    #   resp.job_summary.commit_id #=> String
    #   resp.job_summary.commit_message #=> String
    #   resp.job_summary.commit_time #=> Time
    #   resp.job_summary.start_time #=> Time
    #   resp.job_summary.status #=> String, one of "CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summary.end_time #=> Time
    #   resp.job_summary.job_type #=> String, one of "RELEASE", "RETRY", "MANUAL", "WEB_HOOK"
    #   resp.job_summary.source_url #=> String
    #   resp.job_summary.source_url_type #=> String, one of "ZIP", "BUCKET_PREFIX"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteJob AWS API Documentation
    #
    # @overload delete_job(params = {})
    # @param [Hash] params ({})
    def delete_job(params = {}, options = {})
      req = build_request(:delete_job, params)
      req.send_request(options)
    end

    # Deletes a webhook.
    #
    # @option params [required, String] :webhook_id
    #   The unique ID for a webhook.
    #
    # @return [Types::DeleteWebhookResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteWebhookResult#webhook #webhook} => Types::Webhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_webhook({
    #     webhook_id: "WebhookId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.webhook_arn #=> String
    #   resp.webhook.webhook_id #=> String
    #   resp.webhook.webhook_url #=> String
    #   resp.webhook.app_id #=> String
    #   resp.webhook.branch_name #=> String
    #   resp.webhook.description #=> String
    #   resp.webhook.create_time #=> Time
    #   resp.webhook.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteWebhook AWS API Documentation
    #
    # @overload delete_webhook(params = {})
    # @param [Hash] params ({})
    def delete_webhook(params = {}, options = {})
      req = build_request(:delete_webhook, params)
      req.send_request(options)
    end

    # Returns the website access logs for a specific time range using a
    # presigned URL.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The time at which the logs should start. The time range specified is
    #   inclusive of the start time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The time at which the logs should end. The time range specified is
    #   inclusive of the end time.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @return [Types::GenerateAccessLogsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateAccessLogsResult#log_url #log_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_access_logs({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     domain_name: "DomainName", # required
    #     app_id: "AppId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.log_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GenerateAccessLogs AWS API Documentation
    #
    # @overload generate_access_logs(params = {})
    # @param [Hash] params ({})
    def generate_access_logs(params = {}, options = {})
      req = build_request(:generate_access_logs, params)
      req.send_request(options)
    end

    # Returns an existing Amplify app specified by an app ID.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @return [Types::GetAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppResult#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app({
    #     app_id: "AppId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_id #=> String
    #   resp.app.app_arn #=> String
    #   resp.app.name #=> String
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #   resp.app.description #=> String
    #   resp.app.repository #=> String
    #   resp.app.platform #=> String, one of "WEB", "WEB_DYNAMIC", "WEB_COMPUTE"
    #   resp.app.create_time #=> Time
    #   resp.app.update_time #=> Time
    #   resp.app.compute_role_arn #=> String
    #   resp.app.iam_service_role_arn #=> String
    #   resp.app.environment_variables #=> Hash
    #   resp.app.environment_variables["EnvKey"] #=> String
    #   resp.app.default_domain #=> String
    #   resp.app.enable_branch_auto_build #=> Boolean
    #   resp.app.enable_branch_auto_deletion #=> Boolean
    #   resp.app.enable_basic_auth #=> Boolean
    #   resp.app.basic_auth_credentials #=> String
    #   resp.app.custom_rules #=> Array
    #   resp.app.custom_rules[0].source #=> String
    #   resp.app.custom_rules[0].target #=> String
    #   resp.app.custom_rules[0].status #=> String
    #   resp.app.custom_rules[0].condition #=> String
    #   resp.app.production_branch.last_deploy_time #=> Time
    #   resp.app.production_branch.status #=> String
    #   resp.app.production_branch.thumbnail_url #=> String
    #   resp.app.production_branch.branch_name #=> String
    #   resp.app.build_spec #=> String
    #   resp.app.custom_headers #=> String
    #   resp.app.enable_auto_branch_creation #=> Boolean
    #   resp.app.auto_branch_creation_patterns #=> Array
    #   resp.app.auto_branch_creation_patterns[0] #=> String
    #   resp.app.auto_branch_creation_config.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.app.auto_branch_creation_config.framework #=> String
    #   resp.app.auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.app.auto_branch_creation_config.environment_variables #=> Hash
    #   resp.app.auto_branch_creation_config.environment_variables["EnvKey"] #=> String
    #   resp.app.auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.app.auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.app.auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.app.auto_branch_creation_config.build_spec #=> String
    #   resp.app.auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.app.auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.app.repository_clone_method #=> String, one of "SSH", "TOKEN", "SIGV4"
    #   resp.app.cache_config.type #=> String, one of "AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"
    #   resp.app.webhook_create_time #=> Time
    #   resp.app.waf_configuration.web_acl_arn #=> String
    #   resp.app.waf_configuration.waf_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"
    #   resp.app.waf_configuration.status_reason #=> String
    #   resp.app.job_config.build_compute_type #=> String, one of "STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetApp AWS API Documentation
    #
    # @overload get_app(params = {})
    # @param [Hash] params ({})
    def get_app(params = {}, options = {})
      req = build_request(:get_app, params)
      req.send_request(options)
    end

    # Returns the artifact info that corresponds to an artifact id.
    #
    # @option params [required, String] :artifact_id
    #   The unique ID for an artifact.
    #
    # @return [Types::GetArtifactUrlResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetArtifactUrlResult#artifact_id #artifact_id} => String
    #   * {Types::GetArtifactUrlResult#artifact_url #artifact_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_artifact_url({
    #     artifact_id: "ArtifactId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.artifact_id #=> String
    #   resp.artifact_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetArtifactUrl AWS API Documentation
    #
    # @overload get_artifact_url(params = {})
    # @param [Hash] params ({})
    def get_artifact_url(params = {}, options = {})
      req = build_request(:get_artifact_url, params)
      req.send_request(options)
    end

    # Returns a backend environment for an Amplify app.
    #
    # This API is available only to Amplify Gen 1 applications where the
    # backend is created using Amplify Studio or the Amplify command line
    # interface (CLI). This API isn’t available to Amplify Gen 2
    # applications. When you deploy an application with Amplify Gen 2, you
    # provision the app's backend infrastructure using Typescript code.
    #
    # @option params [required, String] :app_id
    #   The unique id for an Amplify app.
    #
    # @option params [required, String] :environment_name
    #   The name for the backend environment.
    #
    # @return [Types::GetBackendEnvironmentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBackendEnvironmentResult#backend_environment #backend_environment} => Types::BackendEnvironment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_environment({
    #     app_id: "AppId", # required
    #     environment_name: "EnvironmentName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.backend_environment.backend_environment_arn #=> String
    #   resp.backend_environment.environment_name #=> String
    #   resp.backend_environment.stack_name #=> String
    #   resp.backend_environment.deployment_artifacts #=> String
    #   resp.backend_environment.create_time #=> Time
    #   resp.backend_environment.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBackendEnvironment AWS API Documentation
    #
    # @overload get_backend_environment(params = {})
    # @param [Hash] params ({})
    def get_backend_environment(params = {}, options = {})
      req = build_request(:get_backend_environment, params)
      req.send_request(options)
    end

    # Returns a branch for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch.
    #
    # @return [Types::GetBranchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBranchResult#branch #branch} => Types::Branch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_branch({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_arn #=> String
    #   resp.branch.branch_name #=> String
    #   resp.branch.description #=> String
    #   resp.branch.tags #=> Hash
    #   resp.branch.tags["TagKey"] #=> String
    #   resp.branch.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.branch.display_name #=> String
    #   resp.branch.enable_notification #=> Boolean
    #   resp.branch.create_time #=> Time
    #   resp.branch.update_time #=> Time
    #   resp.branch.environment_variables #=> Hash
    #   resp.branch.environment_variables["EnvKey"] #=> String
    #   resp.branch.enable_auto_build #=> Boolean
    #   resp.branch.enable_skew_protection #=> Boolean
    #   resp.branch.custom_domains #=> Array
    #   resp.branch.custom_domains[0] #=> String
    #   resp.branch.framework #=> String
    #   resp.branch.active_job_id #=> String
    #   resp.branch.total_number_of_jobs #=> String
    #   resp.branch.enable_basic_auth #=> Boolean
    #   resp.branch.enable_performance_mode #=> Boolean
    #   resp.branch.thumbnail_url #=> String
    #   resp.branch.basic_auth_credentials #=> String
    #   resp.branch.build_spec #=> String
    #   resp.branch.ttl #=> String
    #   resp.branch.associated_resources #=> Array
    #   resp.branch.associated_resources[0] #=> String
    #   resp.branch.enable_pull_request_preview #=> Boolean
    #   resp.branch.pull_request_environment_name #=> String
    #   resp.branch.destination_branch #=> String
    #   resp.branch.source_branch #=> String
    #   resp.branch.backend_environment_arn #=> String
    #   resp.branch.backend.stack_arn #=> String
    #   resp.branch.compute_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBranch AWS API Documentation
    #
    # @overload get_branch(params = {})
    # @param [Hash] params ({})
    def get_branch(params = {}, options = {})
      req = build_request(:get_branch, params)
      req.send_request(options)
    end

    # Returns the domain information for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique id for an Amplify app.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @return [Types::GetDomainAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainAssociationResult#domain_association #domain_association} => Types::DomainAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_association({
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_association.domain_association_arn #=> String
    #   resp.domain_association.domain_name #=> String
    #   resp.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.domain_association.auto_sub_domain_creation_patterns #=> Array
    #   resp.domain_association.auto_sub_domain_creation_patterns[0] #=> String
    #   resp.domain_association.auto_sub_domain_iam_role #=> String
    #   resp.domain_association.domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"
    #   resp.domain_association.update_status #=> String, one of "REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.domain_association.status_reason #=> String
    #   resp.domain_association.certificate_verification_dns_record #=> String
    #   resp.domain_association.sub_domains #=> Array
    #   resp.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.domain_association.sub_domains[0].dns_record #=> String
    #   resp.domain_association.certificate.type #=> String, one of "AMPLIFY_MANAGED", "CUSTOM"
    #   resp.domain_association.certificate.custom_certificate_arn #=> String
    #   resp.domain_association.certificate.certificate_verification_dns_record #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetDomainAssociation AWS API Documentation
    #
    # @overload get_domain_association(params = {})
    # @param [Hash] params ({})
    def get_domain_association(params = {}, options = {})
      req = build_request(:get_domain_association, params)
      req.send_request(options)
    end

    # Returns a job for a branch of an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch to use for the job.
    #
    # @option params [required, String] :job_id
    #   The unique ID for the job.
    #
    # @return [Types::GetJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResult#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.summary.job_arn #=> String
    #   resp.job.summary.job_id #=> String
    #   resp.job.summary.commit_id #=> String
    #   resp.job.summary.commit_message #=> String
    #   resp.job.summary.commit_time #=> Time
    #   resp.job.summary.start_time #=> Time
    #   resp.job.summary.status #=> String, one of "CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job.summary.end_time #=> Time
    #   resp.job.summary.job_type #=> String, one of "RELEASE", "RETRY", "MANUAL", "WEB_HOOK"
    #   resp.job.summary.source_url #=> String
    #   resp.job.summary.source_url_type #=> String, one of "ZIP", "BUCKET_PREFIX"
    #   resp.job.steps #=> Array
    #   resp.job.steps[0].step_name #=> String
    #   resp.job.steps[0].start_time #=> Time
    #   resp.job.steps[0].status #=> String, one of "CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job.steps[0].end_time #=> Time
    #   resp.job.steps[0].log_url #=> String
    #   resp.job.steps[0].artifacts_url #=> String
    #   resp.job.steps[0].test_artifacts_url #=> String
    #   resp.job.steps[0].test_config_url #=> String
    #   resp.job.steps[0].screenshots #=> Hash
    #   resp.job.steps[0].screenshots["ThumbnailName"] #=> String
    #   resp.job.steps[0].status_reason #=> String
    #   resp.job.steps[0].context #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Returns the webhook information that corresponds to a specified
    # webhook ID.
    #
    # @option params [required, String] :webhook_id
    #   The unique ID for a webhook.
    #
    # @return [Types::GetWebhookResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebhookResult#webhook #webhook} => Types::Webhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_webhook({
    #     webhook_id: "WebhookId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.webhook_arn #=> String
    #   resp.webhook.webhook_id #=> String
    #   resp.webhook.webhook_url #=> String
    #   resp.webhook.app_id #=> String
    #   resp.webhook.branch_name #=> String
    #   resp.webhook.description #=> String
    #   resp.webhook.create_time #=> Time
    #   resp.webhook.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetWebhook AWS API Documentation
    #
    # @overload get_webhook(params = {})
    # @param [Hash] params ({})
    def get_webhook(params = {}, options = {})
      req = build_request(:get_webhook, params)
      req.send_request(options)
    end

    # Returns a list of the existing Amplify apps.
    #
    # @option params [String] :next_token
    #   A pagination token. If non-null, the pagination token is returned in a
    #   result. Pass its value in another request to retrieve more entries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to list in a single response.
    #
    # @return [Types::ListAppsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppsResult#apps #apps} => Array&lt;Types::App&gt;
    #   * {Types::ListAppsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.apps #=> Array
    #   resp.apps[0].app_id #=> String
    #   resp.apps[0].app_arn #=> String
    #   resp.apps[0].name #=> String
    #   resp.apps[0].tags #=> Hash
    #   resp.apps[0].tags["TagKey"] #=> String
    #   resp.apps[0].description #=> String
    #   resp.apps[0].repository #=> String
    #   resp.apps[0].platform #=> String, one of "WEB", "WEB_DYNAMIC", "WEB_COMPUTE"
    #   resp.apps[0].create_time #=> Time
    #   resp.apps[0].update_time #=> Time
    #   resp.apps[0].compute_role_arn #=> String
    #   resp.apps[0].iam_service_role_arn #=> String
    #   resp.apps[0].environment_variables #=> Hash
    #   resp.apps[0].environment_variables["EnvKey"] #=> String
    #   resp.apps[0].default_domain #=> String
    #   resp.apps[0].enable_branch_auto_build #=> Boolean
    #   resp.apps[0].enable_branch_auto_deletion #=> Boolean
    #   resp.apps[0].enable_basic_auth #=> Boolean
    #   resp.apps[0].basic_auth_credentials #=> String
    #   resp.apps[0].custom_rules #=> Array
    #   resp.apps[0].custom_rules[0].source #=> String
    #   resp.apps[0].custom_rules[0].target #=> String
    #   resp.apps[0].custom_rules[0].status #=> String
    #   resp.apps[0].custom_rules[0].condition #=> String
    #   resp.apps[0].production_branch.last_deploy_time #=> Time
    #   resp.apps[0].production_branch.status #=> String
    #   resp.apps[0].production_branch.thumbnail_url #=> String
    #   resp.apps[0].production_branch.branch_name #=> String
    #   resp.apps[0].build_spec #=> String
    #   resp.apps[0].custom_headers #=> String
    #   resp.apps[0].enable_auto_branch_creation #=> Boolean
    #   resp.apps[0].auto_branch_creation_patterns #=> Array
    #   resp.apps[0].auto_branch_creation_patterns[0] #=> String
    #   resp.apps[0].auto_branch_creation_config.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.apps[0].auto_branch_creation_config.framework #=> String
    #   resp.apps[0].auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.apps[0].auto_branch_creation_config.environment_variables #=> Hash
    #   resp.apps[0].auto_branch_creation_config.environment_variables["EnvKey"] #=> String
    #   resp.apps[0].auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.apps[0].auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.apps[0].auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.apps[0].auto_branch_creation_config.build_spec #=> String
    #   resp.apps[0].auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.apps[0].auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.apps[0].repository_clone_method #=> String, one of "SSH", "TOKEN", "SIGV4"
    #   resp.apps[0].cache_config.type #=> String, one of "AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"
    #   resp.apps[0].webhook_create_time #=> Time
    #   resp.apps[0].waf_configuration.web_acl_arn #=> String
    #   resp.apps[0].waf_configuration.waf_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"
    #   resp.apps[0].waf_configuration.status_reason #=> String
    #   resp.apps[0].job_config.build_compute_type #=> String, one of "STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListApps AWS API Documentation
    #
    # @overload list_apps(params = {})
    # @param [Hash] params ({})
    def list_apps(params = {}, options = {})
      req = build_request(:list_apps, params)
      req.send_request(options)
    end

    # Returns a list of end-to-end testing artifacts for a specified app,
    # branch, and job.
    #
    # To return the build artifacts, use the [GetJob][1] API.
    #
    # For more information about Amplify testing support, see [Setting up
    # end-to-end Cypress tests for your Amplify application][2] in the
    # *Amplify Hosting User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amplify/latest/APIReference/API_GetJob.html
    # [2]: https://docs.aws.amazon.com/amplify/latest/userguide/running-tests.html
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of a branch that is part of an Amplify app.
    #
    # @option params [required, String] :job_id
    #   The unique ID for a job.
    #
    # @option params [String] :next_token
    #   A pagination token. Set to null to start listing artifacts from start.
    #   If a non-null pagination token is returned in a result, pass its value
    #   in here to list more artifacts.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to list in a single response.
    #
    # @return [Types::ListArtifactsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListArtifactsResult#artifacts #artifacts} => Array&lt;Types::Artifact&gt;
    #   * {Types::ListArtifactsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_artifacts({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.artifacts #=> Array
    #   resp.artifacts[0].artifact_file_name #=> String
    #   resp.artifacts[0].artifact_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListArtifacts AWS API Documentation
    #
    # @overload list_artifacts(params = {})
    # @param [Hash] params ({})
    def list_artifacts(params = {}, options = {})
      req = build_request(:list_artifacts, params)
      req.send_request(options)
    end

    # Lists the backend environments for an Amplify app.
    #
    # This API is available only to Amplify Gen 1 applications where the
    # backend is created using Amplify Studio or the Amplify command line
    # interface (CLI). This API isn’t available to Amplify Gen 2
    # applications. When you deploy an application with Amplify Gen 2, you
    # provision the app's backend infrastructure using Typescript code.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [String] :environment_name
    #   The name of the backend environment
    #
    # @option params [String] :next_token
    #   A pagination token. Set to null to start listing backend environments
    #   from the start. If a non-null pagination token is returned in a
    #   result, pass its value in here to list more backend environments.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to list in a single response.
    #
    # @return [Types::ListBackendEnvironmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBackendEnvironmentsResult#backend_environments #backend_environments} => Array&lt;Types::BackendEnvironment&gt;
    #   * {Types::ListBackendEnvironmentsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backend_environments({
    #     app_id: "AppId", # required
    #     environment_name: "EnvironmentName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.backend_environments #=> Array
    #   resp.backend_environments[0].backend_environment_arn #=> String
    #   resp.backend_environments[0].environment_name #=> String
    #   resp.backend_environments[0].stack_name #=> String
    #   resp.backend_environments[0].deployment_artifacts #=> String
    #   resp.backend_environments[0].create_time #=> Time
    #   resp.backend_environments[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBackendEnvironments AWS API Documentation
    #
    # @overload list_backend_environments(params = {})
    # @param [Hash] params ({})
    def list_backend_environments(params = {}, options = {})
      req = build_request(:list_backend_environments, params)
      req.send_request(options)
    end

    # Lists the branches of an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [String] :next_token
    #   A pagination token. Set to null to start listing branches from the
    #   start. If a non-null pagination token is returned in a result, pass
    #   its value in here to list more branches.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to list in a single response.
    #
    # @return [Types::ListBranchesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBranchesResult#branches #branches} => Array&lt;Types::Branch&gt;
    #   * {Types::ListBranchesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_branches({
    #     app_id: "AppId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.branches #=> Array
    #   resp.branches[0].branch_arn #=> String
    #   resp.branches[0].branch_name #=> String
    #   resp.branches[0].description #=> String
    #   resp.branches[0].tags #=> Hash
    #   resp.branches[0].tags["TagKey"] #=> String
    #   resp.branches[0].stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.branches[0].display_name #=> String
    #   resp.branches[0].enable_notification #=> Boolean
    #   resp.branches[0].create_time #=> Time
    #   resp.branches[0].update_time #=> Time
    #   resp.branches[0].environment_variables #=> Hash
    #   resp.branches[0].environment_variables["EnvKey"] #=> String
    #   resp.branches[0].enable_auto_build #=> Boolean
    #   resp.branches[0].enable_skew_protection #=> Boolean
    #   resp.branches[0].custom_domains #=> Array
    #   resp.branches[0].custom_domains[0] #=> String
    #   resp.branches[0].framework #=> String
    #   resp.branches[0].active_job_id #=> String
    #   resp.branches[0].total_number_of_jobs #=> String
    #   resp.branches[0].enable_basic_auth #=> Boolean
    #   resp.branches[0].enable_performance_mode #=> Boolean
    #   resp.branches[0].thumbnail_url #=> String
    #   resp.branches[0].basic_auth_credentials #=> String
    #   resp.branches[0].build_spec #=> String
    #   resp.branches[0].ttl #=> String
    #   resp.branches[0].associated_resources #=> Array
    #   resp.branches[0].associated_resources[0] #=> String
    #   resp.branches[0].enable_pull_request_preview #=> Boolean
    #   resp.branches[0].pull_request_environment_name #=> String
    #   resp.branches[0].destination_branch #=> String
    #   resp.branches[0].source_branch #=> String
    #   resp.branches[0].backend_environment_arn #=> String
    #   resp.branches[0].backend.stack_arn #=> String
    #   resp.branches[0].compute_role_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBranches AWS API Documentation
    #
    # @overload list_branches(params = {})
    # @param [Hash] params ({})
    def list_branches(params = {}, options = {})
      req = build_request(:list_branches, params)
      req.send_request(options)
    end

    # Returns the domain associations for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [String] :next_token
    #   A pagination token. Set to null to start listing apps from the start.
    #   If non-null, a pagination token is returned in a result. Pass its
    #   value in here to list more projects.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to list in a single response.
    #
    # @return [Types::ListDomainAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainAssociationsResult#domain_associations #domain_associations} => Array&lt;Types::DomainAssociation&gt;
    #   * {Types::ListDomainAssociationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_associations({
    #     app_id: "AppId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_associations #=> Array
    #   resp.domain_associations[0].domain_association_arn #=> String
    #   resp.domain_associations[0].domain_name #=> String
    #   resp.domain_associations[0].enable_auto_sub_domain #=> Boolean
    #   resp.domain_associations[0].auto_sub_domain_creation_patterns #=> Array
    #   resp.domain_associations[0].auto_sub_domain_creation_patterns[0] #=> String
    #   resp.domain_associations[0].auto_sub_domain_iam_role #=> String
    #   resp.domain_associations[0].domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"
    #   resp.domain_associations[0].update_status #=> String, one of "REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.domain_associations[0].status_reason #=> String
    #   resp.domain_associations[0].certificate_verification_dns_record #=> String
    #   resp.domain_associations[0].sub_domains #=> Array
    #   resp.domain_associations[0].sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_associations[0].sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_associations[0].sub_domains[0].verified #=> Boolean
    #   resp.domain_associations[0].sub_domains[0].dns_record #=> String
    #   resp.domain_associations[0].certificate.type #=> String, one of "AMPLIFY_MANAGED", "CUSTOM"
    #   resp.domain_associations[0].certificate.custom_certificate_arn #=> String
    #   resp.domain_associations[0].certificate.certificate_verification_dns_record #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListDomainAssociations AWS API Documentation
    #
    # @overload list_domain_associations(params = {})
    # @param [Hash] params ({})
    def list_domain_associations(params = {}, options = {})
      req = build_request(:list_domain_associations, params)
      req.send_request(options)
    end

    # Lists the jobs for a branch of an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch to use for the request.
    #
    # @option params [String] :next_token
    #   A pagination token. Set to null to start listing steps from the start.
    #   If a non-null pagination token is returned in a result, pass its value
    #   in here to list more steps.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to list in a single response.
    #
    # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResult#job_summaries #job_summaries} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListJobsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summaries #=> Array
    #   resp.job_summaries[0].job_arn #=> String
    #   resp.job_summaries[0].job_id #=> String
    #   resp.job_summaries[0].commit_id #=> String
    #   resp.job_summaries[0].commit_message #=> String
    #   resp.job_summaries[0].commit_time #=> Time
    #   resp.job_summaries[0].start_time #=> Time
    #   resp.job_summaries[0].status #=> String, one of "CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summaries[0].end_time #=> Time
    #   resp.job_summaries[0].job_type #=> String, one of "RELEASE", "RETRY", "MANUAL", "WEB_HOOK"
    #   resp.job_summaries[0].source_url #=> String
    #   resp.job_summaries[0].source_url_type #=> String, one of "ZIP", "BUCKET_PREFIX"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Returns a list of tags for a specified Amazon Resource Name (ARN).
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) to use to list tags.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of webhooks for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [String] :next_token
    #   A pagination token. Set to null to start listing webhooks from the
    #   start. If non-null,the pagination token is returned in a result. Pass
    #   its value in here to list more webhooks.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to list in a single response.
    #
    # @return [Types::ListWebhooksResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebhooksResult#webhooks #webhooks} => Array&lt;Types::Webhook&gt;
    #   * {Types::ListWebhooksResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_webhooks({
    #     app_id: "AppId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.webhooks #=> Array
    #   resp.webhooks[0].webhook_arn #=> String
    #   resp.webhooks[0].webhook_id #=> String
    #   resp.webhooks[0].webhook_url #=> String
    #   resp.webhooks[0].app_id #=> String
    #   resp.webhooks[0].branch_name #=> String
    #   resp.webhooks[0].description #=> String
    #   resp.webhooks[0].create_time #=> Time
    #   resp.webhooks[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListWebhooks AWS API Documentation
    #
    # @overload list_webhooks(params = {})
    # @param [Hash] params ({})
    def list_webhooks(params = {}, options = {})
      req = build_request(:list_webhooks, params)
      req.send_request(options)
    end

    # Starts a deployment for a manually deployed app. Manually deployed
    # apps are not connected to a Git repository.
    #
    # The maximum duration between the `CreateDeployment` call and the
    # `StartDeployment` call cannot exceed 8 hours. If the duration exceeds
    # 8 hours, the `StartDeployment` call and the associated `Job` will
    # fail.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch to use for the deployment job.
    #
    # @option params [String] :job_id
    #   The job ID for this deployment that is generated by the
    #   `CreateDeployment` request.
    #
    # @option params [String] :source_url
    #   The source URL for the deployment that is used when calling
    #   `StartDeployment` without `CreateDeployment`. The source URL can be
    #   either an HTTP GET URL that is publicly accessible and downloads a
    #   single .zip file, or an Amazon S3 bucket and prefix.
    #
    # @option params [String] :source_url_type
    #   The type of source specified by the `sourceURL`. If the value is
    #   `ZIP`, the source is a .zip file. If the value is `BUCKET_PREFIX`, the
    #   source is an Amazon S3 bucket and prefix. If no value is specified,
    #   the default is `ZIP`.
    #
    # @return [Types::StartDeploymentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDeploymentResult#job_summary #job_summary} => Types::JobSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_deployment({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId",
    #     source_url: "SourceUrl",
    #     source_url_type: "ZIP", # accepts ZIP, BUCKET_PREFIX
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summary.job_arn #=> String
    #   resp.job_summary.job_id #=> String
    #   resp.job_summary.commit_id #=> String
    #   resp.job_summary.commit_message #=> String
    #   resp.job_summary.commit_time #=> Time
    #   resp.job_summary.start_time #=> Time
    #   resp.job_summary.status #=> String, one of "CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summary.end_time #=> Time
    #   resp.job_summary.job_type #=> String, one of "RELEASE", "RETRY", "MANUAL", "WEB_HOOK"
    #   resp.job_summary.source_url #=> String
    #   resp.job_summary.source_url_type #=> String, one of "ZIP", "BUCKET_PREFIX"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartDeployment AWS API Documentation
    #
    # @overload start_deployment(params = {})
    # @param [Hash] params ({})
    def start_deployment(params = {}, options = {})
      req = build_request(:start_deployment, params)
      req.send_request(options)
    end

    # Starts a new job for a branch of an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch to use for the job.
    #
    # @option params [String] :job_id
    #   The unique ID for an existing job. This is required if the value of
    #   `jobType` is `RETRY`.
    #
    # @option params [required, String] :job_type
    #   Describes the type for the job. The job type `RELEASE` starts a new
    #   job with the latest change from the specified branch. This value is
    #   available only for apps that are connected to a repository.
    #
    #   The job type `RETRY` retries an existing job. If the job type value is
    #   `RETRY`, the `jobId` is also required.
    #
    # @option params [String] :job_reason
    #   A descriptive reason for starting the job.
    #
    # @option params [String] :commit_id
    #   The commit ID from a third-party repository provider for the job.
    #
    # @option params [String] :commit_message
    #   The commit message from a third-party repository provider for the job.
    #
    # @option params [Time,DateTime,Date,Integer,String] :commit_time
    #   The commit date and time for the job.
    #
    # @return [Types::StartJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartJobResult#job_summary #job_summary} => Types::JobSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId",
    #     job_type: "RELEASE", # required, accepts RELEASE, RETRY, MANUAL, WEB_HOOK
    #     job_reason: "JobReason",
    #     commit_id: "CommitId",
    #     commit_message: "CommitMessage",
    #     commit_time: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summary.job_arn #=> String
    #   resp.job_summary.job_id #=> String
    #   resp.job_summary.commit_id #=> String
    #   resp.job_summary.commit_message #=> String
    #   resp.job_summary.commit_time #=> Time
    #   resp.job_summary.start_time #=> Time
    #   resp.job_summary.status #=> String, one of "CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summary.end_time #=> Time
    #   resp.job_summary.job_type #=> String, one of "RELEASE", "RETRY", "MANUAL", "WEB_HOOK"
    #   resp.job_summary.source_url #=> String
    #   resp.job_summary.source_url_type #=> String, one of "ZIP", "BUCKET_PREFIX"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartJob AWS API Documentation
    #
    # @overload start_job(params = {})
    # @param [Hash] params ({})
    def start_job(params = {}, options = {})
      req = build_request(:start_job, params)
      req.send_request(options)
    end

    # Stops a job that is in progress for a branch of an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch to use for the stop job request.
    #
    # @option params [required, String] :job_id
    #   The unique id for the job.
    #
    # @return [Types::StopJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopJobResult#job_summary #job_summary} => Types::JobSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_job({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summary.job_arn #=> String
    #   resp.job_summary.job_id #=> String
    #   resp.job_summary.commit_id #=> String
    #   resp.job_summary.commit_message #=> String
    #   resp.job_summary.commit_time #=> Time
    #   resp.job_summary.start_time #=> Time
    #   resp.job_summary.status #=> String, one of "CREATED", "PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"
    #   resp.job_summary.end_time #=> Time
    #   resp.job_summary.job_type #=> String, one of "RELEASE", "RETRY", "MANUAL", "WEB_HOOK"
    #   resp.job_summary.source_url #=> String
    #   resp.job_summary.source_url_type #=> String, one of "ZIP", "BUCKET_PREFIX"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StopJob AWS API Documentation
    #
    # @overload stop_job(params = {})
    # @param [Hash] params ({})
    def stop_job(params = {}, options = {})
      req = build_request(:stop_job, params)
      req.send_request(options)
    end

    # Tags the resource with a tag key and value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) to use to tag a resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to tag the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags a resource with a specified Amazon Resource Name (ARN).
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) to use to untag a resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to use to untag a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [String] :name
    #   The name for an Amplify app.
    #
    # @option params [String] :description
    #   The description for an Amplify app.
    #
    # @option params [String] :platform
    #   The platform for the Amplify app. For a static app, set the platform
    #   type to `WEB`. For a dynamic server-side rendered (SSR) app, set the
    #   platform type to `WEB_COMPUTE`. For an app requiring Amplify
    #   Hosting's original SSR support only, set the platform type to
    #   `WEB_DYNAMIC`.
    #
    #   If you are deploying an SSG only app with Next.js version 14 or later,
    #   you must set the platform type to `WEB_COMPUTE`.
    #
    # @option params [String] :compute_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to assign to an SSR
    #   app. The SSR Compute role allows the Amplify Hosting compute service
    #   to securely access specific Amazon Web Services resources based on the
    #   role's permissions. For more information about the SSR Compute role,
    #   see [Adding an SSR Compute role][1] in the *Amplify User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html
    #
    # @option params [String] :iam_service_role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role for the Amplify
    #   app.
    #
    # @option params [Hash<String,String>] :environment_variables
    #   The environment variables for an Amplify app.
    #
    # @option params [Boolean] :enable_branch_auto_build
    #   Enables branch auto-building for an Amplify app.
    #
    # @option params [Boolean] :enable_branch_auto_deletion
    #   Automatically disconnects a branch in the Amplify console when you
    #   delete a branch from your Git repository.
    #
    # @option params [Boolean] :enable_basic_auth
    #   Enables basic authorization for an Amplify app.
    #
    # @option params [String] :basic_auth_credentials
    #   The basic authorization credentials for an Amplify app. You must
    #   base64-encode the authorization credentials and provide them in the
    #   format `user:password`.
    #
    # @option params [Array<Types::CustomRule>] :custom_rules
    #   The custom redirect and rewrite rules for an Amplify app.
    #
    # @option params [String] :build_spec
    #   The build specification (build spec) for an Amplify app.
    #
    # @option params [String] :custom_headers
    #   The custom HTTP headers for an Amplify app.
    #
    # @option params [Boolean] :enable_auto_branch_creation
    #   Enables automated branch creation for an Amplify app.
    #
    # @option params [Array<String>] :auto_branch_creation_patterns
    #   Describes the automated branch creation glob patterns for an Amplify
    #   app.
    #
    # @option params [Types::AutoBranchCreationConfig] :auto_branch_creation_config
    #   The automated branch creation configuration for an Amplify app.
    #
    # @option params [String] :repository
    #   The name of the Git repository for an Amplify app.
    #
    # @option params [String] :oauth_token
    #   The OAuth token for a third-party source control system for an Amplify
    #   app. The OAuth token is used to create a webhook and a read-only
    #   deploy key using SSH cloning. The OAuth token is not stored.
    #
    #   Use `oauthToken` for repository providers other than GitHub, such as
    #   Bitbucket or CodeCommit.
    #
    #   To authorize access to GitHub as your repository provider, use
    #   `accessToken`.
    #
    #   You must specify either `oauthToken` or `accessToken` when you update
    #   an app.
    #
    #   Existing Amplify apps deployed from a GitHub repository using OAuth
    #   continue to work with CI/CD. However, we strongly recommend that you
    #   migrate these apps to use the GitHub App. For more information, see
    #   [Migrating an existing OAuth app to the Amplify GitHub App][1] in the
    #   *Amplify User Guide* .
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth
    #
    # @option params [String] :access_token
    #   The personal access token for a GitHub repository for an Amplify app.
    #   The personal access token is used to authorize access to a GitHub
    #   repository using the Amplify GitHub App. The token is not stored.
    #
    #   Use `accessToken` for GitHub repositories only. To authorize access to
    #   a repository provider such as Bitbucket or CodeCommit, use
    #   `oauthToken`.
    #
    #   You must specify either `accessToken` or `oauthToken` when you update
    #   an app.
    #
    #   Existing Amplify apps deployed from a GitHub repository using OAuth
    #   continue to work with CI/CD. However, we strongly recommend that you
    #   migrate these apps to use the GitHub App. For more information, see
    #   [Migrating an existing OAuth app to the Amplify GitHub App][1] in the
    #   *Amplify User Guide* .
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth
    #
    # @option params [Types::JobConfig] :job_config
    #   Describes the configuration details that apply to the jobs for an
    #   Amplify app.
    #
    # @option params [Types::CacheConfig] :cache_config
    #   The cache configuration for the Amplify app.
    #
    # @return [Types::UpdateAppResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppResult#app #app} => Types::App
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app({
    #     app_id: "AppId", # required
    #     name: "Name",
    #     description: "Description",
    #     platform: "WEB", # accepts WEB, WEB_DYNAMIC, WEB_COMPUTE
    #     compute_role_arn: "ComputeRoleArn",
    #     iam_service_role_arn: "ServiceRoleArn",
    #     environment_variables: {
    #       "EnvKey" => "EnvValue",
    #     },
    #     enable_branch_auto_build: false,
    #     enable_branch_auto_deletion: false,
    #     enable_basic_auth: false,
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     custom_rules: [
    #       {
    #         source: "Source", # required
    #         target: "Target", # required
    #         status: "Status",
    #         condition: "Condition",
    #       },
    #     ],
    #     build_spec: "BuildSpec",
    #     custom_headers: "CustomHeaders",
    #     enable_auto_branch_creation: false,
    #     auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #     auto_branch_creation_config: {
    #       stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #       framework: "Framework",
    #       enable_auto_build: false,
    #       environment_variables: {
    #         "EnvKey" => "EnvValue",
    #       },
    #       basic_auth_credentials: "BasicAuthCredentials",
    #       enable_basic_auth: false,
    #       enable_performance_mode: false,
    #       build_spec: "BuildSpec",
    #       enable_pull_request_preview: false,
    #       pull_request_environment_name: "PullRequestEnvironmentName",
    #     },
    #     repository: "Repository",
    #     oauth_token: "OauthToken",
    #     access_token: "AccessToken",
    #     job_config: {
    #       build_compute_type: "STANDARD_8GB", # required, accepts STANDARD_8GB, LARGE_16GB, XLARGE_72GB
    #     },
    #     cache_config: {
    #       type: "AMPLIFY_MANAGED", # required, accepts AMPLIFY_MANAGED, AMPLIFY_MANAGED_NO_COOKIES
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app.app_id #=> String
    #   resp.app.app_arn #=> String
    #   resp.app.name #=> String
    #   resp.app.tags #=> Hash
    #   resp.app.tags["TagKey"] #=> String
    #   resp.app.description #=> String
    #   resp.app.repository #=> String
    #   resp.app.platform #=> String, one of "WEB", "WEB_DYNAMIC", "WEB_COMPUTE"
    #   resp.app.create_time #=> Time
    #   resp.app.update_time #=> Time
    #   resp.app.compute_role_arn #=> String
    #   resp.app.iam_service_role_arn #=> String
    #   resp.app.environment_variables #=> Hash
    #   resp.app.environment_variables["EnvKey"] #=> String
    #   resp.app.default_domain #=> String
    #   resp.app.enable_branch_auto_build #=> Boolean
    #   resp.app.enable_branch_auto_deletion #=> Boolean
    #   resp.app.enable_basic_auth #=> Boolean
    #   resp.app.basic_auth_credentials #=> String
    #   resp.app.custom_rules #=> Array
    #   resp.app.custom_rules[0].source #=> String
    #   resp.app.custom_rules[0].target #=> String
    #   resp.app.custom_rules[0].status #=> String
    #   resp.app.custom_rules[0].condition #=> String
    #   resp.app.production_branch.last_deploy_time #=> Time
    #   resp.app.production_branch.status #=> String
    #   resp.app.production_branch.thumbnail_url #=> String
    #   resp.app.production_branch.branch_name #=> String
    #   resp.app.build_spec #=> String
    #   resp.app.custom_headers #=> String
    #   resp.app.enable_auto_branch_creation #=> Boolean
    #   resp.app.auto_branch_creation_patterns #=> Array
    #   resp.app.auto_branch_creation_patterns[0] #=> String
    #   resp.app.auto_branch_creation_config.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.app.auto_branch_creation_config.framework #=> String
    #   resp.app.auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.app.auto_branch_creation_config.environment_variables #=> Hash
    #   resp.app.auto_branch_creation_config.environment_variables["EnvKey"] #=> String
    #   resp.app.auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.app.auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.app.auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.app.auto_branch_creation_config.build_spec #=> String
    #   resp.app.auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.app.auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.app.repository_clone_method #=> String, one of "SSH", "TOKEN", "SIGV4"
    #   resp.app.cache_config.type #=> String, one of "AMPLIFY_MANAGED", "AMPLIFY_MANAGED_NO_COOKIES"
    #   resp.app.webhook_create_time #=> Time
    #   resp.app.waf_configuration.web_acl_arn #=> String
    #   resp.app.waf_configuration.waf_status #=> String, one of "ASSOCIATING", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCESS", "DISASSOCIATING", "DISASSOCIATION_FAILED"
    #   resp.app.waf_configuration.status_reason #=> String
    #   resp.app.job_config.build_compute_type #=> String, one of "STANDARD_8GB", "LARGE_16GB", "XLARGE_72GB"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateApp AWS API Documentation
    #
    # @overload update_app(params = {})
    # @param [Hash] params ({})
    def update_app(params = {}, options = {})
      req = build_request(:update_app, params)
      req.send_request(options)
    end

    # Updates a branch for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :branch_name
    #   The name of the branch.
    #
    # @option params [String] :description
    #   The description for the branch.
    #
    # @option params [String] :framework
    #   The framework for the branch.
    #
    # @option params [String] :stage
    #   Describes the current stage for the branch.
    #
    # @option params [Boolean] :enable_notification
    #   Enables notifications for the branch.
    #
    # @option params [Boolean] :enable_auto_build
    #   Enables auto building for the branch.
    #
    # @option params [Boolean] :enable_skew_protection
    #   Specifies whether the skew protection feature is enabled for the
    #   branch.
    #
    #   Deployment skew protection is available to Amplify applications to
    #   eliminate version skew issues between client and servers in web
    #   applications. When you apply skew protection to a branch, you can
    #   ensure that your clients always interact with the correct version of
    #   server-side assets, regardless of when a deployment occurs. For more
    #   information about skew protection, see [Skew protection for Amplify
    #   deployments][1] in the *Amplify User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html
    #
    # @option params [Hash<String,String>] :environment_variables
    #   The environment variables for the branch.
    #
    # @option params [String] :basic_auth_credentials
    #   The basic authorization credentials for the branch. You must
    #   base64-encode the authorization credentials and provide them in the
    #   format `user:password`.
    #
    # @option params [Boolean] :enable_basic_auth
    #   Enables basic authorization for the branch.
    #
    # @option params [Boolean] :enable_performance_mode
    #   Enables performance mode for the branch.
    #
    #   Performance mode optimizes for faster hosting performance by keeping
    #   content cached at the edge for a longer interval. When performance
    #   mode is enabled, hosting configuration or code changes can take up to
    #   10 minutes to roll out.
    #
    # @option params [String] :build_spec
    #   The build specification (build spec) for the branch.
    #
    # @option params [String] :ttl
    #   The content Time to Live (TTL) for the website in seconds.
    #
    # @option params [String] :display_name
    #   The display name for a branch. This is used as the default domain
    #   prefix.
    #
    # @option params [Boolean] :enable_pull_request_preview
    #   Enables pull request previews for this branch.
    #
    # @option params [String] :pull_request_environment_name
    #   The Amplify environment name for the pull request.
    #
    # @option params [String] :backend_environment_arn
    #   The Amazon Resource Name (ARN) for a backend environment that is part
    #   of a Gen 1 Amplify app.
    #
    #   This field is available to Amplify Gen 1 apps only where the backend
    #   is created using Amplify Studio or the Amplify command line interface
    #   (CLI).
    #
    # @option params [Types::Backend] :backend
    #   The backend for a `Branch` of an Amplify app. Use for a backend
    #   created from an CloudFormation stack.
    #
    #   This field is available to Amplify Gen 2 apps only. When you deploy an
    #   application with Amplify Gen 2, you provision the app's backend
    #   infrastructure using Typescript code.
    #
    # @option params [String] :compute_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to assign to a branch
    #   of an SSR app. The SSR Compute role allows the Amplify Hosting compute
    #   service to securely access specific Amazon Web Services resources
    #   based on the role's permissions. For more information about the SSR
    #   Compute role, see [Adding an SSR Compute role][1] in the *Amplify User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html
    #
    # @return [Types::UpdateBranchResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBranchResult#branch #branch} => Types::Branch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_branch({
    #     app_id: "AppId", # required
    #     branch_name: "BranchName", # required
    #     description: "Description",
    #     framework: "Framework",
    #     stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #     enable_notification: false,
    #     enable_auto_build: false,
    #     enable_skew_protection: false,
    #     environment_variables: {
    #       "EnvKey" => "EnvValue",
    #     },
    #     basic_auth_credentials: "BasicAuthCredentials",
    #     enable_basic_auth: false,
    #     enable_performance_mode: false,
    #     build_spec: "BuildSpec",
    #     ttl: "TTL",
    #     display_name: "DisplayName",
    #     enable_pull_request_preview: false,
    #     pull_request_environment_name: "PullRequestEnvironmentName",
    #     backend_environment_arn: "BackendEnvironmentArn",
    #     backend: {
    #       stack_arn: "StackArn",
    #     },
    #     compute_role_arn: "ComputeRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.branch.branch_arn #=> String
    #   resp.branch.branch_name #=> String
    #   resp.branch.description #=> String
    #   resp.branch.tags #=> Hash
    #   resp.branch.tags["TagKey"] #=> String
    #   resp.branch.stage #=> String, one of "PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"
    #   resp.branch.display_name #=> String
    #   resp.branch.enable_notification #=> Boolean
    #   resp.branch.create_time #=> Time
    #   resp.branch.update_time #=> Time
    #   resp.branch.environment_variables #=> Hash
    #   resp.branch.environment_variables["EnvKey"] #=> String
    #   resp.branch.enable_auto_build #=> Boolean
    #   resp.branch.enable_skew_protection #=> Boolean
    #   resp.branch.custom_domains #=> Array
    #   resp.branch.custom_domains[0] #=> String
    #   resp.branch.framework #=> String
    #   resp.branch.active_job_id #=> String
    #   resp.branch.total_number_of_jobs #=> String
    #   resp.branch.enable_basic_auth #=> Boolean
    #   resp.branch.enable_performance_mode #=> Boolean
    #   resp.branch.thumbnail_url #=> String
    #   resp.branch.basic_auth_credentials #=> String
    #   resp.branch.build_spec #=> String
    #   resp.branch.ttl #=> String
    #   resp.branch.associated_resources #=> Array
    #   resp.branch.associated_resources[0] #=> String
    #   resp.branch.enable_pull_request_preview #=> Boolean
    #   resp.branch.pull_request_environment_name #=> String
    #   resp.branch.destination_branch #=> String
    #   resp.branch.source_branch #=> String
    #   resp.branch.backend_environment_arn #=> String
    #   resp.branch.backend.stack_arn #=> String
    #   resp.branch.compute_role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateBranch AWS API Documentation
    #
    # @overload update_branch(params = {})
    # @param [Hash] params ({})
    def update_branch(params = {}, options = {})
      req = build_request(:update_branch, params)
      req.send_request(options)
    end

    # Creates a new domain association for an Amplify app.
    #
    # @option params [required, String] :app_id
    #   The unique ID for an Amplify app.
    #
    # @option params [required, String] :domain_name
    #   The name of the domain.
    #
    # @option params [Boolean] :enable_auto_sub_domain
    #   Enables the automated creation of subdomains for branches.
    #
    # @option params [Array<Types::SubDomainSetting>] :sub_domain_settings
    #   Describes the settings for the subdomain.
    #
    # @option params [Array<String>] :auto_sub_domain_creation_patterns
    #   Sets the branch patterns for automatic subdomain creation.
    #
    # @option params [String] :auto_sub_domain_iam_role
    #   The required AWS Identity and Access Management (IAM) service role for
    #   the Amazon Resource Name (ARN) for automatically creating subdomains.
    #
    # @option params [Types::CertificateSettings] :certificate_settings
    #   The type of SSL/TLS certificate to use for your custom domain.
    #
    # @return [Types::UpdateDomainAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainAssociationResult#domain_association #domain_association} => Types::DomainAssociation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_association({
    #     app_id: "AppId", # required
    #     domain_name: "DomainName", # required
    #     enable_auto_sub_domain: false,
    #     sub_domain_settings: [
    #       {
    #         prefix: "DomainPrefix", # required
    #         branch_name: "BranchName", # required
    #       },
    #     ],
    #     auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #     auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #     certificate_settings: {
    #       type: "AMPLIFY_MANAGED", # required, accepts AMPLIFY_MANAGED, CUSTOM
    #       custom_certificate_arn: "CertificateArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_association.domain_association_arn #=> String
    #   resp.domain_association.domain_name #=> String
    #   resp.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.domain_association.auto_sub_domain_creation_patterns #=> Array
    #   resp.domain_association.auto_sub_domain_creation_patterns[0] #=> String
    #   resp.domain_association.auto_sub_domain_iam_role #=> String
    #   resp.domain_association.domain_status #=> String, one of "PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"
    #   resp.domain_association.update_status #=> String, one of "REQUESTING_CERTIFICATE", "PENDING_VERIFICATION", "IMPORTING_CUSTOM_CERTIFICATE", "PENDING_DEPLOYMENT", "AWAITING_APP_CNAME", "UPDATE_COMPLETE", "UPDATE_FAILED"
    #   resp.domain_association.status_reason #=> String
    #   resp.domain_association.certificate_verification_dns_record #=> String
    #   resp.domain_association.sub_domains #=> Array
    #   resp.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.domain_association.sub_domains[0].dns_record #=> String
    #   resp.domain_association.certificate.type #=> String, one of "AMPLIFY_MANAGED", "CUSTOM"
    #   resp.domain_association.certificate.custom_certificate_arn #=> String
    #   resp.domain_association.certificate.certificate_verification_dns_record #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateDomainAssociation AWS API Documentation
    #
    # @overload update_domain_association(params = {})
    # @param [Hash] params ({})
    def update_domain_association(params = {}, options = {})
      req = build_request(:update_domain_association, params)
      req.send_request(options)
    end

    # Updates a webhook.
    #
    # @option params [required, String] :webhook_id
    #   The unique ID for a webhook.
    #
    # @option params [String] :branch_name
    #   The name for a branch that is part of an Amplify app.
    #
    # @option params [String] :description
    #   The description for a webhook.
    #
    # @return [Types::UpdateWebhookResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWebhookResult#webhook #webhook} => Types::Webhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_webhook({
    #     webhook_id: "WebhookId", # required
    #     branch_name: "BranchName",
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.webhook_arn #=> String
    #   resp.webhook.webhook_id #=> String
    #   resp.webhook.webhook_url #=> String
    #   resp.webhook.app_id #=> String
    #   resp.webhook.branch_name #=> String
    #   resp.webhook.description #=> String
    #   resp.webhook.create_time #=> Time
    #   resp.webhook.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateWebhook AWS API Documentation
    #
    # @overload update_webhook(params = {})
    # @param [Hash] params ({})
    def update_webhook(params = {}, options = {})
      req = build_request(:update_webhook, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Amplify')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-amplify'
      context[:gem_version] = '1.88.0'
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
