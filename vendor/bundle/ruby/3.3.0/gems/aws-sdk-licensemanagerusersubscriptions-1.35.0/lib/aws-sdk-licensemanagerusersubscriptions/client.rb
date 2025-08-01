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

module Aws::LicenseManagerUserSubscriptions
  # An API client for LicenseManagerUserSubscriptions.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::LicenseManagerUserSubscriptions::Client.new(
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

    @identifier = :licensemanagerusersubscriptions

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
    add_plugin(Aws::LicenseManagerUserSubscriptions::Plugins::Endpoints)

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
    #   @option options [Aws::LicenseManagerUserSubscriptions::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::LicenseManagerUserSubscriptions::EndpointParameters`.
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

    # Associates the user to an EC2 instance to utilize user-based
    # subscriptions.
    #
    # <note markdown="1"> Your estimated bill for charges on the number of users and related
    # costs will take 48 hours to appear for billing periods that haven't
    # closed (marked as **Pending** billing status) in Amazon Web Services
    # Billing. For more information, see [Viewing your monthly charges][1]
    # in the *Amazon Web Services Billing User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html
    #
    # @option params [String] :domain
    #   The domain name of the Active Directory that contains information for
    #   the user to associate.
    #
    # @option params [required, Types::IdentityProvider] :identity_provider
    #   The identity provider for the user.
    #
    # @option params [required, String] :instance_id
    #   The ID of the EC2 instance that provides the user-based subscription.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that apply for the user association.
    #
    # @option params [required, String] :username
    #   The user name from the identity provider.
    #
    # @return [Types::AssociateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateUserResponse#instance_user_summary #instance_user_summary} => Types::InstanceUserSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_user({
    #     domain: "String",
    #     identity_provider: { # required
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     instance_id: "String", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #     username: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_user_summary.association_date #=> String
    #   resp.instance_user_summary.disassociation_date #=> String
    #   resp.instance_user_summary.domain #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.instance_user_summary.instance_id #=> String
    #   resp.instance_user_summary.instance_user_arn #=> String
    #   resp.instance_user_summary.status #=> String
    #   resp.instance_user_summary.status_message #=> String
    #   resp.instance_user_summary.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/AssociateUser AWS API Documentation
    #
    # @overload associate_user(params = {})
    # @param [Hash] params ({})
    def associate_user(params = {}, options = {})
      req = build_request(:associate_user, params)
      req.send_request(options)
    end

    # Creates a network endpoint for the Remote Desktop Services (RDS)
    # license server.
    #
    # @option params [required, String] :identity_provider_arn
    #   The Amazon Resource Name (ARN) that identifies the `IdentityProvider`
    #   resource that contains details about a registered identity provider.
    #   In the case of Active Directory, that can be a self-managed Active
    #   Directory or an Amazon Web Services Managed Active Directory that
    #   contains user identity details.
    #
    # @option params [required, Types::LicenseServerSettings] :license_server_settings
    #   The `LicenseServerSettings` resource to create for the endpoint. The
    #   settings include the type of license server and the Secrets Manager
    #   secret that enables administrators to add or remove users associated
    #   with the license server.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that apply for the license server endpoint.
    #
    # @return [Types::CreateLicenseServerEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLicenseServerEndpointResponse#identity_provider_arn #identity_provider_arn} => String
    #   * {Types::CreateLicenseServerEndpointResponse#license_server_endpoint_arn #license_server_endpoint_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_server_endpoint({
    #     identity_provider_arn: "Arn", # required
    #     license_server_settings: { # required
    #       server_settings: { # required
    #         rds_sal_settings: {
    #           rds_sal_credentials_provider: { # required
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #         },
    #       },
    #       server_type: "RDS_SAL", # required, accepts RDS_SAL
    #     },
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_arn #=> String
    #   resp.license_server_endpoint_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/CreateLicenseServerEndpoint AWS API Documentation
    #
    # @overload create_license_server_endpoint(params = {})
    # @param [Hash] params ({})
    def create_license_server_endpoint(params = {}, options = {})
      req = build_request(:create_license_server_endpoint, params)
      req.send_request(options)
    end

    # Deletes a `LicenseServerEndpoint` resource.
    #
    # @option params [required, String] :license_server_endpoint_arn
    #   The Amazon Resource Name (ARN) that identifies the
    #   `LicenseServerEndpoint` resource to delete.
    #
    # @option params [required, String] :server_type
    #   The type of License Server that the delete request refers to.
    #
    # @return [Types::DeleteLicenseServerEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLicenseServerEndpointResponse#license_server_endpoint #license_server_endpoint} => Types::LicenseServerEndpoint
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license_server_endpoint({
    #     license_server_endpoint_arn: "Arn", # required
    #     server_type: "RDS_SAL", # required, accepts RDS_SAL
    #   })
    #
    # @example Response structure
    #
    #   resp.license_server_endpoint.creation_time #=> Time
    #   resp.license_server_endpoint.identity_provider_arn #=> String
    #   resp.license_server_endpoint.license_server_endpoint_arn #=> String
    #   resp.license_server_endpoint.license_server_endpoint_id #=> String
    #   resp.license_server_endpoint.license_server_endpoint_provisioning_status #=> String, one of "PROVISIONING", "PROVISIONING_FAILED", "PROVISIONED", "DELETING", "DELETION_FAILED", "DELETED"
    #   resp.license_server_endpoint.license_servers #=> Array
    #   resp.license_server_endpoint.license_servers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "NOT_APPLICABLE"
    #   resp.license_server_endpoint.license_servers[0].ipv_4_address #=> String
    #   resp.license_server_endpoint.license_servers[0].provisioning_status #=> String, one of "PROVISIONING", "PROVISIONING_FAILED", "PROVISIONED", "DELETING", "DELETION_FAILED", "DELETED"
    #   resp.license_server_endpoint.server_endpoint.endpoint #=> String
    #   resp.license_server_endpoint.server_type #=> String, one of "RDS_SAL"
    #   resp.license_server_endpoint.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DeleteLicenseServerEndpoint AWS API Documentation
    #
    # @overload delete_license_server_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_license_server_endpoint(params = {}, options = {})
      req = build_request(:delete_license_server_endpoint, params)
      req.send_request(options)
    end

    # Deregisters the Active Directory identity provider from License
    # Manager user-based subscriptions.
    #
    # @option params [Types::IdentityProvider] :identity_provider
    #   An object that specifies details for the Active Directory identity
    #   provider.
    #
    # @option params [String] :identity_provider_arn
    #   The Amazon Resource Name (ARN) that identifies the identity provider
    #   to deregister.
    #
    # @option params [String] :product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #
    # @return [Types::DeregisterIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterIdentityProviderResponse#identity_provider_summary #identity_provider_summary} => Types::IdentityProviderSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_identity_provider({
    #     identity_provider: {
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     identity_provider_arn: "Arn",
    #     product: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_summary.failure_message #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.identity_provider_summary.identity_provider_arn #=> String
    #   resp.identity_provider_summary.product #=> String
    #   resp.identity_provider_summary.settings.security_group_id #=> String
    #   resp.identity_provider_summary.settings.subnets #=> Array
    #   resp.identity_provider_summary.settings.subnets[0] #=> String
    #   resp.identity_provider_summary.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DeregisterIdentityProvider AWS API Documentation
    #
    # @overload deregister_identity_provider(params = {})
    # @param [Hash] params ({})
    def deregister_identity_provider(params = {}, options = {})
      req = build_request(:deregister_identity_provider, params)
      req.send_request(options)
    end

    # Disassociates the user from an EC2 instance providing user-based
    # subscriptions.
    #
    # @option params [String] :domain
    #   The domain name of the Active Directory that contains information for
    #   the user to disassociate.
    #
    # @option params [Types::IdentityProvider] :identity_provider
    #   An object that specifies details for the Active Directory identity
    #   provider.
    #
    # @option params [String] :instance_id
    #   The ID of the EC2 instance which provides user-based subscriptions.
    #
    # @option params [String] :instance_user_arn
    #   The Amazon Resource Name (ARN) of the user to disassociate from the
    #   EC2 instance.
    #
    # @option params [String] :username
    #   The user name from the Active Directory identity provider for the
    #   user.
    #
    # @return [Types::DisassociateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateUserResponse#instance_user_summary #instance_user_summary} => Types::InstanceUserSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_user({
    #     domain: "String",
    #     identity_provider: {
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     instance_id: "String",
    #     instance_user_arn: "Arn",
    #     username: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_user_summary.association_date #=> String
    #   resp.instance_user_summary.disassociation_date #=> String
    #   resp.instance_user_summary.domain #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.instance_user_summary.identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.instance_user_summary.instance_id #=> String
    #   resp.instance_user_summary.instance_user_arn #=> String
    #   resp.instance_user_summary.status #=> String
    #   resp.instance_user_summary.status_message #=> String
    #   resp.instance_user_summary.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/DisassociateUser AWS API Documentation
    #
    # @overload disassociate_user(params = {})
    # @param [Hash] params ({})
    def disassociate_user(params = {}, options = {})
      req = build_request(:disassociate_user, params)
      req.send_request(options)
    end

    # Lists the Active Directory identity providers for user-based
    # subscriptions.
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can use the following filters to streamline results:
    #
    #   * Product
    #
    #   * DirectoryId
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListIdentityProvidersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityProvidersResponse#identity_provider_summaries #identity_provider_summaries} => Array&lt;Types::IdentityProviderSummary&gt;
    #   * {Types::ListIdentityProvidersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_providers({
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_summaries #=> Array
    #   resp.identity_provider_summaries[0].failure_message #=> String
    #   resp.identity_provider_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.identity_provider_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.identity_provider_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.identity_provider_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.identity_provider_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.identity_provider_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.identity_provider_summaries[0].identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.identity_provider_summaries[0].identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.identity_provider_summaries[0].identity_provider_arn #=> String
    #   resp.identity_provider_summaries[0].product #=> String
    #   resp.identity_provider_summaries[0].settings.security_group_id #=> String
    #   resp.identity_provider_summaries[0].settings.subnets #=> Array
    #   resp.identity_provider_summaries[0].settings.subnets[0] #=> String
    #   resp.identity_provider_summaries[0].status #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListIdentityProviders AWS API Documentation
    #
    # @overload list_identity_providers(params = {})
    # @param [Hash] params ({})
    def list_identity_providers(params = {}, options = {})
      req = build_request(:list_identity_providers, params)
      req.send_request(options)
    end

    # Lists the EC2 instances providing user-based subscriptions.
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can use the following filters to streamline results:
    #
    #   * Status
    #
    #   * InstanceId
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesResponse#instance_summaries #instance_summaries} => Array&lt;Types::InstanceSummary&gt;
    #   * {Types::ListInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_summaries #=> Array
    #   resp.instance_summaries[0].instance_id #=> String
    #   resp.instance_summaries[0].last_status_check_date #=> String
    #   resp.instance_summaries[0].products #=> Array
    #   resp.instance_summaries[0].products[0] #=> String
    #   resp.instance_summaries[0].status #=> String
    #   resp.instance_summaries[0].status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # List the Remote Desktop Services (RDS) License Server endpoints
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can use the following filters to streamline results:
    #
    #   * IdentityProviderArn
    #
    #   ^
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListLicenseServerEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLicenseServerEndpointsResponse#license_server_endpoints #license_server_endpoints} => Array&lt;Types::LicenseServerEndpoint&gt;
    #   * {Types::ListLicenseServerEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_server_endpoints({
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String",
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.license_server_endpoints #=> Array
    #   resp.license_server_endpoints[0].creation_time #=> Time
    #   resp.license_server_endpoints[0].identity_provider_arn #=> String
    #   resp.license_server_endpoints[0].license_server_endpoint_arn #=> String
    #   resp.license_server_endpoints[0].license_server_endpoint_id #=> String
    #   resp.license_server_endpoints[0].license_server_endpoint_provisioning_status #=> String, one of "PROVISIONING", "PROVISIONING_FAILED", "PROVISIONED", "DELETING", "DELETION_FAILED", "DELETED"
    #   resp.license_server_endpoints[0].license_servers #=> Array
    #   resp.license_server_endpoints[0].license_servers[0].health_status #=> String, one of "HEALTHY", "UNHEALTHY", "NOT_APPLICABLE"
    #   resp.license_server_endpoints[0].license_servers[0].ipv_4_address #=> String
    #   resp.license_server_endpoints[0].license_servers[0].provisioning_status #=> String, one of "PROVISIONING", "PROVISIONING_FAILED", "PROVISIONED", "DELETING", "DELETION_FAILED", "DELETED"
    #   resp.license_server_endpoints[0].server_endpoint.endpoint #=> String
    #   resp.license_server_endpoints[0].server_type #=> String, one of "RDS_SAL"
    #   resp.license_server_endpoints[0].status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListLicenseServerEndpoints AWS API Documentation
    #
    # @overload list_license_server_endpoints(params = {})
    # @param [Hash] params ({})
    def list_license_server_endpoints(params = {}, options = {})
      req = build_request(:list_license_server_endpoints, params)
      req.send_request(options)
    end

    # Lists the user-based subscription products available from an identity
    # provider.
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can use the following filters to streamline results:
    #
    #   * Status
    #
    #   * Username
    #
    #   * Domain
    #
    # @option params [required, Types::IdentityProvider] :identity_provider
    #   An object that specifies details for the identity provider.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @option params [String] :product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #
    # @return [Types::ListProductSubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProductSubscriptionsResponse#next_token #next_token} => String
    #   * {Types::ListProductSubscriptionsResponse#product_user_summaries #product_user_summaries} => Array&lt;Types::ProductUserSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_product_subscriptions({
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String",
    #       },
    #     ],
    #     identity_provider: { # required
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #     product: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.product_user_summaries #=> Array
    #   resp.product_user_summaries[0].domain #=> String
    #   resp.product_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.product_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.product_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.product_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.product_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.product_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.product_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.product_user_summaries[0].identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.product_user_summaries[0].product #=> String
    #   resp.product_user_summaries[0].product_user_arn #=> String
    #   resp.product_user_summaries[0].status #=> String
    #   resp.product_user_summaries[0].status_message #=> String
    #   resp.product_user_summaries[0].subscription_end_date #=> String
    #   resp.product_user_summaries[0].subscription_start_date #=> String
    #   resp.product_user_summaries[0].username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListProductSubscriptions AWS API Documentation
    #
    # @overload list_product_subscriptions(params = {})
    # @param [Hash] params ({})
    def list_product_subscriptions(params = {}, options = {})
      req = build_request(:list_product_subscriptions, params)
      req.send_request(options)
    end

    # Returns the list of tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want to
    #   retrieve.
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
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists user associations for an identity provider.
    #
    # @option params [Array<Types::Filter>] :filters
    #   You can use the following filters to streamline results:
    #
    #   * Status
    #
    #   * Username
    #
    #   * Domain
    #
    # @option params [required, Types::IdentityProvider] :identity_provider
    #   An object that specifies details for the identity provider.
    #
    # @option params [required, String] :instance_id
    #   The ID of the EC2 instance, which provides user-based subscriptions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return from a single request.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the nextToken
    #   from a previously truncated response.
    #
    # @return [Types::ListUserAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserAssociationsResponse#instance_user_summaries #instance_user_summaries} => Array&lt;Types::InstanceUserSummary&gt;
    #   * {Types::ListUserAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_associations({
    #     filters: [
    #       {
    #         attribute: "String",
    #         operation: "String",
    #         value: "String",
    #       },
    #     ],
    #     identity_provider: { # required
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     instance_id: "String", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_user_summaries #=> Array
    #   resp.instance_user_summaries[0].association_date #=> String
    #   resp.instance_user_summaries[0].disassociation_date #=> String
    #   resp.instance_user_summaries[0].domain #=> String
    #   resp.instance_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.instance_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.instance_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.instance_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.instance_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.instance_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.instance_user_summaries[0].identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.instance_user_summaries[0].identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.instance_user_summaries[0].instance_id #=> String
    #   resp.instance_user_summaries[0].instance_user_arn #=> String
    #   resp.instance_user_summaries[0].status #=> String
    #   resp.instance_user_summaries[0].status_message #=> String
    #   resp.instance_user_summaries[0].username #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/ListUserAssociations AWS API Documentation
    #
    # @overload list_user_associations(params = {})
    # @param [Hash] params ({})
    def list_user_associations(params = {}, options = {})
      req = build_request(:list_user_associations, params)
      req.send_request(options)
    end

    # Registers an identity provider for user-based subscriptions.
    #
    # @option params [required, Types::IdentityProvider] :identity_provider
    #   An object that specifies details for the identity provider to
    #   register.
    #
    # @option params [required, String] :product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #
    # @option params [Types::Settings] :settings
    #   The registered identity provider’s product related configuration
    #   settings such as the subnets to provision VPC endpoints.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that apply to the identity provider's registration.
    #
    # @return [Types::RegisterIdentityProviderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterIdentityProviderResponse#identity_provider_summary #identity_provider_summary} => Types::IdentityProviderSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_identity_provider({
    #     identity_provider: { # required
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     product: "String", # required
    #     settings: {
    #       security_group_id: "SecurityGroup", # required
    #       subnets: ["Subnet"], # required
    #     },
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_summary.failure_message #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.identity_provider_summary.identity_provider_arn #=> String
    #   resp.identity_provider_summary.product #=> String
    #   resp.identity_provider_summary.settings.security_group_id #=> String
    #   resp.identity_provider_summary.settings.subnets #=> Array
    #   resp.identity_provider_summary.settings.subnets[0] #=> String
    #   resp.identity_provider_summary.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/RegisterIdentityProvider AWS API Documentation
    #
    # @overload register_identity_provider(params = {})
    # @param [Hash] params ({})
    def register_identity_provider(params = {}, options = {})
      req = build_request(:register_identity_provider, params)
      req.send_request(options)
    end

    # Starts a product subscription for a user with the specified identity
    # provider.
    #
    # <note markdown="1"> Your estimated bill for charges on the number of users and related
    # costs will take 48 hours to appear for billing periods that haven't
    # closed (marked as **Pending** billing status) in Amazon Web Services
    # Billing. For more information, see [Viewing your monthly charges][1]
    # in the *Amazon Web Services Billing User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html
    #
    # @option params [String] :domain
    #   The domain name of the Active Directory that contains the user for
    #   whom to start the product subscription.
    #
    # @option params [required, Types::IdentityProvider] :identity_provider
    #   An object that specifies details for the identity provider.
    #
    # @option params [required, String] :product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #
    # @option params [Hash<String,String>] :tags
    #   The tags that apply to the product subscription.
    #
    # @option params [required, String] :username
    #   The user name from the identity provider of the user.
    #
    # @return [Types::StartProductSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartProductSubscriptionResponse#product_user_summary #product_user_summary} => Types::ProductUserSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_product_subscription({
    #     domain: "String",
    #     identity_provider: { # required
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     product: "String", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #     username: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_user_summary.domain #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.product_user_summary.product #=> String
    #   resp.product_user_summary.product_user_arn #=> String
    #   resp.product_user_summary.status #=> String
    #   resp.product_user_summary.status_message #=> String
    #   resp.product_user_summary.subscription_end_date #=> String
    #   resp.product_user_summary.subscription_start_date #=> String
    #   resp.product_user_summary.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/StartProductSubscription AWS API Documentation
    #
    # @overload start_product_subscription(params = {})
    # @param [Hash] params ({})
    def start_product_subscription(params = {}, options = {})
      req = build_request(:start_product_subscription, params)
      req.send_request(options)
    end

    # Stops a product subscription for a user with the specified identity
    # provider.
    #
    # @option params [String] :domain
    #   The domain name of the Active Directory that contains the user for
    #   whom to stop the product subscription.
    #
    # @option params [Types::IdentityProvider] :identity_provider
    #   An object that specifies details for the identity provider.
    #
    # @option params [String] :product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #
    # @option params [String] :product_user_arn
    #   The Amazon Resource Name (ARN) of the product user.
    #
    # @option params [String] :username
    #   The user name from the identity provider for the user.
    #
    # @return [Types::StopProductSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopProductSubscriptionResponse#product_user_summary #product_user_summary} => Types::ProductUserSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_product_subscription({
    #     domain: "String",
    #     identity_provider: {
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     product: "String",
    #     product_user_arn: "Arn",
    #     username: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.product_user_summary.domain #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.product_user_summary.identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.product_user_summary.product #=> String
    #   resp.product_user_summary.product_user_arn #=> String
    #   resp.product_user_summary.status #=> String
    #   resp.product_user_summary.status_message #=> String
    #   resp.product_user_summary.subscription_end_date #=> String
    #   resp.product_user_summary.subscription_start_date #=> String
    #   resp.product_user_summary.username #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/StopProductSubscription AWS API Documentation
    #
    # @overload stop_product_subscription(params = {})
    # @param [Hash] params ({})
    def stop_product_subscription(params = {}, options = {})
      req = build_request(:stop_product_subscription, params)
      req.send_request(options)
    end

    # Adds tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to apply to the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates additional product configuration settings for the registered
    # identity provider.
    #
    # @option params [Types::IdentityProvider] :identity_provider
    #   Refers to an identity provider.
    #
    # @option params [String] :identity_provider_arn
    #   The Amazon Resource Name (ARN) of the identity provider to update.
    #
    # @option params [String] :product
    #   The name of the user-based subscription product.
    #
    #   Valid values: `VISUAL_STUDIO_ENTERPRISE` \|
    #   `VISUAL_STUDIO_PROFESSIONAL` \| `OFFICE_PROFESSIONAL_PLUS` \|
    #   `REMOTE_DESKTOP_SERVICES`
    #
    # @option params [required, Types::UpdateSettings] :update_settings
    #   Updates the registered identity provider’s product related
    #   configuration settings. You can update any combination of settings in
    #   a single operation such as the:
    #
    #   * Subnets which you want to add to provision VPC endpoints.
    #
    #   * Subnets which you want to remove the VPC endpoints from.
    #
    #   * Security group ID which permits traffic to the VPC endpoints.
    #
    # @return [Types::UpdateIdentityProviderSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIdentityProviderSettingsResponse#identity_provider_summary #identity_provider_summary} => Types::IdentityProviderSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider_settings({
    #     identity_provider: {
    #       active_directory_identity_provider: {
    #         active_directory_settings: {
    #           domain_credentials_provider: {
    #             secrets_manager_credentials_provider: {
    #               secret_id: "SecretsManagerCredentialsProviderSecretIdString",
    #             },
    #           },
    #           domain_ipv_4_list: ["IpV4"],
    #           domain_name: "String",
    #           domain_network_settings: {
    #             subnets: ["Subnet"], # required
    #           },
    #         },
    #         active_directory_type: "SELF_MANAGED", # accepts SELF_MANAGED, AWS_MANAGED
    #         directory_id: "Directory",
    #       },
    #     },
    #     identity_provider_arn: "Arn",
    #     product: "String",
    #     update_settings: { # required
    #       add_subnets: ["Subnet"], # required
    #       remove_subnets: ["Subnet"], # required
    #       security_group_id: "SecurityGroup",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_provider_summary.failure_message #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_credentials_provider.secrets_manager_credentials_provider.secret_id #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list #=> Array
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_ipv_4_list[0] #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_name #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets #=> Array
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_settings.domain_network_settings.subnets[0] #=> String
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.active_directory_type #=> String, one of "SELF_MANAGED", "AWS_MANAGED"
    #   resp.identity_provider_summary.identity_provider.active_directory_identity_provider.directory_id #=> String
    #   resp.identity_provider_summary.identity_provider_arn #=> String
    #   resp.identity_provider_summary.product #=> String
    #   resp.identity_provider_summary.settings.security_group_id #=> String
    #   resp.identity_provider_summary.settings.subnets #=> Array
    #   resp.identity_provider_summary.settings.subnets[0] #=> String
    #   resp.identity_provider_summary.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/license-manager-user-subscriptions-2018-05-10/UpdateIdentityProviderSettings AWS API Documentation
    #
    # @overload update_identity_provider_settings(params = {})
    # @param [Hash] params ({})
    def update_identity_provider_settings(params = {}, options = {})
      req = build_request(:update_identity_provider_settings, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::LicenseManagerUserSubscriptions')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-licensemanagerusersubscriptions'
      context[:gem_version] = '1.35.0'
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
