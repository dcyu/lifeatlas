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

module Aws::Snowball
  # An API client for Snowball.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Snowball::Client.new(
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

    @identifier = :snowball

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
    add_plugin(Aws::Snowball::Plugins::Endpoints)

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
    #   @option options [Aws::Snowball::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Snowball::EndpointParameters`.
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

    # Cancels a cluster job. You can only cancel a cluster job while it's
    # in the `AwaitingQuorum` status. You'll have at least an hour after
    # creating a cluster job to cancel it.
    #
    # @option params [required, String] :cluster_id
    #   The 39-character ID for the cluster that you want to cancel, for
    #   example `CID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To cancel a cluster job
    #
    #   # This operation cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status.
    #
    #   resp = client.cancel_cluster({
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_cluster({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelCluster AWS API Documentation
    #
    # @overload cancel_cluster(params = {})
    # @param [Hash] params ({})
    def cancel_cluster(params = {}, options = {})
      req = build_request(:cancel_cluster, params)
      req.send_request(options)
    end

    # Cancels the specified job. You can only cancel a job before its
    # `JobState` value changes to `PreparingAppliance`. Requesting the
    # `ListJobs` or `DescribeJob` action returns a job's `JobState` as part
    # of the response element data returned.
    #
    # @option params [required, String] :job_id
    #   The 39-character job ID for the job that you want to cancel, for
    #   example `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To cancel a job for a Snowball device
    #
    #   # This operation cancels a job. You can only cancel a job before its JobState value changes to PreparingAppliance.
    #
    #   resp = client.cancel_job({
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelJob AWS API Documentation
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # Creates an address for a Snow device to be shipped to. In most
    # regions, addresses are validated at the time of creation. The address
    # you provide must be located within the serviceable area of your
    # region. If the address is invalid or unsupported, then an exception is
    # thrown. If providing an address as a JSON file through the
    # `cli-input-json` option, include the full file path. For example,
    # `--cli-input-json file://create-address.json`.
    #
    # @option params [required, Types::Address] :address
    #   The address that you want the Snow device shipped to.
    #
    # @return [Types::CreateAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddressResult#address_id #address_id} => String
    #
    #
    # @example Example: To create an address for a job
    #
    #   # This operation creates an address for a job. Addresses are validated at the time of creation. The address you provide
    #   # must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception
    #   # is thrown.
    #
    #   resp = client.create_address({
    #     address: {
    #       city: "Seattle", 
    #       company: "My Company's Name", 
    #       country: "USA", 
    #       name: "My Name", 
    #       phone_number: "425-555-5555", 
    #       postal_code: "98101", 
    #       state_or_province: "WA", 
    #       street_1: "123 Main Street", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_address({
    #     address: { # required
    #       address_id: "AddressId",
    #       name: "String",
    #       company: "String",
    #       street_1: "String",
    #       street_2: "String",
    #       street_3: "String",
    #       city: "String",
    #       state_or_province: "String",
    #       prefecture_or_district: "String",
    #       landmark: "String",
    #       country: "String",
    #       postal_code: "String",
    #       phone_number: "String",
    #       is_restricted: false,
    #       type: "CUST_PICKUP", # accepts CUST_PICKUP, AWS_SHIP
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.address_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateAddress AWS API Documentation
    #
    # @overload create_address(params = {})
    # @param [Hash] params ({})
    def create_address(params = {}, options = {})
      req = build_request(:create_address, params)
      req.send_request(options)
    end

    # Creates an empty cluster. Each cluster supports five nodes. You use
    # the CreateJob action separately to create the jobs for each of these
    # nodes. The cluster does not ship until these five node jobs have been
    # created.
    #
    # @option params [required, String] :job_type
    #   The type of job for this cluster. Currently, the only job type
    #   supported for clusters is `LOCAL_USE`.
    #
    #   For more information, see
    #   "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide* or
    #   "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide*.
    #
    # @option params [Types::JobResource] :resources
    #   The resources associated with the cluster job. These resources include
    #   Amazon S3 buckets and optional Lambda functions written in the Python
    #   language.
    #
    # @option params [Types::OnDeviceServiceConfiguration] :on_device_service_configuration
    #   Specifies the service or services on the Snow Family device that your
    #   transferred data will be exported from or imported into. Amazon Web
    #   Services Snow Family device clusters support Amazon S3 and NFS
    #   (Network File System).
    #
    # @option params [String] :description
    #   An optional description of this specific cluster, for example
    #   `Environmental Data Cluster-01`.
    #
    # @option params [required, String] :address_id
    #   The ID for the address that you want the cluster shipped to.
    #
    # @option params [String] :kms_key_arn
    #   The `KmsKeyARN` value that you want to associate with this cluster.
    #   `KmsKeyARN` values are created by using the [CreateKey][1] API action
    #   in Key Management Service (KMS).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #
    # @option params [String] :role_arn
    #   The `RoleARN` that you want to associate with this cluster. `RoleArn`
    #   values are created by using the [CreateRole][1] API action in Identity
    #   and Access Management (IAM).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @option params [required, String] :snowball_type
    #   The type of Snow Family devices to use for this cluster.
    #
    #   <note markdown="1"> For cluster jobs, Amazon Web Services Snow Family currently supports
    #   only the `EDGE` device type.
    #
    #    </note>
    #
    #   For more information, see
    #   "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide* or
    #   "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide*.
    #
    # @option params [required, String] :shipping_option
    #   The shipping speed for each node in this cluster. This speed doesn't
    #   dictate how soon you'll get each Snowball Edge device, rather it
    #   represents how quickly each device moves to its destination while in
    #   transit. Regional shipping speeds are as follows:
    #
    #   * In Australia, you have access to express shipping. Typically, Snow
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snow devices shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snow devices are delivered in one to seven days.
    #
    #   * In the United States of America (US), you have access to one-day
    #     shipping and two-day shipping.
    #   ^
    #
    #   * In Australia, you have access to express shipping. Typically,
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snow devices shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snow devices are delivered in one to seven days.
    #
    #   * In the US, you have access to one-day shipping and two-day shipping.
    #
    # @option params [Types::Notification] :notification
    #   The Amazon Simple Notification Service (Amazon SNS) notification
    #   settings for this cluster.
    #
    # @option params [String] :forwarding_address_id
    #   The forwarding address ID for a cluster. This field is not supported
    #   in most regions.
    #
    # @option params [Types::TaxDocuments] :tax_documents
    #   The tax documents required in your Amazon Web Services Region.
    #
    # @option params [String] :remote_management
    #   Allows you to securely operate and manage Snow devices in a cluster
    #   remotely from outside of your internal network. When set to
    #   `INSTALLED_AUTOSTART`, remote management will automatically be
    #   available when the device arrives at your location. Otherwise, you
    #   need to use the Snowball Client to manage the device.
    #
    # @option params [Integer] :initial_cluster_size
    #   If provided, each job will be automatically created and associated
    #   with the new cluster. If not provided, will be treated as 0.
    #
    # @option params [Boolean] :force_create_jobs
    #   Force to create cluster when user attempts to overprovision or
    #   underprovision a cluster. A cluster is overprovisioned or
    #   underprovisioned if the initial size of the cluster is more
    #   (overprovisioned) or less (underprovisioned) than what needed to meet
    #   capacity requirement specified with `OnDeviceServiceConfiguration`.
    #
    # @option params [Array<String>] :long_term_pricing_ids
    #   Lists long-term pricing id that will be used to associate with jobs
    #   automatically created for the new cluster.
    #
    # @option params [String] :snowball_capacity_preference
    #   If your job is being created in one of the US regions, you have the
    #   option of specifying what size Snow device you'd like for this job.
    #   In all other regions, Snowballs come with 80 TB in storage capacity.
    #
    #   For more information, see
    #   "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide* or
    #   "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide*.
    #
    # @return [Types::CreateClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResult#cluster_id #cluster_id} => String
    #   * {Types::CreateClusterResult#job_list_entries #job_list_entries} => Array&lt;Types::JobListEntry&gt;
    #
    #
    # @example Example: To create a cluster
    #
    #   # Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs
    #   # for each of these nodes. The cluster does not ship until these five node jobs have been created.
    #
    #   resp = client.create_cluster({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #     description: "MyCluster", 
    #     job_type: "LOCAL_USE", 
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456", 
    #     notification: {
    #       job_states_to_notify: [
    #       ], 
    #       notify_all: false, 
    #     }, 
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "arn:aws:s3:::MyBucket", 
    #           key_range: {
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #     role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role", 
    #     shipping_option: "SECOND_DAY", 
    #     snowball_type: "EDGE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     job_type: "IMPORT", # required, accepts IMPORT, EXPORT, LOCAL_USE
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String",
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: "NFS_ON_DEVICE_SERVICE", # accepts NFS_ON_DEVICE_SERVICE, S3_ON_DEVICE_SERVICE
    #               transfer_option: "IMPORT", # accepts IMPORT, EXPORT, LOCAL_USE
    #             },
    #           ],
    #         },
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN",
    #             },
    #           ],
    #         },
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String",
    #         },
    #       ],
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB", # accepts TB
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB", # accepts TB
    #       },
    #       eks_on_device_service: {
    #         kubernetes_version: "String",
    #         eks_anywhere_version: "String",
    #       },
    #       s3_on_device_service: {
    #         storage_limit: 1.0,
    #         storage_unit: "TB", # accepts TB
    #         service_size: 1,
    #         fault_tolerance: 1,
    #       },
    #     },
    #     description: "String",
    #     address_id: "AddressId", # required
    #     kms_key_arn: "KmsKeyARN",
    #     role_arn: "RoleARN",
    #     snowball_type: "STANDARD", # required, accepts STANDARD, EDGE, EDGE_C, EDGE_CG, EDGE_S, SNC1_HDD, SNC1_SSD, V3_5C, V3_5S, RACK_5U_C
    #     shipping_option: "SECOND_DAY", # required, accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #       notify_all: false,
    #       device_pickup_sns_topic_arn: "SnsTopicARN",
    #     },
    #     forwarding_address_id: "AddressId",
    #     tax_documents: {
    #       ind: {
    #         gstin: "GSTIN",
    #       },
    #     },
    #     remote_management: "INSTALLED_ONLY", # accepts INSTALLED_ONLY, INSTALLED_AUTOSTART, NOT_INSTALLED
    #     initial_cluster_size: 1,
    #     force_create_jobs: false,
    #     long_term_pricing_ids: ["LongTermPricingId"],
    #     snowball_capacity_preference: "T50", # accepts T50, T80, T100, T42, T98, T8, T14, T32, NoPreference, T240, T13
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_id #=> String
    #   resp.job_list_entries #=> Array
    #   resp.job_list_entries[0].job_id #=> String
    #   resp.job_list_entries[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_list_entries[0].is_master #=> Boolean
    #   resp.job_list_entries[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.job_list_entries[0].snowball_type #=> String, one of "STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"
    #   resp.job_list_entries[0].creation_date #=> Time
    #   resp.job_list_entries[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a job to import or export data between Amazon S3 and your
    # on-premises data center. Your Amazon Web Services account must have
    # the right trust policies and permissions in place to create a job for
    # a Snow device. If you're creating a job for a node in a cluster, you
    # only need to provide the `clusterId` value; the other job attributes
    # are inherited from the cluster.
    #
    # <note markdown="1"> Only the Snowball; Edge device type is supported when ordering
    # clustered jobs.
    #
    #  The device capacity is optional.
    #
    #  Availability of device types differ by Amazon Web Services Region. For
    # more information about Region availability, see [Amazon Web Services
    # Regional Services][1].
    #
    #  </note>
    #
    #
    #
    # **Snow Family devices and their capacities.**
    #
    # * Device type: **SNC1\_SSD**
    #
    #   * Capacity: T14
    #
    #   * Description: Snowcone
    #
    #
    # * Device type: **SNC1\_HDD**
    #
    #   * Capacity: T8
    #
    #   * Description: Snowcone
    #
    #
    # * Device type: **EDGE\_S**
    #
    #   * Capacity: T98
    #
    #   * Description: Snowball Edge Storage Optimized for data transfer
    #     only
    #
    #
    # * Device type: **EDGE\_CG**
    #
    #   * Capacity: T42
    #
    #   * Description: Snowball Edge Compute Optimized with GPU
    #
    #
    # * Device type: **EDGE\_C**
    #
    #   * Capacity: T42
    #
    #   * Description: Snowball Edge Compute Optimized without GPU
    #
    #
    # * Device type: **EDGE**
    #
    #   * Capacity: T100
    #
    #   * Description: Snowball Edge Storage Optimized with EC2 Compute
    #   <note markdown="1"> This device is replaced with T98.
    #
    #    </note>
    #
    #
    #
    # * Device type: **STANDARD**
    #
    #   * Capacity: T50
    #
    #   * Description: Original Snowball device
    #
    #     <note markdown="1"> This device is only available in the Ningxia, Beijing, and
    #     Singapore Amazon Web Services Region
    #
    #      </note>
    #
    #
    # * Device type: **STANDARD**
    #
    #   * Capacity: T80
    #
    #   * Description: Original Snowball device
    #
    #     <note markdown="1"> This device is only available in the Ningxia, Beijing, and
    #     Singapore Amazon Web Services Region.
    #
    #      </note>
    #
    #
    # * Snow Family device type: **RACK\_5U\_C**
    #
    #   * Capacity: T13
    #
    #   * Description: Snowblade.
    # * Device type: **V3\_5S**
    #
    #   * Capacity: T240
    #
    #   * Description: Snowball Edge Storage Optimized 210TB
    #
    #
    #
    # [1]: https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&amp;loc=4
    #
    # @option params [String] :job_type
    #   Defines the type of job that you're creating.
    #
    # @option params [Types::JobResource] :resources
    #   Defines the Amazon S3 buckets associated with this job.
    #
    #   With `IMPORT` jobs, you specify the bucket or buckets that your
    #   transferred data will be imported into.
    #
    #   With `EXPORT` jobs, you specify the bucket or buckets that your
    #   transferred data will be exported from. Optionally, you can also
    #   specify a `KeyRange` value. If you choose to export a range, you
    #   define the length of the range by providing either an inclusive
    #   `BeginMarker` value, an inclusive `EndMarker` value, or both. Ranges
    #   are UTF-8 binary sorted.
    #
    # @option params [Types::OnDeviceServiceConfiguration] :on_device_service_configuration
    #   Specifies the service or services on the Snow Family device that your
    #   transferred data will be exported from or imported into. Amazon Web
    #   Services Snow Family supports Amazon S3 and NFS (Network File System)
    #   and the Amazon Web Services Storage Gateway service Tape Gateway type.
    #
    # @option params [String] :description
    #   Defines an optional description of this specific job, for example
    #   `Important Photos 2016-08-11`.
    #
    # @option params [String] :address_id
    #   The ID for the address that you want the Snow device shipped to.
    #
    # @option params [String] :kms_key_arn
    #   The `KmsKeyARN` that you want to associate with this job. `KmsKeyARN`s
    #   are created using the [CreateKey][1] Key Management Service (KMS) API
    #   action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #
    # @option params [String] :role_arn
    #   The `RoleARN` that you want to associate with this job. `RoleArn`s are
    #   created using the [CreateRole][1] Identity and Access Management (IAM)
    #   API action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @option params [String] :snowball_capacity_preference
    #   If your job is being created in one of the US regions, you have the
    #   option of specifying what size Snow device you'd like for this job.
    #   In all other regions, Snowballs come with 80 TB in storage capacity.
    #
    #   For more information, see
    #   "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide* or
    #   "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide*.
    #
    # @option params [String] :shipping_option
    #   The shipping speed for this job. This speed doesn't dictate how soon
    #   you'll get the Snow device, rather it represents how quickly the Snow
    #   device moves to its destination while in transit. Regional shipping
    #   speeds are as follows:
    #
    #   * In Australia, you have access to express shipping. Typically, Snow
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snow devices shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snow devices are delivered in one to seven days.
    #
    #   * In the US, you have access to one-day shipping and two-day shipping.
    #
    # @option params [Types::Notification] :notification
    #   Defines the Amazon Simple Notification Service (Amazon SNS)
    #   notification settings for this job.
    #
    # @option params [String] :cluster_id
    #   The ID of a cluster. If you're creating a job for a node in a
    #   cluster, you need to provide only this `clusterId` value. The other
    #   job attributes are inherited from the cluster.
    #
    # @option params [String] :snowball_type
    #   The type of Snow Family devices to use for this job.
    #
    #   <note markdown="1"> For cluster jobs, Amazon Web Services Snow Family currently supports
    #   only the `EDGE` device type.
    #
    #    </note>
    #
    #   The type of Amazon Web Services Snow device to use for this job.
    #   Currently, the only supported device type for cluster jobs is `EDGE`.
    #
    #   For more information, see [Snowball Edge Device Options][1] in the
    #   Snowball Edge Developer Guide.
    #
    #   For more information, see
    #   "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide* or
    #   "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/snowball/latest/developer-guide/device-differences.html
    #
    # @option params [String] :forwarding_address_id
    #   The forwarding address ID for a job. This field is not supported in
    #   most Regions.
    #
    # @option params [Types::TaxDocuments] :tax_documents
    #   The tax documents required in your Amazon Web Services Region.
    #
    # @option params [Types::DeviceConfiguration] :device_configuration
    #   Defines the device configuration for an Snowcone job.
    #
    #   For more information, see
    #   "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide* or
    #   "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide*.
    #
    # @option params [String] :remote_management
    #   Allows you to securely operate and manage Snowcone devices remotely
    #   from outside of your internal network. When set to
    #   `INSTALLED_AUTOSTART`, remote management will automatically be
    #   available when the device arrives at your location. Otherwise, you
    #   need to use the Snowball Edge client to manage the device. When set to
    #   `NOT_INSTALLED`, remote management will not be available on the
    #   device.
    #
    # @option params [String] :long_term_pricing_id
    #   The ID of the long-term pricing type for the device.
    #
    # @option params [String] :impact_level
    #   The highest impact level of data that will be stored or processed on
    #   the device, provided at job creation.
    #
    # @option params [Types::PickupDetails] :pickup_details
    #   Information identifying the person picking up the device.
    #
    # @return [Types::CreateJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResult#job_id #job_id} => String
    #
    #
    # @example Example: To create a job
    #
    #   # Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have
    #   # the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a
    #   # cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster.
    #
    #   resp = client.create_job({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #     description: "My Job", 
    #     job_type: "IMPORT", 
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456", 
    #     notification: {
    #       job_states_to_notify: [
    #       ], 
    #       notify_all: false, 
    #     }, 
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "arn:aws:s3:::MyBucket", 
    #           key_range: {
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #     role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role", 
    #     shipping_option: "SECOND_DAY", 
    #     snowball_capacity_preference: "T80", 
    #     snowball_type: "STANDARD", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     job_type: "IMPORT", # accepts IMPORT, EXPORT, LOCAL_USE
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String",
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: "NFS_ON_DEVICE_SERVICE", # accepts NFS_ON_DEVICE_SERVICE, S3_ON_DEVICE_SERVICE
    #               transfer_option: "IMPORT", # accepts IMPORT, EXPORT, LOCAL_USE
    #             },
    #           ],
    #         },
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN",
    #             },
    #           ],
    #         },
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String",
    #         },
    #       ],
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB", # accepts TB
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB", # accepts TB
    #       },
    #       eks_on_device_service: {
    #         kubernetes_version: "String",
    #         eks_anywhere_version: "String",
    #       },
    #       s3_on_device_service: {
    #         storage_limit: 1.0,
    #         storage_unit: "TB", # accepts TB
    #         service_size: 1,
    #         fault_tolerance: 1,
    #       },
    #     },
    #     description: "String",
    #     address_id: "AddressId",
    #     kms_key_arn: "KmsKeyARN",
    #     role_arn: "RoleARN",
    #     snowball_capacity_preference: "T50", # accepts T50, T80, T100, T42, T98, T8, T14, T32, NoPreference, T240, T13
    #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #       notify_all: false,
    #       device_pickup_sns_topic_arn: "SnsTopicARN",
    #     },
    #     cluster_id: "ClusterId",
    #     snowball_type: "STANDARD", # accepts STANDARD, EDGE, EDGE_C, EDGE_CG, EDGE_S, SNC1_HDD, SNC1_SSD, V3_5C, V3_5S, RACK_5U_C
    #     forwarding_address_id: "AddressId",
    #     tax_documents: {
    #       ind: {
    #         gstin: "GSTIN",
    #       },
    #     },
    #     device_configuration: {
    #       snowcone_device_configuration: {
    #         wireless_connection: {
    #           is_wifi_enabled: false,
    #         },
    #       },
    #     },
    #     remote_management: "INSTALLED_ONLY", # accepts INSTALLED_ONLY, INSTALLED_AUTOSTART, NOT_INSTALLED
    #     long_term_pricing_id: "LongTermPricingId",
    #     impact_level: "IL2", # accepts IL2, IL4, IL5, IL6, IL99
    #     pickup_details: {
    #       name: "String",
    #       phone_number: "PhoneNumber",
    #       email: "Email",
    #       identification_number: "String",
    #       identification_expiration_date: Time.now,
    #       identification_issuing_org: "String",
    #       device_pickup_id: "DevicePickupId",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Creates a job with the long-term usage option for a device. The
    # long-term usage is a 1-year or 3-year long-term pricing type for the
    # device. You are billed upfront, and Amazon Web Services provides
    # discounts for long-term pricing.
    #
    # @option params [required, String] :long_term_pricing_type
    #   The type of long-term pricing option you want for the device, either
    #   1-year or 3-year long-term pricing.
    #
    # @option params [Boolean] :is_long_term_pricing_auto_renew
    #   Specifies whether the current long-term pricing type for the device
    #   should be renewed.
    #
    # @option params [required, String] :snowball_type
    #   The type of Snow Family devices to use for the long-term pricing job.
    #
    # @return [Types::CreateLongTermPricingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLongTermPricingResult#long_term_pricing_id #long_term_pricing_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_long_term_pricing({
    #     long_term_pricing_type: "OneYear", # required, accepts OneYear, ThreeYear, OneMonth
    #     is_long_term_pricing_auto_renew: false,
    #     snowball_type: "STANDARD", # required, accepts STANDARD, EDGE, EDGE_C, EDGE_CG, EDGE_S, SNC1_HDD, SNC1_SSD, V3_5C, V3_5S, RACK_5U_C
    #   })
    #
    # @example Response structure
    #
    #   resp.long_term_pricing_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateLongTermPricing AWS API Documentation
    #
    # @overload create_long_term_pricing(params = {})
    # @param [Hash] params ({})
    def create_long_term_pricing(params = {}, options = {})
      req = build_request(:create_long_term_pricing, params)
      req.send_request(options)
    end

    # Creates a shipping label that will be used to return the Snow device
    # to Amazon Web Services.
    #
    # @option params [required, String] :job_id
    #   The ID for a job that you want to create the return shipping label
    #   for; for example, `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @option params [String] :shipping_option
    #   The shipping speed for a particular job. This speed doesn't dictate
    #   how soon the device is returned to Amazon Web Services. This speed
    #   represents how quickly it moves to its destination while in transit.
    #   Regional shipping speeds are as follows:
    #
    # @return [Types::CreateReturnShippingLabelResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReturnShippingLabelResult#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_return_shipping_label({
    #     job_id: "JobId", # required
    #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "InProgress", "TimedOut", "Succeeded", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateReturnShippingLabel AWS API Documentation
    #
    # @overload create_return_shipping_label(params = {})
    # @param [Hash] params ({})
    def create_return_shipping_label(params = {}, options = {})
      req = build_request(:create_return_shipping_label, params)
      req.send_request(options)
    end

    # Takes an `AddressId` and returns specific details about that address
    # in the form of an `Address` object.
    #
    # @option params [required, String] :address_id
    #   The automatically generated ID for a specific address.
    #
    # @return [Types::DescribeAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAddressResult#address #address} => Types::Address
    #
    #
    # @example Example: To describe an address for a job
    #
    #   # This operation describes an address for a job.
    #
    #   resp = client.describe_address({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     address: {
    #       address_id: "ADID5643ec50-3eec-4eb3-9be6-9374c10eb51b", 
    #       city: "Seattle", 
    #       company: "My Company", 
    #       country: "US", 
    #       name: "My Name", 
    #       phone_number: "425-555-5555", 
    #       postal_code: "98101", 
    #       state_or_province: "WA", 
    #       street_1: "123 Main Street", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_address({
    #     address_id: "AddressId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.address.address_id #=> String
    #   resp.address.name #=> String
    #   resp.address.company #=> String
    #   resp.address.street_1 #=> String
    #   resp.address.street_2 #=> String
    #   resp.address.street_3 #=> String
    #   resp.address.city #=> String
    #   resp.address.state_or_province #=> String
    #   resp.address.prefecture_or_district #=> String
    #   resp.address.landmark #=> String
    #   resp.address.country #=> String
    #   resp.address.postal_code #=> String
    #   resp.address.phone_number #=> String
    #   resp.address.is_restricted #=> Boolean
    #   resp.address.type #=> String, one of "CUST_PICKUP", "AWS_SHIP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddress AWS API Documentation
    #
    # @overload describe_address(params = {})
    # @param [Hash] params ({})
    def describe_address(params = {}, options = {})
      req = build_request(:describe_address, params)
      req.send_request(options)
    end

    # Returns a specified number of `ADDRESS` objects. Calling this API in
    # one of the US regions will return addresses from the list of all
    # addresses associated with this account in all US regions.
    #
    # @option params [Integer] :max_results
    #   The number of `ADDRESS` objects to return.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `ADDRESS` objects, you have the option of specifying a
    #   value for `NextToken` as the starting point for your list of returned
    #   addresses.
    #
    # @return [Types::DescribeAddressesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAddressesResult#addresses #addresses} => Array&lt;Types::Address&gt;
    #   * {Types::DescribeAddressesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe all the addresses you've created for AWS Snowball
    #
    #   # This operation describes all the addresses that you've created for AWS Snowball. Calling this API in one of the US
    #   # regions will return addresses from the list of all addresses associated with this account in all US regions.
    #
    #   resp = client.describe_addresses({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     addresses: [
    #       {
    #         address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #         city: "Seattle", 
    #         company: "My Company", 
    #         country: "US", 
    #         name: "My Name", 
    #         phone_number: "425-555-5555", 
    #         postal_code: "98101", 
    #         state_or_province: "WA", 
    #         street_1: "123 Main Street", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addresses({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.addresses #=> Array
    #   resp.addresses[0].address_id #=> String
    #   resp.addresses[0].name #=> String
    #   resp.addresses[0].company #=> String
    #   resp.addresses[0].street_1 #=> String
    #   resp.addresses[0].street_2 #=> String
    #   resp.addresses[0].street_3 #=> String
    #   resp.addresses[0].city #=> String
    #   resp.addresses[0].state_or_province #=> String
    #   resp.addresses[0].prefecture_or_district #=> String
    #   resp.addresses[0].landmark #=> String
    #   resp.addresses[0].country #=> String
    #   resp.addresses[0].postal_code #=> String
    #   resp.addresses[0].phone_number #=> String
    #   resp.addresses[0].is_restricted #=> Boolean
    #   resp.addresses[0].type #=> String, one of "CUST_PICKUP", "AWS_SHIP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddresses AWS API Documentation
    #
    # @overload describe_addresses(params = {})
    # @param [Hash] params ({})
    def describe_addresses(params = {}, options = {})
      req = build_request(:describe_addresses, params)
      req.send_request(options)
    end

    # Returns information about a specific cluster including shipping
    # information, cluster status, and other important metadata.
    #
    # @option params [required, String] :cluster_id
    #   The automatically generated ID for a cluster.
    #
    # @return [Types::DescribeClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterResult#cluster_metadata #cluster_metadata} => Types::ClusterMetadata
    #
    #
    # @example Example: To describe a cluster
    #
    #   # Returns information about a specific cluster including shipping information, cluster status, and other important
    #   # metadata.
    #
    #   resp = client.describe_cluster({
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_metadata: {
    #       address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #       cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #       cluster_state: "Pending", 
    #       creation_date: Time.parse("1480475517.0"), 
    #       description: "MyCluster", 
    #       job_type: "LOCAL_USE", 
    #       kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456", 
    #       notification: {
    #         job_states_to_notify: [
    #         ], 
    #         notify_all: false, 
    #       }, 
    #       resources: {
    #         s3_resources: [
    #           {
    #             bucket_arn: "arn:aws:s3:::MyBucket", 
    #             key_range: {
    #             }, 
    #           }, 
    #         ], 
    #       }, 
    #       role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role", 
    #       shipping_option: "SECOND_DAY", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_metadata.cluster_id #=> String
    #   resp.cluster_metadata.description #=> String
    #   resp.cluster_metadata.kms_key_arn #=> String
    #   resp.cluster_metadata.role_arn #=> String
    #   resp.cluster_metadata.cluster_state #=> String, one of "AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"
    #   resp.cluster_metadata.job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.cluster_metadata.snowball_type #=> String, one of "STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"
    #   resp.cluster_metadata.creation_date #=> Time
    #   resp.cluster_metadata.resources.s3_resources #=> Array
    #   resp.cluster_metadata.resources.s3_resources[0].bucket_arn #=> String
    #   resp.cluster_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
    #   resp.cluster_metadata.resources.s3_resources[0].key_range.end_marker #=> String
    #   resp.cluster_metadata.resources.s3_resources[0].target_on_device_services #=> Array
    #   resp.cluster_metadata.resources.s3_resources[0].target_on_device_services[0].service_name #=> String, one of "NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"
    #   resp.cluster_metadata.resources.s3_resources[0].target_on_device_services[0].transfer_option #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.cluster_metadata.resources.lambda_resources #=> Array
    #   resp.cluster_metadata.resources.lambda_resources[0].lambda_arn #=> String
    #   resp.cluster_metadata.resources.lambda_resources[0].event_triggers #=> Array
    #   resp.cluster_metadata.resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
    #   resp.cluster_metadata.resources.ec2_ami_resources #=> Array
    #   resp.cluster_metadata.resources.ec2_ami_resources[0].ami_id #=> String
    #   resp.cluster_metadata.resources.ec2_ami_resources[0].snowball_ami_id #=> String
    #   resp.cluster_metadata.address_id #=> String
    #   resp.cluster_metadata.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
    #   resp.cluster_metadata.notification.sns_topic_arn #=> String
    #   resp.cluster_metadata.notification.job_states_to_notify #=> Array
    #   resp.cluster_metadata.notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.cluster_metadata.notification.notify_all #=> Boolean
    #   resp.cluster_metadata.notification.device_pickup_sns_topic_arn #=> String
    #   resp.cluster_metadata.forwarding_address_id #=> String
    #   resp.cluster_metadata.tax_documents.ind.gstin #=> String
    #   resp.cluster_metadata.on_device_service_configuration.nfs_on_device_service.storage_limit #=> Integer
    #   resp.cluster_metadata.on_device_service_configuration.nfs_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.cluster_metadata.on_device_service_configuration.tgw_on_device_service.storage_limit #=> Integer
    #   resp.cluster_metadata.on_device_service_configuration.tgw_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.cluster_metadata.on_device_service_configuration.eks_on_device_service.kubernetes_version #=> String
    #   resp.cluster_metadata.on_device_service_configuration.eks_on_device_service.eks_anywhere_version #=> String
    #   resp.cluster_metadata.on_device_service_configuration.s3_on_device_service.storage_limit #=> Float
    #   resp.cluster_metadata.on_device_service_configuration.s3_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.cluster_metadata.on_device_service_configuration.s3_on_device_service.service_size #=> Integer
    #   resp.cluster_metadata.on_device_service_configuration.s3_on_device_service.fault_tolerance #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # Returns information about a specific job including shipping
    # information, job status, and other important metadata.
    #
    # @option params [required, String] :job_id
    #   The automatically generated ID for a job, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Types::DescribeJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobResult#job_metadata #job_metadata} => Types::JobMetadata
    #   * {Types::DescribeJobResult#sub_job_metadata #sub_job_metadata} => Array&lt;Types::JobMetadata&gt;
    #
    #
    # @example Example: To describe a job you've created for AWS Snowball
    #
    #   # This operation describes a job you've created for AWS Snowball.
    #
    #   resp = client.describe_job({
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_metadata: {
    #       address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #       creation_date: Time.parse("1475626164"), 
    #       description: "My Job", 
    #       job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #       job_state: "New", 
    #       job_type: "IMPORT", 
    #       kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456", 
    #       notification: {
    #         job_states_to_notify: [
    #         ], 
    #         notify_all: false, 
    #       }, 
    #       resources: {
    #         s3_resources: [
    #           {
    #             bucket_arn: "arn:aws:s3:::MyBucket", 
    #             key_range: {
    #             }, 
    #           }, 
    #         ], 
    #       }, 
    #       role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role", 
    #       shipping_details: {
    #         shipping_option: "SECOND_DAY", 
    #       }, 
    #       snowball_capacity_preference: "T80", 
    #       snowball_type: "STANDARD", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_metadata.job_id #=> String
    #   resp.job_metadata.job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_metadata.job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.job_metadata.snowball_type #=> String, one of "STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"
    #   resp.job_metadata.creation_date #=> Time
    #   resp.job_metadata.resources.s3_resources #=> Array
    #   resp.job_metadata.resources.s3_resources[0].bucket_arn #=> String
    #   resp.job_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
    #   resp.job_metadata.resources.s3_resources[0].key_range.end_marker #=> String
    #   resp.job_metadata.resources.s3_resources[0].target_on_device_services #=> Array
    #   resp.job_metadata.resources.s3_resources[0].target_on_device_services[0].service_name #=> String, one of "NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"
    #   resp.job_metadata.resources.s3_resources[0].target_on_device_services[0].transfer_option #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.job_metadata.resources.lambda_resources #=> Array
    #   resp.job_metadata.resources.lambda_resources[0].lambda_arn #=> String
    #   resp.job_metadata.resources.lambda_resources[0].event_triggers #=> Array
    #   resp.job_metadata.resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
    #   resp.job_metadata.resources.ec2_ami_resources #=> Array
    #   resp.job_metadata.resources.ec2_ami_resources[0].ami_id #=> String
    #   resp.job_metadata.resources.ec2_ami_resources[0].snowball_ami_id #=> String
    #   resp.job_metadata.description #=> String
    #   resp.job_metadata.kms_key_arn #=> String
    #   resp.job_metadata.role_arn #=> String
    #   resp.job_metadata.address_id #=> String
    #   resp.job_metadata.shipping_details.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
    #   resp.job_metadata.shipping_details.inbound_shipment.status #=> String
    #   resp.job_metadata.shipping_details.inbound_shipment.tracking_number #=> String
    #   resp.job_metadata.shipping_details.outbound_shipment.status #=> String
    #   resp.job_metadata.shipping_details.outbound_shipment.tracking_number #=> String
    #   resp.job_metadata.snowball_capacity_preference #=> String, one of "T50", "T80", "T100", "T42", "T98", "T8", "T14", "T32", "NoPreference", "T240", "T13"
    #   resp.job_metadata.notification.sns_topic_arn #=> String
    #   resp.job_metadata.notification.job_states_to_notify #=> Array
    #   resp.job_metadata.notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_metadata.notification.notify_all #=> Boolean
    #   resp.job_metadata.notification.device_pickup_sns_topic_arn #=> String
    #   resp.job_metadata.data_transfer_progress.bytes_transferred #=> Integer
    #   resp.job_metadata.data_transfer_progress.objects_transferred #=> Integer
    #   resp.job_metadata.data_transfer_progress.total_bytes #=> Integer
    #   resp.job_metadata.data_transfer_progress.total_objects #=> Integer
    #   resp.job_metadata.job_log_info.job_completion_report_uri #=> String
    #   resp.job_metadata.job_log_info.job_success_log_uri #=> String
    #   resp.job_metadata.job_log_info.job_failure_log_uri #=> String
    #   resp.job_metadata.cluster_id #=> String
    #   resp.job_metadata.forwarding_address_id #=> String
    #   resp.job_metadata.tax_documents.ind.gstin #=> String
    #   resp.job_metadata.device_configuration.snowcone_device_configuration.wireless_connection.is_wifi_enabled #=> Boolean
    #   resp.job_metadata.remote_management #=> String, one of "INSTALLED_ONLY", "INSTALLED_AUTOSTART", "NOT_INSTALLED"
    #   resp.job_metadata.long_term_pricing_id #=> String
    #   resp.job_metadata.on_device_service_configuration.nfs_on_device_service.storage_limit #=> Integer
    #   resp.job_metadata.on_device_service_configuration.nfs_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.job_metadata.on_device_service_configuration.tgw_on_device_service.storage_limit #=> Integer
    #   resp.job_metadata.on_device_service_configuration.tgw_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.job_metadata.on_device_service_configuration.eks_on_device_service.kubernetes_version #=> String
    #   resp.job_metadata.on_device_service_configuration.eks_on_device_service.eks_anywhere_version #=> String
    #   resp.job_metadata.on_device_service_configuration.s3_on_device_service.storage_limit #=> Float
    #   resp.job_metadata.on_device_service_configuration.s3_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.job_metadata.on_device_service_configuration.s3_on_device_service.service_size #=> Integer
    #   resp.job_metadata.on_device_service_configuration.s3_on_device_service.fault_tolerance #=> Integer
    #   resp.job_metadata.impact_level #=> String, one of "IL2", "IL4", "IL5", "IL6", "IL99"
    #   resp.job_metadata.pickup_details.name #=> String
    #   resp.job_metadata.pickup_details.phone_number #=> String
    #   resp.job_metadata.pickup_details.email #=> String
    #   resp.job_metadata.pickup_details.identification_number #=> String
    #   resp.job_metadata.pickup_details.identification_expiration_date #=> Time
    #   resp.job_metadata.pickup_details.identification_issuing_org #=> String
    #   resp.job_metadata.pickup_details.device_pickup_id #=> String
    #   resp.job_metadata.snowball_id #=> String
    #   resp.sub_job_metadata #=> Array
    #   resp.sub_job_metadata[0].job_id #=> String
    #   resp.sub_job_metadata[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.sub_job_metadata[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.sub_job_metadata[0].snowball_type #=> String, one of "STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"
    #   resp.sub_job_metadata[0].creation_date #=> Time
    #   resp.sub_job_metadata[0].resources.s3_resources #=> Array
    #   resp.sub_job_metadata[0].resources.s3_resources[0].bucket_arn #=> String
    #   resp.sub_job_metadata[0].resources.s3_resources[0].key_range.begin_marker #=> String
    #   resp.sub_job_metadata[0].resources.s3_resources[0].key_range.end_marker #=> String
    #   resp.sub_job_metadata[0].resources.s3_resources[0].target_on_device_services #=> Array
    #   resp.sub_job_metadata[0].resources.s3_resources[0].target_on_device_services[0].service_name #=> String, one of "NFS_ON_DEVICE_SERVICE", "S3_ON_DEVICE_SERVICE"
    #   resp.sub_job_metadata[0].resources.s3_resources[0].target_on_device_services[0].transfer_option #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.sub_job_metadata[0].resources.lambda_resources #=> Array
    #   resp.sub_job_metadata[0].resources.lambda_resources[0].lambda_arn #=> String
    #   resp.sub_job_metadata[0].resources.lambda_resources[0].event_triggers #=> Array
    #   resp.sub_job_metadata[0].resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
    #   resp.sub_job_metadata[0].resources.ec2_ami_resources #=> Array
    #   resp.sub_job_metadata[0].resources.ec2_ami_resources[0].ami_id #=> String
    #   resp.sub_job_metadata[0].resources.ec2_ami_resources[0].snowball_ami_id #=> String
    #   resp.sub_job_metadata[0].description #=> String
    #   resp.sub_job_metadata[0].kms_key_arn #=> String
    #   resp.sub_job_metadata[0].role_arn #=> String
    #   resp.sub_job_metadata[0].address_id #=> String
    #   resp.sub_job_metadata[0].shipping_details.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
    #   resp.sub_job_metadata[0].shipping_details.inbound_shipment.status #=> String
    #   resp.sub_job_metadata[0].shipping_details.inbound_shipment.tracking_number #=> String
    #   resp.sub_job_metadata[0].shipping_details.outbound_shipment.status #=> String
    #   resp.sub_job_metadata[0].shipping_details.outbound_shipment.tracking_number #=> String
    #   resp.sub_job_metadata[0].snowball_capacity_preference #=> String, one of "T50", "T80", "T100", "T42", "T98", "T8", "T14", "T32", "NoPreference", "T240", "T13"
    #   resp.sub_job_metadata[0].notification.sns_topic_arn #=> String
    #   resp.sub_job_metadata[0].notification.job_states_to_notify #=> Array
    #   resp.sub_job_metadata[0].notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.sub_job_metadata[0].notification.notify_all #=> Boolean
    #   resp.sub_job_metadata[0].notification.device_pickup_sns_topic_arn #=> String
    #   resp.sub_job_metadata[0].data_transfer_progress.bytes_transferred #=> Integer
    #   resp.sub_job_metadata[0].data_transfer_progress.objects_transferred #=> Integer
    #   resp.sub_job_metadata[0].data_transfer_progress.total_bytes #=> Integer
    #   resp.sub_job_metadata[0].data_transfer_progress.total_objects #=> Integer
    #   resp.sub_job_metadata[0].job_log_info.job_completion_report_uri #=> String
    #   resp.sub_job_metadata[0].job_log_info.job_success_log_uri #=> String
    #   resp.sub_job_metadata[0].job_log_info.job_failure_log_uri #=> String
    #   resp.sub_job_metadata[0].cluster_id #=> String
    #   resp.sub_job_metadata[0].forwarding_address_id #=> String
    #   resp.sub_job_metadata[0].tax_documents.ind.gstin #=> String
    #   resp.sub_job_metadata[0].device_configuration.snowcone_device_configuration.wireless_connection.is_wifi_enabled #=> Boolean
    #   resp.sub_job_metadata[0].remote_management #=> String, one of "INSTALLED_ONLY", "INSTALLED_AUTOSTART", "NOT_INSTALLED"
    #   resp.sub_job_metadata[0].long_term_pricing_id #=> String
    #   resp.sub_job_metadata[0].on_device_service_configuration.nfs_on_device_service.storage_limit #=> Integer
    #   resp.sub_job_metadata[0].on_device_service_configuration.nfs_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.sub_job_metadata[0].on_device_service_configuration.tgw_on_device_service.storage_limit #=> Integer
    #   resp.sub_job_metadata[0].on_device_service_configuration.tgw_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.sub_job_metadata[0].on_device_service_configuration.eks_on_device_service.kubernetes_version #=> String
    #   resp.sub_job_metadata[0].on_device_service_configuration.eks_on_device_service.eks_anywhere_version #=> String
    #   resp.sub_job_metadata[0].on_device_service_configuration.s3_on_device_service.storage_limit #=> Float
    #   resp.sub_job_metadata[0].on_device_service_configuration.s3_on_device_service.storage_unit #=> String, one of "TB"
    #   resp.sub_job_metadata[0].on_device_service_configuration.s3_on_device_service.service_size #=> Integer
    #   resp.sub_job_metadata[0].on_device_service_configuration.s3_on_device_service.fault_tolerance #=> Integer
    #   resp.sub_job_metadata[0].impact_level #=> String, one of "IL2", "IL4", "IL5", "IL6", "IL99"
    #   resp.sub_job_metadata[0].pickup_details.name #=> String
    #   resp.sub_job_metadata[0].pickup_details.phone_number #=> String
    #   resp.sub_job_metadata[0].pickup_details.email #=> String
    #   resp.sub_job_metadata[0].pickup_details.identification_number #=> String
    #   resp.sub_job_metadata[0].pickup_details.identification_expiration_date #=> Time
    #   resp.sub_job_metadata[0].pickup_details.identification_issuing_org #=> String
    #   resp.sub_job_metadata[0].pickup_details.device_pickup_id #=> String
    #   resp.sub_job_metadata[0].snowball_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeJob AWS API Documentation
    #
    # @overload describe_job(params = {})
    # @param [Hash] params ({})
    def describe_job(params = {}, options = {})
      req = build_request(:describe_job, params)
      req.send_request(options)
    end

    # Information on the shipping label of a Snow device that is being
    # returned to Amazon Web Services.
    #
    # @option params [required, String] :job_id
    #   The automatically generated ID for a job, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Types::DescribeReturnShippingLabelResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReturnShippingLabelResult#status #status} => String
    #   * {Types::DescribeReturnShippingLabelResult#expiration_date #expiration_date} => Time
    #   * {Types::DescribeReturnShippingLabelResult#return_shipping_label_uri #return_shipping_label_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_return_shipping_label({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "InProgress", "TimedOut", "Succeeded", "Failed"
    #   resp.expiration_date #=> Time
    #   resp.return_shipping_label_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeReturnShippingLabel AWS API Documentation
    #
    # @overload describe_return_shipping_label(params = {})
    # @param [Hash] params ({})
    def describe_return_shipping_label(params = {}, options = {})
      req = build_request(:describe_return_shipping_label, params)
      req.send_request(options)
    end

    # Returns a link to an Amazon S3 presigned URL for the manifest file
    # associated with the specified `JobId` value. You can access the
    # manifest file for up to 60 minutes after this request has been made.
    # To access the manifest file after 60 minutes have passed, you'll have
    # to make another call to the `GetJobManifest` action.
    #
    # The manifest is an encrypted file that you can download after your job
    # enters the `WithCustomer` status. This is the only valid status for
    # calling this API as the manifest and `UnlockCode` code value are used
    # for securing your device and should only be used when you have the
    # device. The manifest is decrypted by using the `UnlockCode` code
    # value, when you pass both values to the Snow device through the
    # Snowball client when the client is started for the first time.
    #
    # As a best practice, we recommend that you don't save a copy of an
    # `UnlockCode` value in the same location as the manifest file for that
    # job. Saving these separately helps prevent unauthorized parties from
    # gaining access to the Snow device associated with that job.
    #
    # The credentials of a given job, including its manifest file and unlock
    # code, expire 360 days after the job is created.
    #
    # @option params [required, String] :job_id
    #   The ID for a job that you want to get the manifest file for, for
    #   example `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Types::GetJobManifestResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobManifestResult#manifest_uri #manifest_uri} => String
    #
    #
    # @example Example: To get the manifest for a job you've created for AWS Snowball
    #
    #   # Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can
    #   # access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60
    #   # minutes have passed, you'll have to make another call to the GetJobManifest action.
    #   # The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is
    #   # decrypted by using the UnlockCode code value, when you pass both values to the Snowball through the Snowball client when
    #   # the client is started for the first time.
    #   # As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest
    #   # file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball
    #   # associated with that job.
    #   # The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.
    #
    #   resp = client.get_job_manifest({
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     manifest_uri: "https://awsie-frosty-manifests-prod.s3.amazonaws.com/JID123e4567-e89b-12d3-a456-426655440000_manifest.bin?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20161224T005115Z&X-Amz-SignedHeaders=...", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_manifest({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.manifest_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobManifest AWS API Documentation
    #
    # @overload get_job_manifest(params = {})
    # @param [Hash] params ({})
    def get_job_manifest(params = {}, options = {})
      req = build_request(:get_job_manifest, params)
      req.send_request(options)
    end

    # Returns the `UnlockCode` code value for the specified job. A
    # particular `UnlockCode` value can be accessed for up to 360 days after
    # the associated job has been created.
    #
    # The `UnlockCode` value is a 29-character code with 25 alphanumeric
    # characters and 4 hyphens. This code is used to decrypt the manifest
    # file when it is passed along with the manifest to the Snow device
    # through the Snowball client when the client is started for the first
    # time. The only valid status for calling this API is `WithCustomer` as
    # the manifest and `Unlock` code values are used for securing your
    # device and should only be used when you have the device.
    #
    # As a best practice, we recommend that you don't save a copy of the
    # `UnlockCode` in the same location as the manifest file for that job.
    # Saving these separately helps prevent unauthorized parties from
    # gaining access to the Snow device associated with that job.
    #
    # @option params [required, String] :job_id
    #   The ID for the job that you want to get the `UnlockCode` value for,
    #   for example `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Types::GetJobUnlockCodeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobUnlockCodeResult#unlock_code #unlock_code} => String
    #
    #
    # @example Example: To get the unlock code for a job you've created for AWS Snowball
    #
    #   # Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 90 days
    #   # after the associated job has been created.
    #   # The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt
    #   # the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client
    #   # is started for the first time.
    #   # As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file
    #   # for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated
    #   # with that job.
    #
    #   resp = client.get_job_unlock_code({
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unlock_code: "12345-abcde-56789-fghij-01234", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_unlock_code({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unlock_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobUnlockCode AWS API Documentation
    #
    # @overload get_job_unlock_code(params = {})
    # @param [Hash] params ({})
    def get_job_unlock_code(params = {}, options = {})
      req = build_request(:get_job_unlock_code, params)
      req.send_request(options)
    end

    # Returns information about the Snow Family service limit for your
    # account, and also the number of Snow devices your account has in use.
    #
    # The default service limit for the number of Snow devices that you can
    # have at one time is 1. If you want to increase your service limit,
    # contact Amazon Web Services Support.
    #
    # @return [Types::GetSnowballUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSnowballUsageResult#snowball_limit #snowball_limit} => Integer
    #   * {Types::GetSnowballUsageResult#snowballs_in_use #snowballs_in_use} => Integer
    #
    #
    # @example Example: To see your Snowball service limit and the number of Snowballs you have in use
    #
    #   # Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has
    #   # in use.
    #   # The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your
    #   # service limit, contact AWS Support.
    #
    #   resp = client.get_snowball_usage({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snowball_limit: 1, 
    #     snowballs_in_use: 0, 
    #   }
    #
    # @example Response structure
    #
    #   resp.snowball_limit #=> Integer
    #   resp.snowballs_in_use #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSnowballUsage AWS API Documentation
    #
    # @overload get_snowball_usage(params = {})
    # @param [Hash] params ({})
    def get_snowball_usage(params = {}, options = {})
      req = build_request(:get_snowball_usage, params)
      req.send_request(options)
    end

    # Returns an Amazon S3 presigned URL for an update file associated with
    # a specified `JobId`.
    #
    # @option params [required, String] :job_id
    #   The ID for a job that you want to get the software update file for,
    #   for example `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Types::GetSoftwareUpdatesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSoftwareUpdatesResult#updates_uri #updates_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_software_updates({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.updates_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSoftwareUpdates AWS API Documentation
    #
    # @overload get_software_updates(params = {})
    # @param [Hash] params ({})
    def get_software_updates(params = {}, options = {})
      req = build_request(:get_software_updates, params)
      req.send_request(options)
    end

    # Returns an array of `JobListEntry` objects of the specified length.
    # Each `JobListEntry` object is for a job in the specified cluster and
    # contains a job's state, a job's ID, and other information.
    #
    # @option params [required, String] :cluster_id
    #   The 39-character ID for the cluster that you want to list, for example
    #   `CID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @option params [Integer] :max_results
    #   The number of `JobListEntry` objects to return.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `JobListEntry` objects, you have the option of specifying
    #   `NextToken` as the starting point for your returned list.
    #
    # @return [Types::ListClusterJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClusterJobsResult#job_list_entries #job_list_entries} => Array&lt;Types::JobListEntry&gt;
    #   * {Types::ListClusterJobsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get a list of jobs in a cluster that you've created for AWS Snowball
    #
    #   # Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified
    #   # cluster and contains a job's state, a job's ID, and other information.
    #
    #   resp = client.list_cluster_jobs({
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_list_entries: [
    #       {
    #         creation_date: Time.parse("1480475524.0"), 
    #         description: "MyClustrer-node-001", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #       {
    #         creation_date: Time.parse("1480475525.0"), 
    #         description: "MyClustrer-node-002", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440001", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #       {
    #         creation_date: Time.parse("1480475525.0"), 
    #         description: "MyClustrer-node-003", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440002", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #       {
    #         creation_date: Time.parse("1480475525.0"), 
    #         description: "MyClustrer-node-004", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440003", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #       {
    #         creation_date: Time.parse("1480475525.0"), 
    #         description: "MyClustrer-node-005", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440004", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cluster_jobs({
    #     cluster_id: "ClusterId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_list_entries #=> Array
    #   resp.job_list_entries[0].job_id #=> String
    #   resp.job_list_entries[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_list_entries[0].is_master #=> Boolean
    #   resp.job_list_entries[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.job_list_entries[0].snowball_type #=> String, one of "STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"
    #   resp.job_list_entries[0].creation_date #=> Time
    #   resp.job_list_entries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClusterJobs AWS API Documentation
    #
    # @overload list_cluster_jobs(params = {})
    # @param [Hash] params ({})
    def list_cluster_jobs(params = {}, options = {})
      req = build_request(:list_cluster_jobs, params)
      req.send_request(options)
    end

    # Returns an array of `ClusterListEntry` objects of the specified
    # length. Each `ClusterListEntry` object contains a cluster's state, a
    # cluster's ID, and other important status information.
    #
    # @option params [Integer] :max_results
    #   The number of `ClusterListEntry` objects to return.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `ClusterListEntry` objects, you have the option of
    #   specifying `NextToken` as the starting point for your returned list.
    #
    # @return [Types::ListClustersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResult#cluster_list_entries #cluster_list_entries} => Array&lt;Types::ClusterListEntry&gt;
    #   * {Types::ListClustersResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get a list of clusters that you've created for AWS Snowball
    #
    #   # Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's
    #   # state, a cluster's ID, and other important status information.
    #
    #   resp = client.list_clusters({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_list_entries: [
    #       {
    #         cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #         cluster_state: "Pending", 
    #         creation_date: Time.parse("1480475517.0"), 
    #         description: "MyCluster", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_list_entries #=> Array
    #   resp.cluster_list_entries[0].cluster_id #=> String
    #   resp.cluster_list_entries[0].cluster_state #=> String, one of "AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"
    #   resp.cluster_list_entries[0].creation_date #=> Time
    #   resp.cluster_list_entries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # This action returns a list of the different Amazon EC2-compatible
    # Amazon Machine Images (AMIs) that are owned by your Amazon Web
    # Services accountthat would be supported for use on a Snow device.
    # Currently, supported AMIs are based on the Amazon Linux-2, Ubuntu
    # 20.04 LTS - Focal, or Ubuntu 22.04 LTS - Jammy images, available on
    # the Amazon Web Services Marketplace. Ubuntu 16.04 LTS - Xenial (HVM)
    # images are no longer supported in the Market, but still supported for
    # use on devices through Amazon EC2 VM Import/Export and running locally
    # in AMIs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results for the list of compatible images.
    #   Currently, a Snowball Edge device can store 10 AMIs.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of compatible images, you can specify a value for `NextToken`
    #   as the starting point for your list of returned images.
    #
    # @return [Types::ListCompatibleImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCompatibleImagesResult#compatible_images #compatible_images} => Array&lt;Types::CompatibleImage&gt;
    #   * {Types::ListCompatibleImagesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compatible_images({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.compatible_images #=> Array
    #   resp.compatible_images[0].ami_id #=> String
    #   resp.compatible_images[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListCompatibleImages AWS API Documentation
    #
    # @overload list_compatible_images(params = {})
    # @param [Hash] params ({})
    def list_compatible_images(params = {}, options = {})
      req = build_request(:list_compatible_images, params)
      req.send_request(options)
    end

    # Returns an array of `JobListEntry` objects of the specified length.
    # Each `JobListEntry` object contains a job's state, a job's ID, and a
    # value that indicates whether the job is a job part, in the case of
    # export jobs. Calling this API action in one of the US regions will
    # return jobs from the list of all jobs associated with this account in
    # all US regions.
    #
    # @option params [Integer] :max_results
    #   The number of `JobListEntry` objects to return.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `JobListEntry` objects, you have the option of specifying
    #   `NextToken` as the starting point for your returned list.
    #
    # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResult#job_list_entries #job_list_entries} => Array&lt;Types::JobListEntry&gt;
    #   * {Types::ListJobsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get a list of jobs that you've created for AWS Snowball
    #
    #   # Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a
    #   # job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action
    #   # in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    #
    #   resp = client.list_jobs({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_list_entries: [
    #       {
    #         creation_date: Time.parse("1460678186.0"), 
    #         description: "MyJob", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #         job_state: "New", 
    #         job_type: "IMPORT", 
    #         snowball_type: "STANDARD", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_list_entries #=> Array
    #   resp.job_list_entries[0].job_id #=> String
    #   resp.job_list_entries[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_list_entries[0].is_master #=> Boolean
    #   resp.job_list_entries[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.job_list_entries[0].snowball_type #=> String, one of "STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"
    #   resp.job_list_entries[0].creation_date #=> Time
    #   resp.job_list_entries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Lists all long-term pricing types.
    #
    # @option params [Integer] :max_results
    #   The maximum number of `ListLongTermPricing` objects to return.
    #
    # @option params [String] :next_token
    #   Because HTTP requests are stateless, this is the starting point for
    #   your next list of `ListLongTermPricing` to return.
    #
    # @return [Types::ListLongTermPricingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLongTermPricingResult#long_term_pricing_entries #long_term_pricing_entries} => Array&lt;Types::LongTermPricingListEntry&gt;
    #   * {Types::ListLongTermPricingResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_long_term_pricing({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.long_term_pricing_entries #=> Array
    #   resp.long_term_pricing_entries[0].long_term_pricing_id #=> String
    #   resp.long_term_pricing_entries[0].long_term_pricing_end_date #=> Time
    #   resp.long_term_pricing_entries[0].long_term_pricing_start_date #=> Time
    #   resp.long_term_pricing_entries[0].long_term_pricing_type #=> String, one of "OneYear", "ThreeYear", "OneMonth"
    #   resp.long_term_pricing_entries[0].current_active_job #=> String
    #   resp.long_term_pricing_entries[0].replacement_job #=> String
    #   resp.long_term_pricing_entries[0].is_long_term_pricing_auto_renew #=> Boolean
    #   resp.long_term_pricing_entries[0].long_term_pricing_status #=> String
    #   resp.long_term_pricing_entries[0].snowball_type #=> String, one of "STANDARD", "EDGE", "EDGE_C", "EDGE_CG", "EDGE_S", "SNC1_HDD", "SNC1_SSD", "V3_5C", "V3_5S", "RACK_5U_C"
    #   resp.long_term_pricing_entries[0].job_ids #=> Array
    #   resp.long_term_pricing_entries[0].job_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListLongTermPricing AWS API Documentation
    #
    # @overload list_long_term_pricing(params = {})
    # @param [Hash] params ({})
    def list_long_term_pricing(params = {}, options = {})
      req = build_request(:list_long_term_pricing, params)
      req.send_request(options)
    end

    # A list of locations from which the customer can choose to pickup a
    # device.
    #
    # @option params [Integer] :max_results
    #   The maximum number of locations to list per page.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `ListPickupLocationsRequest` objects, you have the option
    #   of specifying `NextToken` as the starting point for your returned
    #   list.
    #
    # @return [Types::ListPickupLocationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPickupLocationsResult#addresses #addresses} => Array&lt;Types::Address&gt;
    #   * {Types::ListPickupLocationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get a list of locations from which the customer can choose to pickup a device.
    #
    #   # Returns a specified number of Address objects. Each Address is a pickup location address for Snow Family devices.
    #
    #   resp = client.list_pickup_locations({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     addresses: [
    #       {
    #         address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #         city: "Seattle", 
    #         company: "My Company", 
    #         country: "US", 
    #         name: "My Name", 
    #         phone_number: "425-555-5555", 
    #         postal_code: "98101", 
    #         state_or_province: "WA", 
    #         street_1: "123 Main Street", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pickup_locations({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.addresses #=> Array
    #   resp.addresses[0].address_id #=> String
    #   resp.addresses[0].name #=> String
    #   resp.addresses[0].company #=> String
    #   resp.addresses[0].street_1 #=> String
    #   resp.addresses[0].street_2 #=> String
    #   resp.addresses[0].street_3 #=> String
    #   resp.addresses[0].city #=> String
    #   resp.addresses[0].state_or_province #=> String
    #   resp.addresses[0].prefecture_or_district #=> String
    #   resp.addresses[0].landmark #=> String
    #   resp.addresses[0].country #=> String
    #   resp.addresses[0].postal_code #=> String
    #   resp.addresses[0].phone_number #=> String
    #   resp.addresses[0].is_restricted #=> Boolean
    #   resp.addresses[0].type #=> String, one of "CUST_PICKUP", "AWS_SHIP"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListPickupLocations AWS API Documentation
    #
    # @overload list_pickup_locations(params = {})
    # @param [Hash] params ({})
    def list_pickup_locations(params = {}, options = {})
      req = build_request(:list_pickup_locations, params)
      req.send_request(options)
    end

    # Lists all supported versions for Snow on-device services. Returns an
    # array of `ServiceVersion` object containing the supported versions for
    # a particular service.
    #
    # @option params [required, String] :service_name
    #   The name of the service for which you're requesting supported
    #   versions.
    #
    # @option params [Array<Types::DependentService>] :dependent_services
    #   A list of names and versions of dependant services of the requested
    #   service.
    #
    # @option params [Integer] :max_results
    #   The maximum number of `ListServiceVersions` objects to return.
    #
    # @option params [String] :next_token
    #   Because HTTP requests are stateless, this is the starting point for
    #   the next list of returned `ListServiceVersionsRequest` versions.
    #
    # @return [Types::ListServiceVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceVersionsResult#service_versions #service_versions} => Array&lt;Types::ServiceVersion&gt;
    #   * {Types::ListServiceVersionsResult#service_name #service_name} => String
    #   * {Types::ListServiceVersionsResult#dependent_services #dependent_services} => Array&lt;Types::DependentService&gt;
    #   * {Types::ListServiceVersionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_versions({
    #     service_name: "KUBERNETES", # required, accepts KUBERNETES, EKS_ANYWHERE
    #     dependent_services: [
    #       {
    #         service_name: "KUBERNETES", # accepts KUBERNETES, EKS_ANYWHERE
    #         service_version: {
    #           version: "String",
    #         },
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.service_versions #=> Array
    #   resp.service_versions[0].version #=> String
    #   resp.service_name #=> String, one of "KUBERNETES", "EKS_ANYWHERE"
    #   resp.dependent_services #=> Array
    #   resp.dependent_services[0].service_name #=> String, one of "KUBERNETES", "EKS_ANYWHERE"
    #   resp.dependent_services[0].service_version.version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListServiceVersions AWS API Documentation
    #
    # @overload list_service_versions(params = {})
    # @param [Hash] params ({})
    def list_service_versions(params = {}, options = {})
      req = build_request(:list_service_versions, params)
      req.send_request(options)
    end

    # While a cluster's `ClusterState` value is in the `AwaitingQuorum`
    # state, you can update some of the information associated with a
    # cluster. Once the cluster changes to a different job state, usually 60
    # minutes after the cluster being created, this action is no longer
    # available.
    #
    # @option params [required, String] :cluster_id
    #   The cluster ID of the cluster that you want to update, for example
    #   `CID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @option params [String] :role_arn
    #   The new role Amazon Resource Name (ARN) that you want to associate
    #   with this cluster. To create a role ARN, use the [CreateRole][1] API
    #   action in Identity and Access Management (IAM).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @option params [String] :description
    #   The updated description of this cluster.
    #
    # @option params [Types::JobResource] :resources
    #   The updated arrays of JobResource objects that can include updated
    #   S3Resource objects or LambdaResource objects.
    #
    # @option params [Types::OnDeviceServiceConfiguration] :on_device_service_configuration
    #   Specifies the service or services on the Snow Family device that your
    #   transferred data will be exported from or imported into. Amazon Web
    #   Services Snow Family device clusters support Amazon S3 and NFS
    #   (Network File System).
    #
    # @option params [String] :address_id
    #   The ID of the updated Address object.
    #
    # @option params [String] :shipping_option
    #   The updated shipping option value of this cluster's ShippingDetails
    #   object.
    #
    # @option params [Types::Notification] :notification
    #   The new or updated Notification object.
    #
    # @option params [String] :forwarding_address_id
    #   The updated ID for the forwarding address for a cluster. This field is
    #   not supported in most regions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update a cluster
    #
    #   # This action allows you to update certain parameters for a cluster. Once the cluster changes to a different state,
    #   # usually within 60 minutes of it being created, this action is no longer available.
    #
    #   resp = client.update_cluster({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #     description: "updated-cluster-name", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster({
    #     cluster_id: "ClusterId", # required
    #     role_arn: "RoleARN",
    #     description: "String",
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String",
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: "NFS_ON_DEVICE_SERVICE", # accepts NFS_ON_DEVICE_SERVICE, S3_ON_DEVICE_SERVICE
    #               transfer_option: "IMPORT", # accepts IMPORT, EXPORT, LOCAL_USE
    #             },
    #           ],
    #         },
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN",
    #             },
    #           ],
    #         },
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String",
    #         },
    #       ],
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB", # accepts TB
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB", # accepts TB
    #       },
    #       eks_on_device_service: {
    #         kubernetes_version: "String",
    #         eks_anywhere_version: "String",
    #       },
    #       s3_on_device_service: {
    #         storage_limit: 1.0,
    #         storage_unit: "TB", # accepts TB
    #         service_size: 1,
    #         fault_tolerance: 1,
    #       },
    #     },
    #     address_id: "AddressId",
    #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #       notify_all: false,
    #       device_pickup_sns_topic_arn: "SnsTopicARN",
    #     },
    #     forwarding_address_id: "AddressId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateCluster AWS API Documentation
    #
    # @overload update_cluster(params = {})
    # @param [Hash] params ({})
    def update_cluster(params = {}, options = {})
      req = build_request(:update_cluster, params)
      req.send_request(options)
    end

    # While a job's `JobState` value is `New`, you can update some of the
    # information associated with a job. Once the job changes to a different
    # job state, usually within 60 minutes of the job being created, this
    # action is no longer available.
    #
    # @option params [required, String] :job_id
    #   The job ID of the job that you want to update, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @option params [String] :role_arn
    #   The new role Amazon Resource Name (ARN) that you want to associate
    #   with this job. To create a role ARN, use the [CreateRole][1]Identity
    #   and Access Management (IAM) API action.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @option params [Types::Notification] :notification
    #   The new or updated Notification object.
    #
    # @option params [Types::JobResource] :resources
    #   The updated `JobResource` object, or the updated JobResource object.
    #
    # @option params [Types::OnDeviceServiceConfiguration] :on_device_service_configuration
    #   Specifies the service or services on the Snow Family device that your
    #   transferred data will be exported from or imported into. Amazon Web
    #   Services Snow Family supports Amazon S3 and NFS (Network File System)
    #   and the Amazon Web Services Storage Gateway service Tape Gateway type.
    #
    # @option params [String] :address_id
    #   The ID of the updated Address object.
    #
    # @option params [String] :shipping_option
    #   The updated shipping option value of this job's ShippingDetails
    #   object.
    #
    # @option params [String] :description
    #   The updated description of this job's JobMetadata object.
    #
    # @option params [String] :snowball_capacity_preference
    #   The updated `SnowballCapacityPreference` of this job's JobMetadata
    #   object. The 50 TB Snowballs are only available in the US regions.
    #
    #   For more information, see
    #   "https://docs.aws.amazon.com/snowball/latest/snowcone-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide* or
    #   "https://docs.aws.amazon.com/snowball/latest/developer-guide/snow-device-types.html"
    #   (Snow Family Devices and Capacity) in the *Snowcone User Guide*.
    #
    # @option params [String] :forwarding_address_id
    #   The updated ID for the forwarding address for a job. This field is not
    #   supported in most regions.
    #
    # @option params [Types::PickupDetails] :pickup_details
    #   Information identifying the person picking up the device.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update a job
    #
    #   # This action allows you to update certain parameters for a job. Once the job changes to a different job state, usually
    #   # within 60 minutes of the job being created, this action is no longer available.
    #
    #   resp = client.update_job({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #     description: "updated-job-name", 
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #     shipping_option: "NEXT_DAY", 
    #     snowball_capacity_preference: "T100", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job({
    #     job_id: "JobId", # required
    #     role_arn: "RoleARN",
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #       notify_all: false,
    #       device_pickup_sns_topic_arn: "SnsTopicARN",
    #     },
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String",
    #           },
    #           target_on_device_services: [
    #             {
    #               service_name: "NFS_ON_DEVICE_SERVICE", # accepts NFS_ON_DEVICE_SERVICE, S3_ON_DEVICE_SERVICE
    #               transfer_option: "IMPORT", # accepts IMPORT, EXPORT, LOCAL_USE
    #             },
    #           ],
    #         },
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN",
    #             },
    #           ],
    #         },
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String",
    #         },
    #       ],
    #     },
    #     on_device_service_configuration: {
    #       nfs_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB", # accepts TB
    #       },
    #       tgw_on_device_service: {
    #         storage_limit: 1,
    #         storage_unit: "TB", # accepts TB
    #       },
    #       eks_on_device_service: {
    #         kubernetes_version: "String",
    #         eks_anywhere_version: "String",
    #       },
    #       s3_on_device_service: {
    #         storage_limit: 1.0,
    #         storage_unit: "TB", # accepts TB
    #         service_size: 1,
    #         fault_tolerance: 1,
    #       },
    #     },
    #     address_id: "AddressId",
    #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #     description: "String",
    #     snowball_capacity_preference: "T50", # accepts T50, T80, T100, T42, T98, T8, T14, T32, NoPreference, T240, T13
    #     forwarding_address_id: "AddressId",
    #     pickup_details: {
    #       name: "String",
    #       phone_number: "PhoneNumber",
    #       email: "Email",
    #       identification_number: "String",
    #       identification_expiration_date: Time.now,
    #       identification_issuing_org: "String",
    #       device_pickup_id: "DevicePickupId",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJob AWS API Documentation
    #
    # @overload update_job(params = {})
    # @param [Hash] params ({})
    def update_job(params = {}, options = {})
      req = build_request(:update_job, params)
      req.send_request(options)
    end

    # Updates the state when a shipment state changes to a different state.
    #
    # @option params [required, String] :job_id
    #   The job ID of the job whose shipment date you want to update, for
    #   example `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @option params [required, String] :shipment_state
    #   The state of a device when it is being shipped.
    #
    #   Set to `RECEIVED` when the device arrives at your location.
    #
    #   Set to `RETURNED` when you have returned the device to Amazon Web
    #   Services.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_shipment_state({
    #     job_id: "JobId", # required
    #     shipment_state: "RECEIVED", # required, accepts RECEIVED, RETURNED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJobShipmentState AWS API Documentation
    #
    # @overload update_job_shipment_state(params = {})
    # @param [Hash] params ({})
    def update_job_shipment_state(params = {}, options = {})
      req = build_request(:update_job_shipment_state, params)
      req.send_request(options)
    end

    # Updates the long-term pricing type.
    #
    # @option params [required, String] :long_term_pricing_id
    #   The ID of the long-term pricing type for the device.
    #
    # @option params [String] :replacement_job
    #   Specifies that a device that is ordered with long-term pricing should
    #   be replaced with a new device.
    #
    # @option params [Boolean] :is_long_term_pricing_auto_renew
    #   If set to `true`, specifies that the current long-term pricing type
    #   for the device should be automatically renewed before the long-term
    #   pricing contract expires.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_long_term_pricing({
    #     long_term_pricing_id: "LongTermPricingId", # required
    #     replacement_job: "JobId",
    #     is_long_term_pricing_auto_renew: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateLongTermPricing AWS API Documentation
    #
    # @overload update_long_term_pricing(params = {})
    # @param [Hash] params ({})
    def update_long_term_pricing(params = {}, options = {})
      req = build_request(:update_long_term_pricing, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Snowball')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-snowball'
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
