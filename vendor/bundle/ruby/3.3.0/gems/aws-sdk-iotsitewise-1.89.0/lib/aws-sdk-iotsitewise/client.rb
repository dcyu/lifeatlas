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
require 'aws-sdk-core/plugins/event_stream_configuration'

module Aws::IoTSiteWise
  # An API client for IoTSiteWise.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTSiteWise::Client.new(
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

    @identifier = :iotsitewise

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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::IoTSiteWise::Plugins::Endpoints)

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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Aws::IoTSiteWise::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::IoTSiteWise::EndpointParameters`.
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

    # Associates a child asset with the given parent asset through a
    # hierarchy defined in the parent asset's model. For more information,
    # see [Associating assets][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the parent asset. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. (This can be
    #   either the actual ID in UUID format, or else `externalId:` followed by
    #   the external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.)
    #   Hierarchies allow different groupings of assets to be formed that all
    #   come from the same asset model. For more information, see [Asset
    #   hierarchies][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #
    # @option params [required, String] :child_asset_id
    #   The ID of the child asset to be associated. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_assets({
    #     asset_id: "CustomID", # required
    #     hierarchy_id: "CustomID", # required
    #     child_asset_id: "CustomID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload associate_assets(params = {})
    # @param [Hash] params ({})
    def associate_assets(params = {}, options = {})
      req = build_request(:associate_assets, params)
      req.send_request(options)
    end

    # Associates a time series (data stream) with an asset property.
    #
    # @option params [required, String] :alias
    #   The alias that identifies the time series.
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset in which the asset property was created. This can
    #   be either the actual ID in UUID format, or else `externalId:` followed
    #   by the external ID, if it has one. For more information, see
    #   [Referencing objects with external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :property_id
    #   The ID of the asset property. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_time_series_to_asset_property({
    #     alias: "PropertyAlias", # required
    #     asset_id: "CustomID", # required
    #     property_id: "CustomID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload associate_time_series_to_asset_property(params = {})
    # @param [Hash] params ({})
    def associate_time_series_to_asset_property(params = {}, options = {})
      req = build_request(:associate_time_series_to_asset_property, params)
      req.send_request(options)
    end

    # Associates a group (batch) of assets with an IoT SiteWise Monitor
    # project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project to which to associate the assets.
    #
    # @option params [required, Array<String>] :asset_ids
    #   The IDs of the assets to be associated to the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchAssociateProjectAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchAssociateProjectAssetsResponse#errors #errors} => Array&lt;Types::AssetErrorDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_project_assets({
    #     project_id: "ID", # required
    #     asset_ids: ["ID"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].asset_id #=> String
    #   resp.errors[0].code #=> String, one of "INTERNAL_FAILURE"
    #   resp.errors[0].message #=> String
    #
    # @overload batch_associate_project_assets(params = {})
    # @param [Hash] params ({})
    def batch_associate_project_assets(params = {}, options = {})
      req = build_request(:batch_associate_project_assets, params)
      req.send_request(options)
    end

    # Disassociates a group (batch) of assets from an IoT SiteWise Monitor
    # project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project from which to disassociate the assets.
    #
    # @option params [required, Array<String>] :asset_ids
    #   The IDs of the assets to be disassociated from the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchDisassociateProjectAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDisassociateProjectAssetsResponse#errors #errors} => Array&lt;Types::AssetErrorDetails&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_project_assets({
    #     project_id: "ID", # required
    #     asset_ids: ["ID"], # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].asset_id #=> String
    #   resp.errors[0].code #=> String, one of "INTERNAL_FAILURE"
    #   resp.errors[0].message #=> String
    #
    # @overload batch_disassociate_project_assets(params = {})
    # @param [Hash] params ({})
    def batch_disassociate_project_assets(params = {}, options = {})
      req = build_request(:batch_disassociate_project_assets, params)
      req.send_request(options)
    end

    # Gets aggregated values (for example, average, minimum, and maximum)
    # for one or more asset properties. For more information, see [Querying
    # aggregates][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates
    #
    # @option params [required, Array<Types::BatchGetAssetPropertyAggregatesEntry>] :entries
    #   The list of asset property aggregate entries for the batch get
    #   request. You can specify up to 16 entries per request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request. A
    #   result set is returned in the two cases, whichever occurs first.
    #
    #   * The size of the result set is equal to 1 MB.
    #
    #   * The number of data points in the result set is equal to the value of
    #     `maxResults`. The maximum value of `maxResults` is 4000.
    #
    # @return [Types::BatchGetAssetPropertyAggregatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAssetPropertyAggregatesResponse#error_entries #error_entries} => Array&lt;Types::BatchGetAssetPropertyAggregatesErrorEntry&gt;
    #   * {Types::BatchGetAssetPropertyAggregatesResponse#success_entries #success_entries} => Array&lt;Types::BatchGetAssetPropertyAggregatesSuccessEntry&gt;
    #   * {Types::BatchGetAssetPropertyAggregatesResponse#skipped_entries #skipped_entries} => Array&lt;Types::BatchGetAssetPropertyAggregatesSkippedEntry&gt;
    #   * {Types::BatchGetAssetPropertyAggregatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_asset_property_aggregates({
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         aggregate_types: ["AVERAGE"], # required, accepts AVERAGE, COUNT, MAXIMUM, MINIMUM, SUM, STANDARD_DEVIATION
    #         resolution: "Resolution", # required
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #         qualities: ["GOOD"], # accepts GOOD, BAD, UNCERTAIN
    #         time_ordering: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"
    #   resp.error_entries[0].error_message #=> String
    #   resp.error_entries[0].entry_id #=> String
    #   resp.success_entries #=> Array
    #   resp.success_entries[0].entry_id #=> String
    #   resp.success_entries[0].aggregated_values #=> Array
    #   resp.success_entries[0].aggregated_values[0].timestamp #=> Time
    #   resp.success_entries[0].aggregated_values[0].quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #   resp.success_entries[0].aggregated_values[0].value.average #=> Float
    #   resp.success_entries[0].aggregated_values[0].value.count #=> Float
    #   resp.success_entries[0].aggregated_values[0].value.maximum #=> Float
    #   resp.success_entries[0].aggregated_values[0].value.minimum #=> Float
    #   resp.success_entries[0].aggregated_values[0].value.sum #=> Float
    #   resp.success_entries[0].aggregated_values[0].value.standard_deviation #=> Float
    #   resp.skipped_entries #=> Array
    #   resp.skipped_entries[0].entry_id #=> String
    #   resp.skipped_entries[0].completion_status #=> String, one of "SUCCESS", "ERROR"
    #   resp.skipped_entries[0].error_info.error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"
    #   resp.skipped_entries[0].error_info.error_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @overload batch_get_asset_property_aggregates(params = {})
    # @param [Hash] params ({})
    def batch_get_asset_property_aggregates(params = {}, options = {})
      req = build_request(:batch_get_asset_property_aggregates, params)
      req.send_request(options)
    end

    # Gets the current value for one or more asset properties. For more
    # information, see [Querying current values][1] in the *IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values
    #
    # @option params [required, Array<Types::BatchGetAssetPropertyValueEntry>] :entries
    #   The list of asset property value entries for the batch get request.
    #   You can specify up to 128 entries per request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @return [Types::BatchGetAssetPropertyValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAssetPropertyValueResponse#error_entries #error_entries} => Array&lt;Types::BatchGetAssetPropertyValueErrorEntry&gt;
    #   * {Types::BatchGetAssetPropertyValueResponse#success_entries #success_entries} => Array&lt;Types::BatchGetAssetPropertyValueSuccessEntry&gt;
    #   * {Types::BatchGetAssetPropertyValueResponse#skipped_entries #skipped_entries} => Array&lt;Types::BatchGetAssetPropertyValueSkippedEntry&gt;
    #   * {Types::BatchGetAssetPropertyValueResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_asset_property_value({
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #       },
    #     ],
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"
    #   resp.error_entries[0].error_message #=> String
    #   resp.error_entries[0].entry_id #=> String
    #   resp.success_entries #=> Array
    #   resp.success_entries[0].entry_id #=> String
    #   resp.success_entries[0].asset_property_value.value.string_value #=> String
    #   resp.success_entries[0].asset_property_value.value.integer_value #=> Integer
    #   resp.success_entries[0].asset_property_value.value.double_value #=> Float
    #   resp.success_entries[0].asset_property_value.value.boolean_value #=> Boolean
    #   resp.success_entries[0].asset_property_value.value.null_value.value_type #=> String, one of "D", "B", "S", "I", "U"
    #   resp.success_entries[0].asset_property_value.timestamp.time_in_seconds #=> Integer
    #   resp.success_entries[0].asset_property_value.timestamp.offset_in_nanos #=> Integer
    #   resp.success_entries[0].asset_property_value.quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #   resp.skipped_entries #=> Array
    #   resp.skipped_entries[0].entry_id #=> String
    #   resp.skipped_entries[0].completion_status #=> String, one of "SUCCESS", "ERROR"
    #   resp.skipped_entries[0].error_info.error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"
    #   resp.skipped_entries[0].error_info.error_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @overload batch_get_asset_property_value(params = {})
    # @param [Hash] params ({})
    def batch_get_asset_property_value(params = {}, options = {})
      req = build_request(:batch_get_asset_property_value, params)
      req.send_request(options)
    end

    # Gets the historical values for one or more asset properties. For more
    # information, see [Querying historical values][1] in the *IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values
    #
    # @option params [required, Array<Types::BatchGetAssetPropertyValueHistoryEntry>] :entries
    #   The list of asset property historical value entries for the batch get
    #   request. You can specify up to 16 entries per request.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request. A
    #   result set is returned in the two cases, whichever occurs first.
    #
    #   * The size of the result set is equal to 4 MB.
    #
    #   * The number of data points in the result set is equal to the value of
    #     `maxResults`. The maximum value of `maxResults` is 20000.
    #
    # @return [Types::BatchGetAssetPropertyValueHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAssetPropertyValueHistoryResponse#error_entries #error_entries} => Array&lt;Types::BatchGetAssetPropertyValueHistoryErrorEntry&gt;
    #   * {Types::BatchGetAssetPropertyValueHistoryResponse#success_entries #success_entries} => Array&lt;Types::BatchGetAssetPropertyValueHistorySuccessEntry&gt;
    #   * {Types::BatchGetAssetPropertyValueHistoryResponse#skipped_entries #skipped_entries} => Array&lt;Types::BatchGetAssetPropertyValueHistorySkippedEntry&gt;
    #   * {Types::BatchGetAssetPropertyValueHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_asset_property_value_history({
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         qualities: ["GOOD"], # accepts GOOD, BAD, UNCERTAIN
    #         time_ordering: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"
    #   resp.error_entries[0].error_message #=> String
    #   resp.error_entries[0].entry_id #=> String
    #   resp.success_entries #=> Array
    #   resp.success_entries[0].entry_id #=> String
    #   resp.success_entries[0].asset_property_value_history #=> Array
    #   resp.success_entries[0].asset_property_value_history[0].value.string_value #=> String
    #   resp.success_entries[0].asset_property_value_history[0].value.integer_value #=> Integer
    #   resp.success_entries[0].asset_property_value_history[0].value.double_value #=> Float
    #   resp.success_entries[0].asset_property_value_history[0].value.boolean_value #=> Boolean
    #   resp.success_entries[0].asset_property_value_history[0].value.null_value.value_type #=> String, one of "D", "B", "S", "I", "U"
    #   resp.success_entries[0].asset_property_value_history[0].timestamp.time_in_seconds #=> Integer
    #   resp.success_entries[0].asset_property_value_history[0].timestamp.offset_in_nanos #=> Integer
    #   resp.success_entries[0].asset_property_value_history[0].quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #   resp.skipped_entries #=> Array
    #   resp.skipped_entries[0].entry_id #=> String
    #   resp.skipped_entries[0].completion_status #=> String, one of "SUCCESS", "ERROR"
    #   resp.skipped_entries[0].error_info.error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "AccessDeniedException"
    #   resp.skipped_entries[0].error_info.error_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @overload batch_get_asset_property_value_history(params = {})
    # @param [Hash] params ({})
    def batch_get_asset_property_value_history(params = {}, options = {})
      req = build_request(:batch_get_asset_property_value_history, params)
      req.send_request(options)
    end

    # Sends a list of asset property values to IoT SiteWise. Each value is a
    # timestamp-quality-value (TQV) data point. For more information, see
    # [Ingesting data using the API][1] in the *IoT SiteWise User Guide*.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    # With respect to Unix epoch time, IoT SiteWise accepts only TQVs that
    # have a timestamp of no more than 7 days in the past and no more than
    # 10 minutes in the future. IoT SiteWise rejects timestamps outside of
    # the inclusive range of \[-7 days, +10 minutes\] and returns a
    # `TimestampOutOfRangeException` error.
    #
    #  For each asset property, IoT SiteWise overwrites TQVs with duplicate
    # timestamps unless the newer TQV has a different quality. For example,
    # if you store a TQV `{T1, GOOD, V1}`, then storing `{T1, GOOD, V2}`
    # replaces the existing TQV.
    #
    # IoT SiteWise authorizes access to each `BatchPutAssetPropertyValue`
    # entry individually. For more information, see
    # [BatchPutAssetPropertyValue authorization][3] in the *IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    # [3]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action
    #
    # @option params [Boolean] :enable_partial_entry_processing
    #   This setting enables partial ingestion at entry-level. If set to
    #   `true`, we ingest all TQVs not resulting in an error. If set to
    #   `false`, an invalid TQV fails ingestion of the entire entry that
    #   contains it.
    #
    # @option params [required, Array<Types::PutAssetPropertyValueEntry>] :entries
    #   The list of asset property value entries for the batch put request.
    #   You can specify up to 10 entries per request.
    #
    # @return [Types::BatchPutAssetPropertyValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutAssetPropertyValueResponse#error_entries #error_entries} => Array&lt;Types::BatchPutAssetPropertyErrorEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_asset_property_value({
    #     enable_partial_entry_processing: false,
    #     entries: [ # required
    #       {
    #         entry_id: "EntryId", # required
    #         asset_id: "ID",
    #         property_id: "ID",
    #         property_alias: "AssetPropertyAlias",
    #         property_values: [ # required
    #           {
    #             value: { # required
    #               string_value: "PropertyValueStringValue",
    #               integer_value: 1,
    #               double_value: 1.0,
    #               boolean_value: false,
    #               null_value: {
    #                 value_type: "D", # required, accepts D, B, S, I, U
    #               },
    #             },
    #             timestamp: { # required
    #               time_in_seconds: 1, # required
    #               offset_in_nanos: 1,
    #             },
    #             quality: "GOOD", # accepts GOOD, BAD, UNCERTAIN
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.error_entries #=> Array
    #   resp.error_entries[0].entry_id #=> String
    #   resp.error_entries[0].errors #=> Array
    #   resp.error_entries[0].errors[0].error_code #=> String, one of "ResourceNotFoundException", "InvalidRequestException", "InternalFailureException", "ServiceUnavailableException", "ThrottlingException", "LimitExceededException", "ConflictingOperationException", "TimestampOutOfRangeException", "AccessDeniedException"
    #   resp.error_entries[0].errors[0].error_message #=> String
    #   resp.error_entries[0].errors[0].timestamps #=> Array
    #   resp.error_entries[0].errors[0].timestamps[0].time_in_seconds #=> Integer
    #   resp.error_entries[0].errors[0].timestamps[0].offset_in_nanos #=> Integer
    #
    # @overload batch_put_asset_property_value(params = {})
    # @param [Hash] params ({})
    def batch_put_asset_property_value(params = {}, options = {})
      req = build_request(:batch_put_asset_property_value, params)
      req.send_request(options)
    end

    # Creates an access policy that grants the specified identity (IAM
    # Identity Center user, IAM Identity Center group, or IAM user) access
    # to the specified IoT SiteWise Monitor portal or project resource.
    #
    # @option params [required, Types::Identity] :access_policy_identity
    #   The identity for this access policy. Choose an IAM Identity Center
    #   user, an IAM Identity Center group, or an IAM user.
    #
    # @option params [required, Types::Resource] :access_policy_resource
    #   The IoT SiteWise Monitor resource for this access policy. Choose
    #   either a portal or a project.
    #
    # @option params [required, String] :access_policy_permission
    #   The permission level for this access policy. Note that a project
    #   `ADMINISTRATOR` is also known as a project owner.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the access policy.
    #   For more information, see [Tagging your IoT SiteWise resources][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateAccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessPolicyResponse#access_policy_id #access_policy_id} => String
    #   * {Types::CreateAccessPolicyResponse#access_policy_arn #access_policy_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_policy({
    #     access_policy_identity: { # required
    #       user: {
    #         id: "IdentityId", # required
    #       },
    #       group: {
    #         id: "IdentityId", # required
    #       },
    #       iam_user: {
    #         arn: "IamArn", # required
    #       },
    #       iam_role: {
    #         arn: "IamArn", # required
    #       },
    #     },
    #     access_policy_resource: { # required
    #       portal: {
    #         id: "ID", # required
    #       },
    #       project: {
    #         id: "ID", # required
    #       },
    #     },
    #     access_policy_permission: "ADMINISTRATOR", # required, accepts ADMINISTRATOR, VIEWER
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_id #=> String
    #   resp.access_policy_arn #=> String
    #
    # @overload create_access_policy(params = {})
    # @param [Hash] params ({})
    def create_access_policy(params = {}, options = {})
      req = build_request(:create_access_policy, params)
      req.send_request(options)
    end

    # Creates an asset from an existing asset model. For more information,
    # see [Creating assets][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html
    #
    # @option params [required, String] :asset_name
    #   A friendly name for the asset.
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model from which to create the asset. This can be
    #   either the actual ID in UUID format, or else `externalId:` followed by
    #   the external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :asset_id
    #   The ID to assign to the asset, if desired. IoT SiteWise automatically
    #   generates a unique ID for you, so this parameter is never required.
    #   However, if you prefer to supply your own ID instead, you can specify
    #   it here in UUID format. If you specify your own ID, it must be
    #   globally unique.
    #
    # @option params [String] :asset_external_id
    #   An external ID to assign to the asset. The external ID must be unique
    #   within your Amazon Web Services account. For more information, see
    #   [Using external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the asset. For
    #   more information, see [Tagging your IoT SiteWise resources][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @option params [String] :asset_description
    #   A description for the asset.
    #
    # @return [Types::CreateAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetResponse#asset_id #asset_id} => String
    #   * {Types::CreateAssetResponse#asset_arn #asset_arn} => String
    #   * {Types::CreateAssetResponse#asset_status #asset_status} => Types::AssetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset({
    #     asset_name: "Name", # required
    #     asset_model_id: "CustomID", # required
    #     asset_id: "ID",
    #     asset_external_id: "ExternalId",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     asset_description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.asset_arn #=> String
    #   resp.asset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_status.error.message #=> String
    #   resp.asset_status.error.details #=> Array
    #   resp.asset_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_status.error.details[0].message #=> String
    #
    # @overload create_asset(params = {})
    # @param [Hash] params ({})
    def create_asset(params = {}, options = {})
      req = build_request(:create_asset, params)
      req.send_request(options)
    end

    # Creates an asset model from specified property and hierarchy
    # definitions. You create assets from asset models. With asset models,
    # you can easily create assets of the same type that have standardized
    # definitions. Each asset created from a model inherits the asset
    # model's property and hierarchy definitions. For more information, see
    # [Defining asset models][1] in the *IoT SiteWise User Guide*.
    #
    # You can create two types of asset models, `ASSET_MODEL` or
    # `COMPONENT_MODEL`.
    #
    # * **ASSET\_MODEL** – (default) An asset model that you can use to
    #   create assets. Can't be included as a component in another asset
    #   model.
    #
    # * **COMPONENT\_MODEL** – A reusable component that you can include in
    #   the composite models of other asset models. You can't create assets
    #   directly from this type of asset model.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html
    #
    # @option params [required, String] :asset_model_name
    #   A unique name for the asset model.
    #
    # @option params [String] :asset_model_type
    #   The type of asset model.
    #
    #   * **ASSET\_MODEL** – (default) An asset model that you can use to
    #     create assets. Can't be included as a component in another asset
    #     model.
    #
    #   * **COMPONENT\_MODEL** – A reusable component that you can include in
    #     the composite models of other asset models. You can't create assets
    #     directly from this type of asset model.
    #
    # @option params [String] :asset_model_id
    #   The ID to assign to the asset model, if desired. IoT SiteWise
    #   automatically generates a unique ID for you, so this parameter is
    #   never required. However, if you prefer to supply your own ID instead,
    #   you can specify it here in UUID format. If you specify your own ID, it
    #   must be globally unique.
    #
    # @option params [String] :asset_model_external_id
    #   An external ID to assign to the asset model. The external ID must be
    #   unique within your Amazon Web Services account. For more information,
    #   see [Using external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #
    # @option params [String] :asset_model_description
    #   A description for the asset model.
    #
    # @option params [Array<Types::AssetModelPropertyDefinition>] :asset_model_properties
    #   The property definitions of the asset model. For more information, see
    #   [Asset properties][1] in the *IoT SiteWise User Guide*.
    #
    #   You can specify up to 200 properties per asset model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [Array<Types::AssetModelHierarchyDefinition>] :asset_model_hierarchies
    #   The hierarchy definitions of the asset model. Each hierarchy specifies
    #   an asset model whose assets can be children of any other assets
    #   created from this asset model. For more information, see [Asset
    #   hierarchies][1] in the *IoT SiteWise User Guide*.
    #
    #   You can specify up to 10 hierarchies per asset model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [Array<Types::AssetModelCompositeModelDefinition>] :asset_model_composite_models
    #   The composite models that are part of this asset model. It groups
    #   properties (such as attributes, measurements, transforms, and metrics)
    #   and child composite models that model parts of your industrial
    #   equipment. Each composite model has a type that defines the properties
    #   that the composite model supports. Use composite models to define
    #   alarms on this asset model.
    #
    #   <note markdown="1"> When creating custom composite models, you need to use
    #   [CreateAssetModelCompositeModel][1]. For more information, see
    #   [Creating custom composite models (Components)][2] in the *IoT
    #   SiteWise User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the asset model.
    #   For more information, see [Tagging your IoT SiteWise resources][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateAssetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetModelResponse#asset_model_id #asset_model_id} => String
    #   * {Types::CreateAssetModelResponse#asset_model_arn #asset_model_arn} => String
    #   * {Types::CreateAssetModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_model({
    #     asset_model_name: "Name", # required
    #     asset_model_type: "ASSET_MODEL", # accepts ASSET_MODEL, COMPONENT_MODEL
    #     asset_model_id: "ID",
    #     asset_model_external_id: "ExternalId",
    #     asset_model_description: "Description",
    #     asset_model_properties: [
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue",
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED", # required, accepts DISABLED, ENABLED
    #               },
    #             },
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name",
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #               forwarding_config: {
    #                 state: "DISABLED", # required, accepts DISABLED, ENABLED
    #               },
    #             },
    #           },
    #           metric: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name",
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset",
    #               },
    #             },
    #             processing_config: {
    #               compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     asset_model_hierarchies: [
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         child_asset_model_id: "CustomID", # required
    #       },
    #     ],
    #     asset_model_composite_models: [
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         description: "Description",
    #         type: "Name", # required
    #         properties: [
    #           {
    #             id: "ID",
    #             external_id: "ExternalId",
    #             name: "Name", # required
    #             data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
    #             data_type_spec: "Name",
    #             unit: "PropertyUnit",
    #             type: { # required
    #               attribute: {
    #                 default_value: "DefaultValue",
    #               },
    #               measurement: {
    #                 processing_config: {
    #                   forwarding_config: { # required
    #                     state: "DISABLED", # required, accepts DISABLED, ENABLED
    #                   },
    #                 },
    #               },
    #               transform: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name",
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #                 processing_config: {
    #                   compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #                   forwarding_config: {
    #                     state: "DISABLED", # required, accepts DISABLED, ENABLED
    #                   },
    #                 },
    #               },
    #               metric: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name",
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #                 window: { # required
    #                   tumbling: {
    #                     interval: "Interval", # required
    #                     offset: "Offset",
    #                   },
    #                 },
    #                 processing_config: {
    #                   compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #                 },
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_id #=> String
    #   resp.asset_model_arn #=> String
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #   resp.asset_model_status.error.details #=> Array
    #   resp.asset_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_model_status.error.details[0].message #=> String
    #
    # @overload create_asset_model(params = {})
    # @param [Hash] params ({})
    def create_asset_model(params = {}, options = {})
      req = build_request(:create_asset_model, params)
      req.send_request(options)
    end

    # Creates a custom composite model from specified property and hierarchy
    # definitions. There are two types of custom composite models, `inline`
    # and `component-model-based`.
    #
    # Use component-model-based custom composite models to define standard,
    # reusable components. A component-model-based custom composite model
    # consists of a name, a description, and the ID of the component model
    # it references. A component-model-based custom composite model has no
    # properties of its own; its referenced component model provides its
    # associated properties to any created assets. For more information, see
    # [Custom composite models (Components)][1] in the *IoT SiteWise User
    # Guide*.
    #
    # Use inline custom composite models to organize the properties of an
    # asset model. The properties of inline custom composite models are
    # local to the asset model where they are included and can't be used to
    # create multiple assets.
    #
    # To create a component-model-based model, specify the
    # `composedAssetModelId` of an existing asset model with
    # `assetModelType` of `COMPONENT_MODEL`.
    #
    # To create an inline model, specify the
    # `assetModelCompositeModelProperties` and don't include an
    # `composedAssetModelId`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model this composite model is a part of.
    #
    # @option params [String] :asset_model_composite_model_external_id
    #   An external ID to assign to the composite model.
    #
    #   If the composite model is a derived composite model, or one nested
    #   inside a component model, you can only set the external ID using
    #   `UpdateAssetModelCompositeModel` and specifying the derived ID of the
    #   model or property from the created model it's a part of.
    #
    # @option params [String] :parent_asset_model_composite_model_id
    #   The ID of the parent composite model in this asset model relationship.
    #
    # @option params [String] :asset_model_composite_model_id
    #   The ID of the composite model. IoT SiteWise automatically generates a
    #   unique ID for you, so this parameter is never required. However, if
    #   you prefer to supply your own ID instead, you can specify it here in
    #   UUID format. If you specify your own ID, it must be globally unique.
    #
    # @option params [String] :asset_model_composite_model_description
    #   A description for the composite model.
    #
    # @option params [required, String] :asset_model_composite_model_name
    #   A unique name for the composite model.
    #
    # @option params [required, String] :asset_model_composite_model_type
    #   The composite model type. Valid values are `AWS/ALARM`, `CUSTOM`, or `
    #   AWS/L4E_ANOMALY`.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :composed_asset_model_id
    #   The ID of a component model which is reused to create this composite
    #   model.
    #
    # @option params [Array<Types::AssetModelPropertyDefinition>] :asset_model_composite_model_properties
    #   The property definitions of the composite model. For more information,
    #   see [ Inline custom composite models][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #   You can specify up to 200 properties per composite model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [String] :if_match
    #   The expected current entity tag (ETag) for the asset model’s latest or
    #   active version (specified using `matchForVersionType`). The create
    #   request is rejected if the tag does not match the latest or active
    #   version's current entity tag. See [Optimistic locking for asset model
    #   writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #
    # @option params [String] :if_none_match
    #   Accepts ***** to reject the create request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists for
    #   the asset model.
    #
    # @option params [String] :match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used in
    #   conjunction with `If-Match` or `If-None-Match` headers to determine
    #   the target ETag for the create operation.
    #
    # @return [Types::CreateAssetModelCompositeModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetModelCompositeModelResponse#asset_model_composite_model_id #asset_model_composite_model_id} => String
    #   * {Types::CreateAssetModelCompositeModelResponse#asset_model_composite_model_path #asset_model_composite_model_path} => Array&lt;Types::AssetModelCompositeModelPathSegment&gt;
    #   * {Types::CreateAssetModelCompositeModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_model_composite_model({
    #     asset_model_id: "CustomID", # required
    #     asset_model_composite_model_external_id: "ExternalId",
    #     parent_asset_model_composite_model_id: "CustomID",
    #     asset_model_composite_model_id: "ID",
    #     asset_model_composite_model_description: "Description",
    #     asset_model_composite_model_name: "Name", # required
    #     asset_model_composite_model_type: "Name", # required
    #     client_token: "ClientToken",
    #     composed_asset_model_id: "CustomID",
    #     asset_model_composite_model_properties: [
    #       {
    #         id: "ID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue",
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED", # required, accepts DISABLED, ENABLED
    #               },
    #             },
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name",
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #               forwarding_config: {
    #                 state: "DISABLED", # required, accepts DISABLED, ENABLED
    #               },
    #             },
    #           },
    #           metric: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name",
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset",
    #               },
    #             },
    #             processing_config: {
    #               compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #             },
    #           },
    #         },
    #       },
    #     ],
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST", # accepts LATEST, ACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_composite_model_id #=> String
    #   resp.asset_model_composite_model_path #=> Array
    #   resp.asset_model_composite_model_path[0].id #=> String
    #   resp.asset_model_composite_model_path[0].name #=> String
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #   resp.asset_model_status.error.details #=> Array
    #   resp.asset_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_model_status.error.details[0].message #=> String
    #
    # @overload create_asset_model_composite_model(params = {})
    # @param [Hash] params ({})
    def create_asset_model_composite_model(params = {}, options = {})
      req = build_request(:create_asset_model_composite_model, params)
      req.send_request(options)
    end

    # Defines a job to ingest data to IoT SiteWise from Amazon S3. For more
    # information, see [Create a bulk import job (CLI)][1] in the *Amazon
    # Simple Storage Service User Guide*.
    #
    # Before you create a bulk import job, you must enable IoT SiteWise warm
    # tier or IoT SiteWise cold tier. For more information about how to
    # configure storage settings, see [PutStorageConfiguration][2].
    #
    #  Bulk import is designed to store historical data to IoT SiteWise.
    #
    #  * Newly ingested data in the hot tier triggers notifications and
    #   computations.
    #
    # * After data moves from the hot tier to the warm or cold tier based on
    #   retention settings, it does not trigger computations or
    #   notifications.
    #
    # * Data older than 7 days does not trigger computations or
    #   notifications.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/CreateBulkImportJob.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_PutStorageConfiguration.html
    #
    # @option params [required, String] :job_name
    #   The unique name that helps identify the job request.
    #
    # @option params [required, String] :job_role_arn
    #   The [ARN][1] of the IAM role that allows IoT SiteWise to read Amazon
    #   S3 data.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<Types::File>] :files
    #   The files in the specified Amazon S3 bucket that contain your data.
    #
    # @option params [required, Types::ErrorReportLocation] :error_report_location
    #   The Amazon S3 destination where errors associated with the job
    #   creation request are saved.
    #
    # @option params [required, Types::JobConfiguration] :job_configuration
    #   Contains the configuration information of a job, such as the file
    #   format used to save data in Amazon S3.
    #
    # @option params [Boolean] :adaptive_ingestion
    #   If set to true, ingest new data into IoT SiteWise storage.
    #   Measurements with notifications, metrics and transforms are computed.
    #   If set to false, historical data is ingested into IoT SiteWise as is.
    #
    # @option params [Boolean] :delete_files_after_import
    #   If set to true, your data files is deleted from S3, after ingestion
    #   into IoT SiteWise storage.
    #
    # @return [Types::CreateBulkImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBulkImportJobResponse#job_id #job_id} => String
    #   * {Types::CreateBulkImportJobResponse#job_name #job_name} => String
    #   * {Types::CreateBulkImportJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bulk_import_job({
    #     job_name: "Name", # required
    #     job_role_arn: "ARN", # required
    #     files: [ # required
    #       {
    #         bucket: "Bucket", # required
    #         key: "String", # required
    #         version_id: "String",
    #       },
    #     ],
    #     error_report_location: { # required
    #       bucket: "Bucket", # required
    #       prefix: "String", # required
    #     },
    #     job_configuration: { # required
    #       file_format: { # required
    #         csv: {
    #           column_names: ["ALIAS"], # required, accepts ALIAS, ASSET_ID, PROPERTY_ID, DATA_TYPE, TIMESTAMP_SECONDS, TIMESTAMP_NANO_OFFSET, QUALITY, VALUE
    #         },
    #         parquet: {
    #         },
    #       },
    #     },
    #     adaptive_ingestion: false,
    #     delete_files_after_import: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_name #=> String
    #   resp.job_status #=> String, one of "PENDING", "CANCELLED", "RUNNING", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #
    # @overload create_bulk_import_job(params = {})
    # @param [Hash] params ({})
    def create_bulk_import_job(params = {}, options = {})
      req = build_request(:create_bulk_import_job, params)
      req.send_request(options)
    end

    # Create a computation model with a configuration and data binding.
    #
    # @option params [required, String] :computation_model_name
    #   The name of the computation model.
    #
    # @option params [String] :computation_model_description
    #   The description of the computation model.
    #
    # @option params [required, Types::ComputationModelConfiguration] :computation_model_configuration
    #   The configuration for the computation model.
    #
    # @option params [required, Hash<String,Types::ComputationModelDataBindingValue>] :computation_model_data_binding
    #   The data binding for the computation model. Key is a variable name
    #   defined in configuration. Value is a
    #   `ComputationModelDataBindingValue` referenced by the variable.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the asset. For
    #   more information, see [Tagging your IoT SiteWise resources][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateComputationModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateComputationModelResponse#computation_model_id #computation_model_id} => String
    #   * {Types::CreateComputationModelResponse#computation_model_arn #computation_model_arn} => String
    #   * {Types::CreateComputationModelResponse#computation_model_status #computation_model_status} => Types::ComputationModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_computation_model({
    #     computation_model_name: "RestrictedName", # required
    #     computation_model_description: "RestrictedDescription",
    #     computation_model_configuration: { # required
    #       anomaly_detection: {
    #         input_properties: "InputProperties", # required
    #         result_property: "ResultProperty", # required
    #       },
    #     },
    #     computation_model_data_binding: { # required
    #       "ComputationModelDataBindingVariable" => {
    #         asset_model_property: {
    #           asset_model_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         asset_property: {
    #           asset_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         list: [
    #           {
    #             # recursive ComputationModelDataBindingValue
    #           },
    #         ],
    #       },
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.computation_model_id #=> String
    #   resp.computation_model_arn #=> String
    #   resp.computation_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.computation_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.computation_model_status.error.message #=> String
    #   resp.computation_model_status.error.details #=> Array
    #   resp.computation_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.computation_model_status.error.details[0].message #=> String
    #
    # @overload create_computation_model(params = {})
    # @param [Hash] params ({})
    def create_computation_model(params = {}, options = {})
      req = build_request(:create_computation_model, params)
      req.send_request(options)
    end

    # Creates a dashboard in an IoT SiteWise Monitor project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project in which to create the dashboard.
    #
    # @option params [required, String] :dashboard_name
    #   A friendly name for the dashboard.
    #
    # @option params [String] :dashboard_description
    #   A description for the dashboard.
    #
    # @option params [required, String] :dashboard_definition
    #   The dashboard definition specified in a JSON literal.
    #
    #   * IoT SiteWise Monitor (Classic) see [Create dashboards (CLI)][1]
    #
    #   * IoT SiteWise Monitor (AI-aware) see [Create dashboards (CLI)][2]
    #
    #   in the *IoT SiteWise User Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the dashboard. For
    #   more information, see [Tagging your IoT SiteWise resources][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::CreateDashboardResponse#dashboard_arn #dashboard_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dashboard({
    #     project_id: "ID", # required
    #     dashboard_name: "Name", # required
    #     dashboard_description: "Description",
    #     dashboard_definition: "DashboardDefinition", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #
    # @overload create_dashboard(params = {})
    # @param [Hash] params ({})
    def create_dashboard(params = {}, options = {})
      req = build_request(:create_dashboard, params)
      req.send_request(options)
    end

    # Creates a dataset to connect an external datasource.
    #
    # @option params [String] :dataset_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset.
    #
    # @option params [String] :dataset_description
    #   A description about the dataset, and its functionality.
    #
    # @option params [required, Types::DatasetSource] :dataset_source
    #   The data source for the dataset.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the access policy.
    #   For more information, see [Tagging your IoT SiteWise resources][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDatasetResponse#dataset_id #dataset_id} => String
    #   * {Types::CreateDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::CreateDatasetResponse#dataset_status #dataset_status} => Types::DatasetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_dataset({
    #     dataset_id: "ID",
    #     dataset_name: "RestrictedName", # required
    #     dataset_description: "RestrictedDescription",
    #     dataset_source: { # required
    #       source_type: "KENDRA", # required, accepts KENDRA
    #       source_format: "KNOWLEDGE_BASE", # required, accepts KNOWLEDGE_BASE
    #       source_detail: {
    #         kendra: {
    #           knowledge_base_arn: "ARN", # required
    #           role_arn: "ARN", # required
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #   resp.dataset_arn #=> String
    #   resp.dataset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.dataset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.dataset_status.error.message #=> String
    #   resp.dataset_status.error.details #=> Array
    #   resp.dataset_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.dataset_status.error.details[0].message #=> String
    #
    # @overload create_dataset(params = {})
    # @param [Hash] params ({})
    def create_dataset(params = {}, options = {})
      req = build_request(:create_dataset, params)
      req.send_request(options)
    end

    # Creates a gateway, which is a virtual or edge device that delivers
    # industrial data streams from local servers to IoT SiteWise. For more
    # information, see [Ingesting data using a gateway][1] in the *IoT
    # SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html
    #
    # @option params [required, String] :gateway_name
    #   A unique name for the gateway.
    #
    # @option params [required, Types::GatewayPlatform] :gateway_platform
    #   The gateway's platform. You can only specify one platform in a
    #   gateway.
    #
    # @option params [String] :gateway_version
    #   The version of the gateway to create. Specify `3` to create an
    #   MQTT-enabled, V3 gateway and `2` to create a Classic streams, V2
    #   gateway. If not specified, the default is `2` (Classic streams, V2
    #   gateway).
    #
    #   <note markdown="1"> When creating a V3 gateway (`gatewayVersion=3`) with the
    #   `GreengrassV2` platform, you must also specify the
    #   `coreDeviceOperatingSystem` parameter.
    #
    #    </note>
    #
    #   We recommend creating an MQTT-enabled gateway for self-hosted gateways
    #   and Siemens Industrial Edge gateways. For more information on gateway
    #   versions, see [Use Amazon Web Services IoT SiteWise Edge Edge
    #   gateways][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateways.html
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the gateway. For
    #   more information, see [Tagging your IoT SiteWise resources][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::CreateGatewayResponse#gateway_arn #gateway_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway({
    #     gateway_name: "GatewayName", # required
    #     gateway_platform: { # required
    #       greengrass: {
    #         group_arn: "ARN", # required
    #       },
    #       greengrass_v2: {
    #         core_device_thing_name: "CoreDeviceThingName", # required
    #         core_device_operating_system: "LINUX_AARCH64", # accepts LINUX_AARCH64, LINUX_AMD64, WINDOWS_AMD64
    #       },
    #       siemens_ie: {
    #         iot_core_thing_name: "IotCoreThingName", # required
    #       },
    #     },
    #     gateway_version: "GatewayVersion",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.gateway_arn #=> String
    #
    # @overload create_gateway(params = {})
    # @param [Hash] params ({})
    def create_gateway(params = {}, options = {})
      req = build_request(:create_gateway, params)
      req.send_request(options)
    end

    # Creates a portal, which can contain projects and dashboards. IoT
    # SiteWise Monitor uses IAM Identity Center or IAM to authenticate
    # portal users and manage user permissions.
    #
    # <note markdown="1"> Before you can sign in to a new portal, you must add at least one
    # identity to that portal. For more information, see [Adding or removing
    # portal administrators][1] in the *IoT SiteWise User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins
    #
    # @option params [required, String] :portal_name
    #   A friendly name for the portal.
    #
    # @option params [String] :portal_description
    #   A description for the portal.
    #
    # @option params [required, String] :portal_contact_email
    #   The Amazon Web Services administrator's contact email address.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::ImageFile] :portal_logo_image_file
    #   A logo image to display in the portal. Upload a square,
    #   high-resolution image. The image is displayed on a dark background.
    #
    # @option params [required, String] :role_arn
    #   The [ARN][1] of a service role that allows the portal's users to
    #   access your IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for IoT SiteWise Monitor][2] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the portal. For
    #   more information, see [Tagging your IoT SiteWise resources][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @option params [String] :portal_auth_mode
    #   The service to use to authenticate users to the portal. Choose from
    #   the following options:
    #
    #   * `SSO` – The portal uses IAM Identity Center to authenticate users
    #     and manage user permissions. Before you can create a portal that
    #     uses IAM Identity Center, you must enable IAM Identity Center. For
    #     more information, see [Enabling IAM Identity Center][1] in the *IoT
    #     SiteWise User Guide*. This option is only available in Amazon Web
    #     Services Regions other than the China Regions.
    #
    #   * `IAM` – The portal uses Identity and Access Management to
    #     authenticate users and manage user permissions.
    #
    #   You can't change this value after you create a portal.
    #
    #   Default: `SSO`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso
    #
    # @option params [String] :notification_sender_email
    #   The email address that sends alarm notifications.
    #
    #   If you use the [IoT Events managed Lambda function][1] to manage your
    #   emails, you must [verify the sender email address in Amazon SES][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iotevents/latest/developerguide/lambda-support.html
    #   [2]: https://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html
    #
    # @option params [Types::Alarms] :alarms
    #   Contains the configuration information of an alarm created in an IoT
    #   SiteWise Monitor portal. You can use the alarm to monitor an asset
    #   property and get notified when the asset property value is outside a
    #   specified range. For more information, see [Monitoring with alarms][1]
    #   in the *IoT SiteWise Application Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html
    #
    # @option params [String] :portal_type
    #   Define the type of portal. The value for IoT SiteWise Monitor
    #   (Classic) is `SITEWISE_PORTAL_V1`. The value for IoT SiteWise Monitor
    #   (AI-aware) is `SITEWISE_PORTAL_V2`.
    #
    # @option params [Hash<String,Types::PortalTypeEntry>] :portal_type_configuration
    #   The configuration entry associated with the specific portal type. The
    #   value for IoT SiteWise Monitor (Classic) is `SITEWISE_PORTAL_V1`. The
    #   value for IoT SiteWise Monitor (AI-aware) is `SITEWISE_PORTAL_V2`.
    #
    # @return [Types::CreatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePortalResponse#portal_id #portal_id} => String
    #   * {Types::CreatePortalResponse#portal_arn #portal_arn} => String
    #   * {Types::CreatePortalResponse#portal_start_url #portal_start_url} => String
    #   * {Types::CreatePortalResponse#portal_status #portal_status} => Types::PortalStatus
    #   * {Types::CreatePortalResponse#sso_application_id #sso_application_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portal({
    #     portal_name: "Name", # required
    #     portal_description: "Description",
    #     portal_contact_email: "Email", # required
    #     client_token: "ClientToken",
    #     portal_logo_image_file: {
    #       data: "data", # required
    #       type: "PNG", # required, accepts PNG
    #     },
    #     role_arn: "IamArn", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     portal_auth_mode: "IAM", # accepts IAM, SSO
    #     notification_sender_email: "Email",
    #     alarms: {
    #       alarm_role_arn: "IamArn", # required
    #       notification_lambda_arn: "ARN",
    #     },
    #     portal_type: "SITEWISE_PORTAL_V1", # accepts SITEWISE_PORTAL_V1, SITEWISE_PORTAL_V2
    #     portal_type_configuration: {
    #       "PortalTypeKey" => {
    #         portal_tools: ["Name"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_id #=> String
    #   resp.portal_arn #=> String
    #   resp.portal_start_url #=> String
    #   resp.portal_status.state #=> String, one of "CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_status.error.message #=> String
    #   resp.sso_application_id #=> String
    #
    # @overload create_portal(params = {})
    # @param [Hash] params ({})
    def create_portal(params = {}, options = {})
      req = build_request(:create_portal, params)
      req.send_request(options)
    end

    # Creates a project in the specified portal.
    #
    # <note markdown="1"> Make sure that the project name and description don't contain
    # confidential information.
    #
    #  </note>
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal in which to create the project.
    #
    # @option params [required, String] :project_name
    #   A friendly name for the project.
    #
    # @option params [String] :project_description
    #   A description for the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the project. For
    #   more information, see [Tagging your IoT SiteWise resources][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Types::CreateProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResponse#project_id #project_id} => String
    #   * {Types::CreateProjectResponse#project_arn #project_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     portal_id: "ID", # required
    #     project_name: "Name", # required
    #     project_description: "Description",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.project_id #=> String
    #   resp.project_arn #=> String
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Deletes an access policy that grants the specified identity access to
    # the specified IoT SiteWise Monitor resource. You can use this
    # operation to revoke access to an IoT SiteWise Monitor resource.
    #
    # @option params [required, String] :access_policy_id
    #   The ID of the access policy to be deleted.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_policy({
    #     access_policy_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_access_policy(params = {})
    # @param [Hash] params ({})
    def delete_access_policy(params = {}, options = {})
      req = build_request(:delete_access_policy, params)
      req.send_request(options)
    end

    # Deletes an asset. This action can't be undone. For more information,
    # see [Deleting assets and models][1] in the *IoT SiteWise User Guide*.
    #
    # <note markdown="1"> You can't delete an asset that's associated to another asset. For
    # more information, see [DisassociateAssets][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset to delete. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if it
    #   has one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAssetResponse#asset_status #asset_status} => Types::AssetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset({
    #     asset_id: "CustomID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_status.error.message #=> String
    #   resp.asset_status.error.details #=> Array
    #   resp.asset_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_status.error.details[0].message #=> String
    #
    # @overload delete_asset(params = {})
    # @param [Hash] params ({})
    def delete_asset(params = {}, options = {})
      req = build_request(:delete_asset, params)
      req.send_request(options)
    end

    # Deletes an asset model. This action can't be undone. You must delete
    # all assets created from an asset model before you can delete the
    # model. Also, you can't delete an asset model if a parent asset model
    # exists that contains a property formula expression that depends on the
    # asset model that you want to delete. For more information, see
    # [Deleting assets and models][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model to delete. This can be either the actual ID
    #   in UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :if_match
    #   The expected current entity tag (ETag) for the asset model’s latest or
    #   active version (specified using `matchForVersionType`). The delete
    #   request is rejected if the tag does not match the latest or active
    #   version's current entity tag. See [Optimistic locking for asset model
    #   writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #
    # @option params [String] :if_none_match
    #   Accepts ***** to reject the delete request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists for
    #   the asset model.
    #
    # @option params [String] :match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used in
    #   conjunction with `If-Match` or `If-None-Match` headers to determine
    #   the target ETag for the delete operation.
    #
    # @return [Types::DeleteAssetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAssetModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset_model({
    #     asset_model_id: "CustomID", # required
    #     client_token: "ClientToken",
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST", # accepts LATEST, ACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #   resp.asset_model_status.error.details #=> Array
    #   resp.asset_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_model_status.error.details[0].message #=> String
    #
    # @overload delete_asset_model(params = {})
    # @param [Hash] params ({})
    def delete_asset_model(params = {}, options = {})
      req = build_request(:delete_asset_model, params)
      req.send_request(options)
    end

    # Deletes a composite model. This action can't be undone. You must
    # delete all assets created from a composite model before you can delete
    # the model. Also, you can't delete a composite model if a parent asset
    # model exists that contains a property formula expression that depends
    # on the asset model that you want to delete. For more information, see
    # [Deleting assets and models][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model, in UUID format.
    #
    # @option params [required, String] :asset_model_composite_model_id
    #   The ID of a composite model on this asset model.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :if_match
    #   The expected current entity tag (ETag) for the asset model’s latest or
    #   active version (specified using `matchForVersionType`). The delete
    #   request is rejected if the tag does not match the latest or active
    #   version's current entity tag. See [Optimistic locking for asset model
    #   writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #
    # @option params [String] :if_none_match
    #   Accepts ***** to reject the delete request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists for
    #   the asset model.
    #
    # @option params [String] :match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used in
    #   conjunction with `If-Match` or `If-None-Match` headers to determine
    #   the target ETag for the delete operation.
    #
    # @return [Types::DeleteAssetModelCompositeModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAssetModelCompositeModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset_model_composite_model({
    #     asset_model_id: "CustomID", # required
    #     asset_model_composite_model_id: "CustomID", # required
    #     client_token: "ClientToken",
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST", # accepts LATEST, ACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #   resp.asset_model_status.error.details #=> Array
    #   resp.asset_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_model_status.error.details[0].message #=> String
    #
    # @overload delete_asset_model_composite_model(params = {})
    # @param [Hash] params ({})
    def delete_asset_model_composite_model(params = {}, options = {})
      req = build_request(:delete_asset_model_composite_model, params)
      req.send_request(options)
    end

    # Deletes a computation model. This action can't be undone.
    #
    # @option params [required, String] :computation_model_id
    #   The ID of the computation model.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteComputationModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteComputationModelResponse#computation_model_status #computation_model_status} => Types::ComputationModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_computation_model({
    #     computation_model_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.computation_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.computation_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.computation_model_status.error.message #=> String
    #   resp.computation_model_status.error.details #=> Array
    #   resp.computation_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.computation_model_status.error.details[0].message #=> String
    #
    # @overload delete_computation_model(params = {})
    # @param [Hash] params ({})
    def delete_computation_model(params = {}, options = {})
      req = build_request(:delete_computation_model, params)
      req.send_request(options)
    end

    # Deletes a dashboard from IoT SiteWise Monitor.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard to delete.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dashboard({
    #     dashboard_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_dashboard(params = {})
    # @param [Hash] params ({})
    def delete_dashboard(params = {}, options = {})
      req = build_request(:delete_dashboard, params)
      req.send_request(options)
    end

    # Deletes a dataset. This cannot be undone.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDatasetResponse#dataset_status #dataset_status} => Types::DatasetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_dataset({
    #     dataset_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.dataset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.dataset_status.error.message #=> String
    #   resp.dataset_status.error.details #=> Array
    #   resp.dataset_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.dataset_status.error.details[0].message #=> String
    #
    # @overload delete_dataset(params = {})
    # @param [Hash] params ({})
    def delete_dataset(params = {}, options = {})
      req = build_request(:delete_dataset, params)
      req.send_request(options)
    end

    # Deletes a gateway from IoT SiteWise. When you delete a gateway, some
    # of the gateway's files remain in your gateway's file system.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway({
    #     gateway_id: "ID", # required
    #   })
    #
    # @overload delete_gateway(params = {})
    # @param [Hash] params ({})
    def delete_gateway(params = {}, options = {})
      req = build_request(:delete_gateway, params)
      req.send_request(options)
    end

    # Deletes a portal from IoT SiteWise Monitor.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal to delete.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeletePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePortalResponse#portal_status #portal_status} => Types::PortalStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portal({
    #     portal_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_status.state #=> String, one of "CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_status.error.message #=> String
    #
    # @overload delete_portal(params = {})
    # @param [Hash] params ({})
    def delete_portal(params = {}, options = {})
      req = build_request(:delete_portal, params)
      req.send_request(options)
    end

    # Deletes a project from IoT SiteWise Monitor.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     project_id: "ID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes a time series (data stream). If you delete a time series
    # that's associated with an asset property, the asset property still
    # exists, but the time series will no longer be associated with this
    # asset property.
    #
    # To identify a time series, do one of the following:
    #
    # * If the time series isn't associated with an asset property, specify
    #   the `alias` of the time series.
    #
    # * If the time series is associated with an asset property, specify one
    #   of the following:
    #
    #   * The `alias` of the time series.
    #
    #   * The `assetId` and `propertyId` that identifies the asset property.
    #
    # @option params [String] :alias
    #   The alias that identifies the time series.
    #
    # @option params [String] :asset_id
    #   The ID of the asset in which the asset property was created. This can
    #   be either the actual ID in UUID format, or else `externalId:` followed
    #   by the external ID, if it has one. For more information, see
    #   [Referencing objects with external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :property_id
    #   The ID of the asset property. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_time_series({
    #     alias: "PropertyAlias",
    #     asset_id: "CustomID",
    #     property_id: "CustomID",
    #     client_token: "ClientToken",
    #   })
    #
    # @overload delete_time_series(params = {})
    # @param [Hash] params ({})
    def delete_time_series(params = {}, options = {})
      req = build_request(:delete_time_series, params)
      req.send_request(options)
    end

    # Describes an access policy, which specifies an identity's access to
    # an IoT SiteWise Monitor portal or project.
    #
    # @option params [required, String] :access_policy_id
    #   The ID of the access policy.
    #
    # @return [Types::DescribeAccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccessPolicyResponse#access_policy_id #access_policy_id} => String
    #   * {Types::DescribeAccessPolicyResponse#access_policy_arn #access_policy_arn} => String
    #   * {Types::DescribeAccessPolicyResponse#access_policy_identity #access_policy_identity} => Types::Identity
    #   * {Types::DescribeAccessPolicyResponse#access_policy_resource #access_policy_resource} => Types::Resource
    #   * {Types::DescribeAccessPolicyResponse#access_policy_permission #access_policy_permission} => String
    #   * {Types::DescribeAccessPolicyResponse#access_policy_creation_date #access_policy_creation_date} => Time
    #   * {Types::DescribeAccessPolicyResponse#access_policy_last_update_date #access_policy_last_update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access_policy({
    #     access_policy_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_id #=> String
    #   resp.access_policy_arn #=> String
    #   resp.access_policy_identity.user.id #=> String
    #   resp.access_policy_identity.group.id #=> String
    #   resp.access_policy_identity.iam_user.arn #=> String
    #   resp.access_policy_identity.iam_role.arn #=> String
    #   resp.access_policy_resource.portal.id #=> String
    #   resp.access_policy_resource.project.id #=> String
    #   resp.access_policy_permission #=> String, one of "ADMINISTRATOR", "VIEWER"
    #   resp.access_policy_creation_date #=> Time
    #   resp.access_policy_last_update_date #=> Time
    #
    # @overload describe_access_policy(params = {})
    # @param [Hash] params ({})
    def describe_access_policy(params = {}, options = {})
      req = build_request(:describe_access_policy, params)
      req.send_request(options)
    end

    # Retrieves information about an action.
    #
    # @option params [required, String] :action_id
    #   The ID of the action.
    #
    # @return [Types::DescribeActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActionResponse#action_id #action_id} => String
    #   * {Types::DescribeActionResponse#target_resource #target_resource} => Types::TargetResource
    #   * {Types::DescribeActionResponse#action_definition_id #action_definition_id} => String
    #   * {Types::DescribeActionResponse#action_payload #action_payload} => Types::ActionPayload
    #   * {Types::DescribeActionResponse#execution_time #execution_time} => Time
    #   * {Types::DescribeActionResponse#resolve_to #resolve_to} => Types::ResolveTo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_action({
    #     action_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action_id #=> String
    #   resp.target_resource.asset_id #=> String
    #   resp.target_resource.computation_model_id #=> String
    #   resp.action_definition_id #=> String
    #   resp.action_payload.string_value #=> String
    #   resp.execution_time #=> Time
    #   resp.resolve_to.asset_id #=> String
    #
    # @overload describe_action(params = {})
    # @param [Hash] params ({})
    def describe_action(params = {}, options = {})
      req = build_request(:describe_action, params)
      req.send_request(options)
    end

    # Retrieves information about an asset.
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset. This can be either the actual ID in UUID format,
    #   or else `externalId:` followed by the external ID, if it has one. For
    #   more information, see [Referencing objects with external IDs][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [Boolean] :exclude_properties
    #   Whether or not to exclude asset properties from the response.
    #
    # @return [Types::DescribeAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetResponse#asset_id #asset_id} => String
    #   * {Types::DescribeAssetResponse#asset_external_id #asset_external_id} => String
    #   * {Types::DescribeAssetResponse#asset_arn #asset_arn} => String
    #   * {Types::DescribeAssetResponse#asset_name #asset_name} => String
    #   * {Types::DescribeAssetResponse#asset_model_id #asset_model_id} => String
    #   * {Types::DescribeAssetResponse#asset_properties #asset_properties} => Array&lt;Types::AssetProperty&gt;
    #   * {Types::DescribeAssetResponse#asset_hierarchies #asset_hierarchies} => Array&lt;Types::AssetHierarchy&gt;
    #   * {Types::DescribeAssetResponse#asset_composite_models #asset_composite_models} => Array&lt;Types::AssetCompositeModel&gt;
    #   * {Types::DescribeAssetResponse#asset_creation_date #asset_creation_date} => Time
    #   * {Types::DescribeAssetResponse#asset_last_update_date #asset_last_update_date} => Time
    #   * {Types::DescribeAssetResponse#asset_status #asset_status} => Types::AssetStatus
    #   * {Types::DescribeAssetResponse#asset_description #asset_description} => String
    #   * {Types::DescribeAssetResponse#asset_composite_model_summaries #asset_composite_model_summaries} => Array&lt;Types::AssetCompositeModelSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset({
    #     asset_id: "CustomID", # required
    #     exclude_properties: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.asset_external_id #=> String
    #   resp.asset_arn #=> String
    #   resp.asset_name #=> String
    #   resp.asset_model_id #=> String
    #   resp.asset_properties #=> Array
    #   resp.asset_properties[0].id #=> String
    #   resp.asset_properties[0].external_id #=> String
    #   resp.asset_properties[0].name #=> String
    #   resp.asset_properties[0].alias #=> String
    #   resp.asset_properties[0].notification.topic #=> String
    #   resp.asset_properties[0].notification.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.asset_properties[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.asset_properties[0].data_type_spec #=> String
    #   resp.asset_properties[0].unit #=> String
    #   resp.asset_properties[0].path #=> Array
    #   resp.asset_properties[0].path[0].id #=> String
    #   resp.asset_properties[0].path[0].name #=> String
    #   resp.asset_hierarchies #=> Array
    #   resp.asset_hierarchies[0].id #=> String
    #   resp.asset_hierarchies[0].external_id #=> String
    #   resp.asset_hierarchies[0].name #=> String
    #   resp.asset_composite_models #=> Array
    #   resp.asset_composite_models[0].name #=> String
    #   resp.asset_composite_models[0].description #=> String
    #   resp.asset_composite_models[0].type #=> String
    #   resp.asset_composite_models[0].properties #=> Array
    #   resp.asset_composite_models[0].properties[0].id #=> String
    #   resp.asset_composite_models[0].properties[0].external_id #=> String
    #   resp.asset_composite_models[0].properties[0].name #=> String
    #   resp.asset_composite_models[0].properties[0].alias #=> String
    #   resp.asset_composite_models[0].properties[0].notification.topic #=> String
    #   resp.asset_composite_models[0].properties[0].notification.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.asset_composite_models[0].properties[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.asset_composite_models[0].properties[0].data_type_spec #=> String
    #   resp.asset_composite_models[0].properties[0].unit #=> String
    #   resp.asset_composite_models[0].properties[0].path #=> Array
    #   resp.asset_composite_models[0].properties[0].path[0].id #=> String
    #   resp.asset_composite_models[0].properties[0].path[0].name #=> String
    #   resp.asset_composite_models[0].id #=> String
    #   resp.asset_composite_models[0].external_id #=> String
    #   resp.asset_creation_date #=> Time
    #   resp.asset_last_update_date #=> Time
    #   resp.asset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_status.error.message #=> String
    #   resp.asset_status.error.details #=> Array
    #   resp.asset_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_status.error.details[0].message #=> String
    #   resp.asset_description #=> String
    #   resp.asset_composite_model_summaries #=> Array
    #   resp.asset_composite_model_summaries[0].id #=> String
    #   resp.asset_composite_model_summaries[0].external_id #=> String
    #   resp.asset_composite_model_summaries[0].name #=> String
    #   resp.asset_composite_model_summaries[0].type #=> String
    #   resp.asset_composite_model_summaries[0].description #=> String
    #   resp.asset_composite_model_summaries[0].path #=> Array
    #   resp.asset_composite_model_summaries[0].path[0].id #=> String
    #   resp.asset_composite_model_summaries[0].path[0].name #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * asset_active
    #   * asset_not_exists
    #
    # @overload describe_asset(params = {})
    # @param [Hash] params ({})
    def describe_asset(params = {}, options = {})
      req = build_request(:describe_asset, params)
      req.send_request(options)
    end

    # Retrieves information about an asset composite model (also known as an
    # asset component). An `AssetCompositeModel` is an instance of an
    # `AssetModelCompositeModel`. If you want to see information about the
    # model this is based on, call [DescribeAssetModelCompositeModel][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModelCompositeModel.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset. This can be either the actual ID in UUID format,
    #   or else `externalId:` followed by the external ID, if it has one. For
    #   more information, see [Referencing objects with external IDs][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :asset_composite_model_id
    #   The ID of a composite model on this asset. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @return [Types::DescribeAssetCompositeModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetCompositeModelResponse#asset_id #asset_id} => String
    #   * {Types::DescribeAssetCompositeModelResponse#asset_composite_model_id #asset_composite_model_id} => String
    #   * {Types::DescribeAssetCompositeModelResponse#asset_composite_model_external_id #asset_composite_model_external_id} => String
    #   * {Types::DescribeAssetCompositeModelResponse#asset_composite_model_path #asset_composite_model_path} => Array&lt;Types::AssetCompositeModelPathSegment&gt;
    #   * {Types::DescribeAssetCompositeModelResponse#asset_composite_model_name #asset_composite_model_name} => String
    #   * {Types::DescribeAssetCompositeModelResponse#asset_composite_model_description #asset_composite_model_description} => String
    #   * {Types::DescribeAssetCompositeModelResponse#asset_composite_model_type #asset_composite_model_type} => String
    #   * {Types::DescribeAssetCompositeModelResponse#asset_composite_model_properties #asset_composite_model_properties} => Array&lt;Types::AssetProperty&gt;
    #   * {Types::DescribeAssetCompositeModelResponse#asset_composite_model_summaries #asset_composite_model_summaries} => Array&lt;Types::AssetCompositeModelSummary&gt;
    #   * {Types::DescribeAssetCompositeModelResponse#action_definitions #action_definitions} => Array&lt;Types::ActionDefinition&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_composite_model({
    #     asset_id: "CustomID", # required
    #     asset_composite_model_id: "CustomID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.asset_composite_model_id #=> String
    #   resp.asset_composite_model_external_id #=> String
    #   resp.asset_composite_model_path #=> Array
    #   resp.asset_composite_model_path[0].id #=> String
    #   resp.asset_composite_model_path[0].name #=> String
    #   resp.asset_composite_model_name #=> String
    #   resp.asset_composite_model_description #=> String
    #   resp.asset_composite_model_type #=> String
    #   resp.asset_composite_model_properties #=> Array
    #   resp.asset_composite_model_properties[0].id #=> String
    #   resp.asset_composite_model_properties[0].external_id #=> String
    #   resp.asset_composite_model_properties[0].name #=> String
    #   resp.asset_composite_model_properties[0].alias #=> String
    #   resp.asset_composite_model_properties[0].notification.topic #=> String
    #   resp.asset_composite_model_properties[0].notification.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.asset_composite_model_properties[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.asset_composite_model_properties[0].data_type_spec #=> String
    #   resp.asset_composite_model_properties[0].unit #=> String
    #   resp.asset_composite_model_properties[0].path #=> Array
    #   resp.asset_composite_model_properties[0].path[0].id #=> String
    #   resp.asset_composite_model_properties[0].path[0].name #=> String
    #   resp.asset_composite_model_summaries #=> Array
    #   resp.asset_composite_model_summaries[0].id #=> String
    #   resp.asset_composite_model_summaries[0].external_id #=> String
    #   resp.asset_composite_model_summaries[0].name #=> String
    #   resp.asset_composite_model_summaries[0].type #=> String
    #   resp.asset_composite_model_summaries[0].description #=> String
    #   resp.asset_composite_model_summaries[0].path #=> Array
    #   resp.asset_composite_model_summaries[0].path[0].id #=> String
    #   resp.asset_composite_model_summaries[0].path[0].name #=> String
    #   resp.action_definitions #=> Array
    #   resp.action_definitions[0].action_definition_id #=> String
    #   resp.action_definitions[0].action_name #=> String
    #   resp.action_definitions[0].action_type #=> String
    #
    # @overload describe_asset_composite_model(params = {})
    # @param [Hash] params ({})
    def describe_asset_composite_model(params = {}, options = {})
      req = build_request(:describe_asset_composite_model, params)
      req.send_request(options)
    end

    # Retrieves information about an asset model.
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [Boolean] :exclude_properties
    #   Whether or not to exclude asset model properties from the response.
    #
    # @option params [String] :asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #
    # @return [Types::DescribeAssetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetModelResponse#asset_model_id #asset_model_id} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_external_id #asset_model_external_id} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_arn #asset_model_arn} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_name #asset_model_name} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_type #asset_model_type} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_description #asset_model_description} => String
    #   * {Types::DescribeAssetModelResponse#asset_model_properties #asset_model_properties} => Array&lt;Types::AssetModelProperty&gt;
    #   * {Types::DescribeAssetModelResponse#asset_model_hierarchies #asset_model_hierarchies} => Array&lt;Types::AssetModelHierarchy&gt;
    #   * {Types::DescribeAssetModelResponse#asset_model_composite_models #asset_model_composite_models} => Array&lt;Types::AssetModelCompositeModel&gt;
    #   * {Types::DescribeAssetModelResponse#asset_model_composite_model_summaries #asset_model_composite_model_summaries} => Array&lt;Types::AssetModelCompositeModelSummary&gt;
    #   * {Types::DescribeAssetModelResponse#asset_model_creation_date #asset_model_creation_date} => Time
    #   * {Types::DescribeAssetModelResponse#asset_model_last_update_date #asset_model_last_update_date} => Time
    #   * {Types::DescribeAssetModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #   * {Types::DescribeAssetModelResponse#asset_model_version #asset_model_version} => String
    #   * {Types::DescribeAssetModelResponse#e_tag #e_tag} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_model({
    #     asset_model_id: "CustomID", # required
    #     exclude_properties: false,
    #     asset_model_version: "AssetModelVersionFilter",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_id #=> String
    #   resp.asset_model_external_id #=> String
    #   resp.asset_model_arn #=> String
    #   resp.asset_model_name #=> String
    #   resp.asset_model_type #=> String, one of "ASSET_MODEL", "COMPONENT_MODEL"
    #   resp.asset_model_description #=> String
    #   resp.asset_model_properties #=> Array
    #   resp.asset_model_properties[0].id #=> String
    #   resp.asset_model_properties[0].external_id #=> String
    #   resp.asset_model_properties[0].name #=> String
    #   resp.asset_model_properties[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.asset_model_properties[0].data_type_spec #=> String
    #   resp.asset_model_properties[0].unit #=> String
    #   resp.asset_model_properties[0].type.attribute.default_value #=> String
    #   resp.asset_model_properties[0].type.measurement.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_model_properties[0].type.transform.expression #=> String
    #   resp.asset_model_properties[0].type.transform.variables #=> Array
    #   resp.asset_model_properties[0].type.transform.variables[0].name #=> String
    #   resp.asset_model_properties[0].type.transform.variables[0].value.property_id #=> String
    #   resp.asset_model_properties[0].type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_properties[0].type.transform.variables[0].value.property_path #=> Array
    #   resp.asset_model_properties[0].type.transform.variables[0].value.property_path[0].id #=> String
    #   resp.asset_model_properties[0].type.transform.variables[0].value.property_path[0].name #=> String
    #   resp.asset_model_properties[0].type.transform.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_model_properties[0].type.transform.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_model_properties[0].type.metric.expression #=> String
    #   resp.asset_model_properties[0].type.metric.variables #=> Array
    #   resp.asset_model_properties[0].type.metric.variables[0].name #=> String
    #   resp.asset_model_properties[0].type.metric.variables[0].value.property_id #=> String
    #   resp.asset_model_properties[0].type.metric.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_properties[0].type.metric.variables[0].value.property_path #=> Array
    #   resp.asset_model_properties[0].type.metric.variables[0].value.property_path[0].id #=> String
    #   resp.asset_model_properties[0].type.metric.variables[0].value.property_path[0].name #=> String
    #   resp.asset_model_properties[0].type.metric.window.tumbling.interval #=> String
    #   resp.asset_model_properties[0].type.metric.window.tumbling.offset #=> String
    #   resp.asset_model_properties[0].type.metric.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_model_properties[0].path #=> Array
    #   resp.asset_model_properties[0].path[0].id #=> String
    #   resp.asset_model_properties[0].path[0].name #=> String
    #   resp.asset_model_hierarchies #=> Array
    #   resp.asset_model_hierarchies[0].id #=> String
    #   resp.asset_model_hierarchies[0].external_id #=> String
    #   resp.asset_model_hierarchies[0].name #=> String
    #   resp.asset_model_hierarchies[0].child_asset_model_id #=> String
    #   resp.asset_model_composite_models #=> Array
    #   resp.asset_model_composite_models[0].name #=> String
    #   resp.asset_model_composite_models[0].description #=> String
    #   resp.asset_model_composite_models[0].type #=> String
    #   resp.asset_model_composite_models[0].properties #=> Array
    #   resp.asset_model_composite_models[0].properties[0].id #=> String
    #   resp.asset_model_composite_models[0].properties[0].external_id #=> String
    #   resp.asset_model_composite_models[0].properties[0].name #=> String
    #   resp.asset_model_composite_models[0].properties[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.asset_model_composite_models[0].properties[0].data_type_spec #=> String
    #   resp.asset_model_composite_models[0].properties[0].unit #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.attribute.default_value #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.measurement.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_model_composite_models[0].properties[0].type.transform.expression #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.transform.variables #=> Array
    #   resp.asset_model_composite_models[0].properties[0].type.transform.variables[0].name #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.transform.variables[0].value.property_id #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.transform.variables[0].value.property_path #=> Array
    #   resp.asset_model_composite_models[0].properties[0].type.transform.variables[0].value.property_path[0].id #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.transform.variables[0].value.property_path[0].name #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.transform.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_model_composite_models[0].properties[0].type.transform.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_model_composite_models[0].properties[0].type.metric.expression #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.metric.variables #=> Array
    #   resp.asset_model_composite_models[0].properties[0].type.metric.variables[0].name #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.metric.variables[0].value.property_id #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.metric.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.metric.variables[0].value.property_path #=> Array
    #   resp.asset_model_composite_models[0].properties[0].type.metric.variables[0].value.property_path[0].id #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.metric.variables[0].value.property_path[0].name #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.metric.window.tumbling.interval #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.metric.window.tumbling.offset #=> String
    #   resp.asset_model_composite_models[0].properties[0].type.metric.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_model_composite_models[0].properties[0].path #=> Array
    #   resp.asset_model_composite_models[0].properties[0].path[0].id #=> String
    #   resp.asset_model_composite_models[0].properties[0].path[0].name #=> String
    #   resp.asset_model_composite_models[0].id #=> String
    #   resp.asset_model_composite_models[0].external_id #=> String
    #   resp.asset_model_composite_model_summaries #=> Array
    #   resp.asset_model_composite_model_summaries[0].id #=> String
    #   resp.asset_model_composite_model_summaries[0].external_id #=> String
    #   resp.asset_model_composite_model_summaries[0].name #=> String
    #   resp.asset_model_composite_model_summaries[0].type #=> String
    #   resp.asset_model_composite_model_summaries[0].description #=> String
    #   resp.asset_model_composite_model_summaries[0].path #=> Array
    #   resp.asset_model_composite_model_summaries[0].path[0].id #=> String
    #   resp.asset_model_composite_model_summaries[0].path[0].name #=> String
    #   resp.asset_model_creation_date #=> Time
    #   resp.asset_model_last_update_date #=> Time
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #   resp.asset_model_status.error.details #=> Array
    #   resp.asset_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_model_status.error.details[0].message #=> String
    #   resp.asset_model_version #=> String
    #   resp.e_tag #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * asset_model_active
    #   * asset_model_not_exists
    #
    # @overload describe_asset_model(params = {})
    # @param [Hash] params ({})
    def describe_asset_model(params = {}, options = {})
      req = build_request(:describe_asset_model, params)
      req.send_request(options)
    end

    # Retrieves information about an asset model composite model (also known
    # as an asset model component). For more information, see [Custom
    # composite models (Components)][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :asset_model_composite_model_id
    #   The ID of a composite model on this asset model. This can be either
    #   the actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #
    # @return [Types::DescribeAssetModelCompositeModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_id #asset_model_id} => String
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_composite_model_id #asset_model_composite_model_id} => String
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_composite_model_external_id #asset_model_composite_model_external_id} => String
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_composite_model_path #asset_model_composite_model_path} => Array&lt;Types::AssetModelCompositeModelPathSegment&gt;
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_composite_model_name #asset_model_composite_model_name} => String
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_composite_model_description #asset_model_composite_model_description} => String
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_composite_model_type #asset_model_composite_model_type} => String
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_composite_model_properties #asset_model_composite_model_properties} => Array&lt;Types::AssetModelProperty&gt;
    #   * {Types::DescribeAssetModelCompositeModelResponse#composition_details #composition_details} => Types::CompositionDetails
    #   * {Types::DescribeAssetModelCompositeModelResponse#asset_model_composite_model_summaries #asset_model_composite_model_summaries} => Array&lt;Types::AssetModelCompositeModelSummary&gt;
    #   * {Types::DescribeAssetModelCompositeModelResponse#action_definitions #action_definitions} => Array&lt;Types::ActionDefinition&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_model_composite_model({
    #     asset_model_id: "CustomID", # required
    #     asset_model_composite_model_id: "CustomID", # required
    #     asset_model_version: "AssetModelVersionFilter",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_id #=> String
    #   resp.asset_model_composite_model_id #=> String
    #   resp.asset_model_composite_model_external_id #=> String
    #   resp.asset_model_composite_model_path #=> Array
    #   resp.asset_model_composite_model_path[0].id #=> String
    #   resp.asset_model_composite_model_path[0].name #=> String
    #   resp.asset_model_composite_model_name #=> String
    #   resp.asset_model_composite_model_description #=> String
    #   resp.asset_model_composite_model_type #=> String
    #   resp.asset_model_composite_model_properties #=> Array
    #   resp.asset_model_composite_model_properties[0].id #=> String
    #   resp.asset_model_composite_model_properties[0].external_id #=> String
    #   resp.asset_model_composite_model_properties[0].name #=> String
    #   resp.asset_model_composite_model_properties[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.asset_model_composite_model_properties[0].data_type_spec #=> String
    #   resp.asset_model_composite_model_properties[0].unit #=> String
    #   resp.asset_model_composite_model_properties[0].type.attribute.default_value #=> String
    #   resp.asset_model_composite_model_properties[0].type.measurement.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_model_composite_model_properties[0].type.transform.expression #=> String
    #   resp.asset_model_composite_model_properties[0].type.transform.variables #=> Array
    #   resp.asset_model_composite_model_properties[0].type.transform.variables[0].name #=> String
    #   resp.asset_model_composite_model_properties[0].type.transform.variables[0].value.property_id #=> String
    #   resp.asset_model_composite_model_properties[0].type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_composite_model_properties[0].type.transform.variables[0].value.property_path #=> Array
    #   resp.asset_model_composite_model_properties[0].type.transform.variables[0].value.property_path[0].id #=> String
    #   resp.asset_model_composite_model_properties[0].type.transform.variables[0].value.property_path[0].name #=> String
    #   resp.asset_model_composite_model_properties[0].type.transform.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_model_composite_model_properties[0].type.transform.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_model_composite_model_properties[0].type.metric.expression #=> String
    #   resp.asset_model_composite_model_properties[0].type.metric.variables #=> Array
    #   resp.asset_model_composite_model_properties[0].type.metric.variables[0].name #=> String
    #   resp.asset_model_composite_model_properties[0].type.metric.variables[0].value.property_id #=> String
    #   resp.asset_model_composite_model_properties[0].type.metric.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_composite_model_properties[0].type.metric.variables[0].value.property_path #=> Array
    #   resp.asset_model_composite_model_properties[0].type.metric.variables[0].value.property_path[0].id #=> String
    #   resp.asset_model_composite_model_properties[0].type.metric.variables[0].value.property_path[0].name #=> String
    #   resp.asset_model_composite_model_properties[0].type.metric.window.tumbling.interval #=> String
    #   resp.asset_model_composite_model_properties[0].type.metric.window.tumbling.offset #=> String
    #   resp.asset_model_composite_model_properties[0].type.metric.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_model_composite_model_properties[0].path #=> Array
    #   resp.asset_model_composite_model_properties[0].path[0].id #=> String
    #   resp.asset_model_composite_model_properties[0].path[0].name #=> String
    #   resp.composition_details.composition_relationship #=> Array
    #   resp.composition_details.composition_relationship[0].id #=> String
    #   resp.asset_model_composite_model_summaries #=> Array
    #   resp.asset_model_composite_model_summaries[0].id #=> String
    #   resp.asset_model_composite_model_summaries[0].external_id #=> String
    #   resp.asset_model_composite_model_summaries[0].name #=> String
    #   resp.asset_model_composite_model_summaries[0].type #=> String
    #   resp.asset_model_composite_model_summaries[0].description #=> String
    #   resp.asset_model_composite_model_summaries[0].path #=> Array
    #   resp.asset_model_composite_model_summaries[0].path[0].id #=> String
    #   resp.asset_model_composite_model_summaries[0].path[0].name #=> String
    #   resp.action_definitions #=> Array
    #   resp.action_definitions[0].action_definition_id #=> String
    #   resp.action_definitions[0].action_name #=> String
    #   resp.action_definitions[0].action_type #=> String
    #
    # @overload describe_asset_model_composite_model(params = {})
    # @param [Hash] params ({})
    def describe_asset_model_composite_model(params = {}, options = {})
      req = build_request(:describe_asset_model_composite_model, params)
      req.send_request(options)
    end

    # Retrieves information about an asset property.
    #
    # <note markdown="1"> When you call this operation for an attribute property, this response
    # includes the default attribute value that you define in the asset
    # model. If you update the default value in the model, this operation's
    # response includes the new default value.
    #
    #  </note>
    #
    # This operation doesn't return the value of the asset property. To get
    # the value of an asset property, use [GetAssetPropertyValue][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset. This can be either the actual ID in UUID format,
    #   or else `externalId:` followed by the external ID, if it has one. For
    #   more information, see [Referencing objects with external IDs][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :property_id
    #   The ID of the asset property. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @return [Types::DescribeAssetPropertyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAssetPropertyResponse#asset_id #asset_id} => String
    #   * {Types::DescribeAssetPropertyResponse#asset_external_id #asset_external_id} => String
    #   * {Types::DescribeAssetPropertyResponse#asset_name #asset_name} => String
    #   * {Types::DescribeAssetPropertyResponse#asset_model_id #asset_model_id} => String
    #   * {Types::DescribeAssetPropertyResponse#asset_property #asset_property} => Types::Property
    #   * {Types::DescribeAssetPropertyResponse#composite_model #composite_model} => Types::CompositeModelProperty
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_asset_property({
    #     asset_id: "CustomID", # required
    #     property_id: "CustomID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.asset_external_id #=> String
    #   resp.asset_name #=> String
    #   resp.asset_model_id #=> String
    #   resp.asset_property.id #=> String
    #   resp.asset_property.external_id #=> String
    #   resp.asset_property.name #=> String
    #   resp.asset_property.alias #=> String
    #   resp.asset_property.notification.topic #=> String
    #   resp.asset_property.notification.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.asset_property.data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.asset_property.unit #=> String
    #   resp.asset_property.type.attribute.default_value #=> String
    #   resp.asset_property.type.measurement.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_property.type.transform.expression #=> String
    #   resp.asset_property.type.transform.variables #=> Array
    #   resp.asset_property.type.transform.variables[0].name #=> String
    #   resp.asset_property.type.transform.variables[0].value.property_id #=> String
    #   resp.asset_property.type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.asset_property.type.transform.variables[0].value.property_path #=> Array
    #   resp.asset_property.type.transform.variables[0].value.property_path[0].id #=> String
    #   resp.asset_property.type.transform.variables[0].value.property_path[0].name #=> String
    #   resp.asset_property.type.transform.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_property.type.transform.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_property.type.metric.expression #=> String
    #   resp.asset_property.type.metric.variables #=> Array
    #   resp.asset_property.type.metric.variables[0].name #=> String
    #   resp.asset_property.type.metric.variables[0].value.property_id #=> String
    #   resp.asset_property.type.metric.variables[0].value.hierarchy_id #=> String
    #   resp.asset_property.type.metric.variables[0].value.property_path #=> Array
    #   resp.asset_property.type.metric.variables[0].value.property_path[0].id #=> String
    #   resp.asset_property.type.metric.variables[0].value.property_path[0].name #=> String
    #   resp.asset_property.type.metric.window.tumbling.interval #=> String
    #   resp.asset_property.type.metric.window.tumbling.offset #=> String
    #   resp.asset_property.type.metric.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_property.path #=> Array
    #   resp.asset_property.path[0].id #=> String
    #   resp.asset_property.path[0].name #=> String
    #   resp.composite_model.name #=> String
    #   resp.composite_model.type #=> String
    #   resp.composite_model.asset_property.id #=> String
    #   resp.composite_model.asset_property.external_id #=> String
    #   resp.composite_model.asset_property.name #=> String
    #   resp.composite_model.asset_property.alias #=> String
    #   resp.composite_model.asset_property.notification.topic #=> String
    #   resp.composite_model.asset_property.notification.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.composite_model.asset_property.data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.composite_model.asset_property.unit #=> String
    #   resp.composite_model.asset_property.type.attribute.default_value #=> String
    #   resp.composite_model.asset_property.type.measurement.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.composite_model.asset_property.type.transform.expression #=> String
    #   resp.composite_model.asset_property.type.transform.variables #=> Array
    #   resp.composite_model.asset_property.type.transform.variables[0].name #=> String
    #   resp.composite_model.asset_property.type.transform.variables[0].value.property_id #=> String
    #   resp.composite_model.asset_property.type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.composite_model.asset_property.type.transform.variables[0].value.property_path #=> Array
    #   resp.composite_model.asset_property.type.transform.variables[0].value.property_path[0].id #=> String
    #   resp.composite_model.asset_property.type.transform.variables[0].value.property_path[0].name #=> String
    #   resp.composite_model.asset_property.type.transform.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.composite_model.asset_property.type.transform.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.composite_model.asset_property.type.metric.expression #=> String
    #   resp.composite_model.asset_property.type.metric.variables #=> Array
    #   resp.composite_model.asset_property.type.metric.variables[0].name #=> String
    #   resp.composite_model.asset_property.type.metric.variables[0].value.property_id #=> String
    #   resp.composite_model.asset_property.type.metric.variables[0].value.hierarchy_id #=> String
    #   resp.composite_model.asset_property.type.metric.variables[0].value.property_path #=> Array
    #   resp.composite_model.asset_property.type.metric.variables[0].value.property_path[0].id #=> String
    #   resp.composite_model.asset_property.type.metric.variables[0].value.property_path[0].name #=> String
    #   resp.composite_model.asset_property.type.metric.window.tumbling.interval #=> String
    #   resp.composite_model.asset_property.type.metric.window.tumbling.offset #=> String
    #   resp.composite_model.asset_property.type.metric.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.composite_model.asset_property.path #=> Array
    #   resp.composite_model.asset_property.path[0].id #=> String
    #   resp.composite_model.asset_property.path[0].name #=> String
    #   resp.composite_model.id #=> String
    #   resp.composite_model.external_id #=> String
    #
    # @overload describe_asset_property(params = {})
    # @param [Hash] params ({})
    def describe_asset_property(params = {}, options = {})
      req = build_request(:describe_asset_property, params)
      req.send_request(options)
    end

    # Retrieves information about a bulk import job request. For more
    # information, see [Describe a bulk import job (CLI)][1] in the *Amazon
    # Simple Storage Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/DescribeBulkImportJob.html
    #
    # @option params [required, String] :job_id
    #   The ID of the job.
    #
    # @return [Types::DescribeBulkImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBulkImportJobResponse#job_id #job_id} => String
    #   * {Types::DescribeBulkImportJobResponse#job_name #job_name} => String
    #   * {Types::DescribeBulkImportJobResponse#job_status #job_status} => String
    #   * {Types::DescribeBulkImportJobResponse#job_role_arn #job_role_arn} => String
    #   * {Types::DescribeBulkImportJobResponse#files #files} => Array&lt;Types::File&gt;
    #   * {Types::DescribeBulkImportJobResponse#error_report_location #error_report_location} => Types::ErrorReportLocation
    #   * {Types::DescribeBulkImportJobResponse#job_configuration #job_configuration} => Types::JobConfiguration
    #   * {Types::DescribeBulkImportJobResponse#job_creation_date #job_creation_date} => Time
    #   * {Types::DescribeBulkImportJobResponse#job_last_update_date #job_last_update_date} => Time
    #   * {Types::DescribeBulkImportJobResponse#adaptive_ingestion #adaptive_ingestion} => Boolean
    #   * {Types::DescribeBulkImportJobResponse#delete_files_after_import #delete_files_after_import} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bulk_import_job({
    #     job_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_name #=> String
    #   resp.job_status #=> String, one of "PENDING", "CANCELLED", "RUNNING", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #   resp.job_role_arn #=> String
    #   resp.files #=> Array
    #   resp.files[0].bucket #=> String
    #   resp.files[0].key #=> String
    #   resp.files[0].version_id #=> String
    #   resp.error_report_location.bucket #=> String
    #   resp.error_report_location.prefix #=> String
    #   resp.job_configuration.file_format.csv.column_names #=> Array
    #   resp.job_configuration.file_format.csv.column_names[0] #=> String, one of "ALIAS", "ASSET_ID", "PROPERTY_ID", "DATA_TYPE", "TIMESTAMP_SECONDS", "TIMESTAMP_NANO_OFFSET", "QUALITY", "VALUE"
    #   resp.job_creation_date #=> Time
    #   resp.job_last_update_date #=> Time
    #   resp.adaptive_ingestion #=> Boolean
    #   resp.delete_files_after_import #=> Boolean
    #
    # @overload describe_bulk_import_job(params = {})
    # @param [Hash] params ({})
    def describe_bulk_import_job(params = {}, options = {})
      req = build_request(:describe_bulk_import_job, params)
      req.send_request(options)
    end

    # Retrieves information about a computation model.
    #
    # @option params [required, String] :computation_model_id
    #   The ID of the computation model.
    #
    # @return [Types::DescribeComputationModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComputationModelResponse#computation_model_id #computation_model_id} => String
    #   * {Types::DescribeComputationModelResponse#computation_model_arn #computation_model_arn} => String
    #   * {Types::DescribeComputationModelResponse#computation_model_name #computation_model_name} => String
    #   * {Types::DescribeComputationModelResponse#computation_model_description #computation_model_description} => String
    #   * {Types::DescribeComputationModelResponse#computation_model_configuration #computation_model_configuration} => Types::ComputationModelConfiguration
    #   * {Types::DescribeComputationModelResponse#computation_model_data_binding #computation_model_data_binding} => Hash&lt;String,Types::ComputationModelDataBindingValue&gt;
    #   * {Types::DescribeComputationModelResponse#computation_model_creation_date #computation_model_creation_date} => Time
    #   * {Types::DescribeComputationModelResponse#computation_model_last_update_date #computation_model_last_update_date} => Time
    #   * {Types::DescribeComputationModelResponse#computation_model_status #computation_model_status} => Types::ComputationModelStatus
    #   * {Types::DescribeComputationModelResponse#computation_model_version #computation_model_version} => String
    #   * {Types::DescribeComputationModelResponse#action_definitions #action_definitions} => Array&lt;Types::ActionDefinition&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_computation_model({
    #     computation_model_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.computation_model_id #=> String
    #   resp.computation_model_arn #=> String
    #   resp.computation_model_name #=> String
    #   resp.computation_model_description #=> String
    #   resp.computation_model_configuration.anomaly_detection.input_properties #=> String
    #   resp.computation_model_configuration.anomaly_detection.result_property #=> String
    #   resp.computation_model_data_binding #=> Hash
    #   resp.computation_model_data_binding["ComputationModelDataBindingVariable"].asset_model_property.asset_model_id #=> String
    #   resp.computation_model_data_binding["ComputationModelDataBindingVariable"].asset_model_property.property_id #=> String
    #   resp.computation_model_data_binding["ComputationModelDataBindingVariable"].asset_property.asset_id #=> String
    #   resp.computation_model_data_binding["ComputationModelDataBindingVariable"].asset_property.property_id #=> String
    #   resp.computation_model_data_binding["ComputationModelDataBindingVariable"].list #=> Array
    #   resp.computation_model_data_binding["ComputationModelDataBindingVariable"].list[0] #=> Types::ComputationModelDataBindingValue
    #   resp.computation_model_creation_date #=> Time
    #   resp.computation_model_last_update_date #=> Time
    #   resp.computation_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.computation_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.computation_model_status.error.message #=> String
    #   resp.computation_model_status.error.details #=> Array
    #   resp.computation_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.computation_model_status.error.details[0].message #=> String
    #   resp.computation_model_version #=> String
    #   resp.action_definitions #=> Array
    #   resp.action_definitions[0].action_definition_id #=> String
    #   resp.action_definitions[0].action_name #=> String
    #   resp.action_definitions[0].action_type #=> String
    #
    # @overload describe_computation_model(params = {})
    # @param [Hash] params ({})
    def describe_computation_model(params = {}, options = {})
      req = build_request(:describe_computation_model, params)
      req.send_request(options)
    end

    # Retrieves information about the execution summary of a computation
    # model.
    #
    # @option params [required, String] :computation_model_id
    #   The ID of the computation model.
    #
    # @option params [String] :resolve_to_resource_type
    #   The type of the resolved resource.
    #
    # @option params [String] :resolve_to_resource_id
    #   The ID of the resolved resource.
    #
    # @return [Types::DescribeComputationModelExecutionSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComputationModelExecutionSummaryResponse#computation_model_id #computation_model_id} => String
    #   * {Types::DescribeComputationModelExecutionSummaryResponse#resolve_to #resolve_to} => Types::ResolveTo
    #   * {Types::DescribeComputationModelExecutionSummaryResponse#computation_model_execution_summary #computation_model_execution_summary} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_computation_model_execution_summary({
    #     computation_model_id: "ID", # required
    #     resolve_to_resource_type: "ASSET", # accepts ASSET
    #     resolve_to_resource_id: "ID",
    #   })
    #
    # @example Response structure
    #
    #   resp.computation_model_id #=> String
    #   resp.resolve_to.asset_id #=> String
    #   resp.computation_model_execution_summary #=> Hash
    #   resp.computation_model_execution_summary["ComputationModelExecutionSummaryKey"] #=> String
    #
    # @overload describe_computation_model_execution_summary(params = {})
    # @param [Hash] params ({})
    def describe_computation_model_execution_summary(params = {}, options = {})
      req = build_request(:describe_computation_model_execution_summary, params)
      req.send_request(options)
    end

    # Retrieves information about a dashboard.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard.
    #
    # @return [Types::DescribeDashboardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDashboardResponse#dashboard_id #dashboard_id} => String
    #   * {Types::DescribeDashboardResponse#dashboard_arn #dashboard_arn} => String
    #   * {Types::DescribeDashboardResponse#dashboard_name #dashboard_name} => String
    #   * {Types::DescribeDashboardResponse#project_id #project_id} => String
    #   * {Types::DescribeDashboardResponse#dashboard_description #dashboard_description} => String
    #   * {Types::DescribeDashboardResponse#dashboard_definition #dashboard_definition} => String
    #   * {Types::DescribeDashboardResponse#dashboard_creation_date #dashboard_creation_date} => Time
    #   * {Types::DescribeDashboardResponse#dashboard_last_update_date #dashboard_last_update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dashboard({
    #     dashboard_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_id #=> String
    #   resp.dashboard_arn #=> String
    #   resp.dashboard_name #=> String
    #   resp.project_id #=> String
    #   resp.dashboard_description #=> String
    #   resp.dashboard_definition #=> String
    #   resp.dashboard_creation_date #=> Time
    #   resp.dashboard_last_update_date #=> Time
    #
    # @overload describe_dashboard(params = {})
    # @param [Hash] params ({})
    def describe_dashboard(params = {}, options = {})
      req = build_request(:describe_dashboard, params)
      req.send_request(options)
    end

    # Retrieves information about a dataset.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @return [Types::DescribeDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDatasetResponse#dataset_id #dataset_id} => String
    #   * {Types::DescribeDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::DescribeDatasetResponse#dataset_name #dataset_name} => String
    #   * {Types::DescribeDatasetResponse#dataset_description #dataset_description} => String
    #   * {Types::DescribeDatasetResponse#dataset_source #dataset_source} => Types::DatasetSource
    #   * {Types::DescribeDatasetResponse#dataset_status #dataset_status} => Types::DatasetStatus
    #   * {Types::DescribeDatasetResponse#dataset_creation_date #dataset_creation_date} => Time
    #   * {Types::DescribeDatasetResponse#dataset_last_update_date #dataset_last_update_date} => Time
    #   * {Types::DescribeDatasetResponse#dataset_version #dataset_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_dataset({
    #     dataset_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #   resp.dataset_arn #=> String
    #   resp.dataset_name #=> String
    #   resp.dataset_description #=> String
    #   resp.dataset_source.source_type #=> String, one of "KENDRA"
    #   resp.dataset_source.source_format #=> String, one of "KNOWLEDGE_BASE"
    #   resp.dataset_source.source_detail.kendra.knowledge_base_arn #=> String
    #   resp.dataset_source.source_detail.kendra.role_arn #=> String
    #   resp.dataset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.dataset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.dataset_status.error.message #=> String
    #   resp.dataset_status.error.details #=> Array
    #   resp.dataset_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.dataset_status.error.details[0].message #=> String
    #   resp.dataset_creation_date #=> Time
    #   resp.dataset_last_update_date #=> Time
    #   resp.dataset_version #=> String
    #
    # @overload describe_dataset(params = {})
    # @param [Hash] params ({})
    def describe_dataset(params = {}, options = {})
      req = build_request(:describe_dataset, params)
      req.send_request(options)
    end

    # Retrieves information about the default encryption configuration for
    # the Amazon Web Services account in the default or specified Region.
    # For more information, see [Key management][1] in the *IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html
    #
    # @return [Types::DescribeDefaultEncryptionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDefaultEncryptionConfigurationResponse#encryption_type #encryption_type} => String
    #   * {Types::DescribeDefaultEncryptionConfigurationResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::DescribeDefaultEncryptionConfigurationResponse#configuration_status #configuration_status} => Types::ConfigurationStatus
    #
    # @example Response structure
    #
    #   resp.encryption_type #=> String, one of "SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"
    #   resp.kms_key_arn #=> String
    #   resp.configuration_status.state #=> String, one of "ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.configuration_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.configuration_status.error.message #=> String
    #
    # @overload describe_default_encryption_configuration(params = {})
    # @param [Hash] params ({})
    def describe_default_encryption_configuration(params = {}, options = {})
      req = build_request(:describe_default_encryption_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about the execution.
    #
    # @option params [required, String] :execution_id
    #   The ID of the execution.
    #
    # @return [Types::DescribeExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExecutionResponse#execution_id #execution_id} => String
    #   * {Types::DescribeExecutionResponse#action_type #action_type} => String
    #   * {Types::DescribeExecutionResponse#target_resource #target_resource} => Types::TargetResource
    #   * {Types::DescribeExecutionResponse#target_resource_version #target_resource_version} => String
    #   * {Types::DescribeExecutionResponse#resolve_to #resolve_to} => Types::ResolveTo
    #   * {Types::DescribeExecutionResponse#execution_start_time #execution_start_time} => Time
    #   * {Types::DescribeExecutionResponse#execution_end_time #execution_end_time} => Time
    #   * {Types::DescribeExecutionResponse#execution_status #execution_status} => Types::ExecutionStatus
    #   * {Types::DescribeExecutionResponse#execution_result #execution_result} => Hash&lt;String,String&gt;
    #   * {Types::DescribeExecutionResponse#execution_details #execution_details} => Hash&lt;String,String&gt;
    #   * {Types::DescribeExecutionResponse#execution_entity_version #execution_entity_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_execution({
    #     execution_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_id #=> String
    #   resp.action_type #=> String
    #   resp.target_resource.asset_id #=> String
    #   resp.target_resource.computation_model_id #=> String
    #   resp.target_resource_version #=> String
    #   resp.resolve_to.asset_id #=> String
    #   resp.execution_start_time #=> Time
    #   resp.execution_end_time #=> Time
    #   resp.execution_status.state #=> String, one of "RUNNING", "COMPLETED", "FAILED"
    #   resp.execution_result #=> Hash
    #   resp.execution_result["ExecutionResultKey"] #=> String
    #   resp.execution_details #=> Hash
    #   resp.execution_details["ExecutionDetailsKey"] #=> String
    #   resp.execution_entity_version #=> String
    #
    # @overload describe_execution(params = {})
    # @param [Hash] params ({})
    def describe_execution(params = {}, options = {})
      req = build_request(:describe_execution, params)
      req.send_request(options)
    end

    # Retrieves information about a gateway.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway device.
    #
    # @return [Types::DescribeGatewayResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayResponse#gateway_id #gateway_id} => String
    #   * {Types::DescribeGatewayResponse#gateway_name #gateway_name} => String
    #   * {Types::DescribeGatewayResponse#gateway_arn #gateway_arn} => String
    #   * {Types::DescribeGatewayResponse#gateway_platform #gateway_platform} => Types::GatewayPlatform
    #   * {Types::DescribeGatewayResponse#gateway_version #gateway_version} => String
    #   * {Types::DescribeGatewayResponse#gateway_capability_summaries #gateway_capability_summaries} => Array&lt;Types::GatewayCapabilitySummary&gt;
    #   * {Types::DescribeGatewayResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeGatewayResponse#last_update_date #last_update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway({
    #     gateway_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.gateway_name #=> String
    #   resp.gateway_arn #=> String
    #   resp.gateway_platform.greengrass.group_arn #=> String
    #   resp.gateway_platform.greengrass_v2.core_device_thing_name #=> String
    #   resp.gateway_platform.greengrass_v2.core_device_operating_system #=> String, one of "LINUX_AARCH64", "LINUX_AMD64", "WINDOWS_AMD64"
    #   resp.gateway_platform.siemens_ie.iot_core_thing_name #=> String
    #   resp.gateway_version #=> String
    #   resp.gateway_capability_summaries #=> Array
    #   resp.gateway_capability_summaries[0].capability_namespace #=> String
    #   resp.gateway_capability_summaries[0].capability_sync_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN", "NOT_APPLICABLE"
    #   resp.creation_date #=> Time
    #   resp.last_update_date #=> Time
    #
    # @overload describe_gateway(params = {})
    # @param [Hash] params ({})
    def describe_gateway(params = {}, options = {})
      req = build_request(:describe_gateway, params)
      req.send_request(options)
    end

    # Each gateway capability defines data sources for a gateway. This is
    # the namespace of the gateway capability.
    #
    # . The namespace follows the format `service:capability:version`,
    # where:
    #
    # * `service` - The service providing the capability, or `iotsitewise`.
    #
    # * `capability` - The specific capability type. Options include:
    #   `opcuacollector` for the OPC UA data source collector, or
    #   `publisher` for data publisher capability.
    #
    # * `version` - The version number of the capability. Option include `2`
    #   for Classic streams, V2 gateways, and `3` for MQTT-enabled, V3
    #   gateways.
    #
    # After updating a capability configuration, the sync status becomes
    # `OUT_OF_SYNC` until the gateway processes the configuration.Use
    # `DescribeGatewayCapabilityConfiguration` to check the sync status and
    # verify the configuration was applied.
    #
    # A gateway can have multiple capability configurations with different
    # namespaces.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway that defines the capability configuration.
    #
    # @option params [required, String] :capability_namespace
    #   The namespace of the capability configuration. For example, if you
    #   configure OPC UA sources for an MQTT-enabled gateway, your OPC-UA
    #   capability configuration has the namespace
    #   `iotsitewise:opcuacollector:3`.
    #
    # @return [Types::DescribeGatewayCapabilityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGatewayCapabilityConfigurationResponse#gateway_id #gateway_id} => String
    #   * {Types::DescribeGatewayCapabilityConfigurationResponse#capability_namespace #capability_namespace} => String
    #   * {Types::DescribeGatewayCapabilityConfigurationResponse#capability_configuration #capability_configuration} => String
    #   * {Types::DescribeGatewayCapabilityConfigurationResponse#capability_sync_status #capability_sync_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_gateway_capability_configuration({
    #     gateway_id: "ID", # required
    #     capability_namespace: "CapabilityNamespace", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_id #=> String
    #   resp.capability_namespace #=> String
    #   resp.capability_configuration #=> String
    #   resp.capability_sync_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN", "NOT_APPLICABLE"
    #
    # @overload describe_gateway_capability_configuration(params = {})
    # @param [Hash] params ({})
    def describe_gateway_capability_configuration(params = {}, options = {})
      req = build_request(:describe_gateway_capability_configuration, params)
      req.send_request(options)
    end

    # Retrieves the current IoT SiteWise logging options.
    #
    # @return [Types::DescribeLoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoggingOptionsResponse#logging_options #logging_options} => Types::LoggingOptions
    #
    # @example Response structure
    #
    #   resp.logging_options.level #=> String, one of "ERROR", "INFO", "OFF"
    #
    # @overload describe_logging_options(params = {})
    # @param [Hash] params ({})
    def describe_logging_options(params = {}, options = {})
      req = build_request(:describe_logging_options, params)
      req.send_request(options)
    end

    # Retrieves information about a portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal.
    #
    # @return [Types::DescribePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePortalResponse#portal_id #portal_id} => String
    #   * {Types::DescribePortalResponse#portal_arn #portal_arn} => String
    #   * {Types::DescribePortalResponse#portal_name #portal_name} => String
    #   * {Types::DescribePortalResponse#portal_description #portal_description} => String
    #   * {Types::DescribePortalResponse#portal_client_id #portal_client_id} => String
    #   * {Types::DescribePortalResponse#portal_start_url #portal_start_url} => String
    #   * {Types::DescribePortalResponse#portal_contact_email #portal_contact_email} => String
    #   * {Types::DescribePortalResponse#portal_status #portal_status} => Types::PortalStatus
    #   * {Types::DescribePortalResponse#portal_creation_date #portal_creation_date} => Time
    #   * {Types::DescribePortalResponse#portal_last_update_date #portal_last_update_date} => Time
    #   * {Types::DescribePortalResponse#portal_logo_image_location #portal_logo_image_location} => Types::ImageLocation
    #   * {Types::DescribePortalResponse#role_arn #role_arn} => String
    #   * {Types::DescribePortalResponse#portal_auth_mode #portal_auth_mode} => String
    #   * {Types::DescribePortalResponse#notification_sender_email #notification_sender_email} => String
    #   * {Types::DescribePortalResponse#alarms #alarms} => Types::Alarms
    #   * {Types::DescribePortalResponse#portal_type #portal_type} => String
    #   * {Types::DescribePortalResponse#portal_type_configuration #portal_type_configuration} => Hash&lt;String,Types::PortalTypeEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portal({
    #     portal_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_id #=> String
    #   resp.portal_arn #=> String
    #   resp.portal_name #=> String
    #   resp.portal_description #=> String
    #   resp.portal_client_id #=> String
    #   resp.portal_start_url #=> String
    #   resp.portal_contact_email #=> String
    #   resp.portal_status.state #=> String, one of "CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_status.error.message #=> String
    #   resp.portal_creation_date #=> Time
    #   resp.portal_last_update_date #=> Time
    #   resp.portal_logo_image_location.id #=> String
    #   resp.portal_logo_image_location.url #=> String
    #   resp.role_arn #=> String
    #   resp.portal_auth_mode #=> String, one of "IAM", "SSO"
    #   resp.notification_sender_email #=> String
    #   resp.alarms.alarm_role_arn #=> String
    #   resp.alarms.notification_lambda_arn #=> String
    #   resp.portal_type #=> String, one of "SITEWISE_PORTAL_V1", "SITEWISE_PORTAL_V2"
    #   resp.portal_type_configuration #=> Hash
    #   resp.portal_type_configuration["PortalTypeKey"].portal_tools #=> Array
    #   resp.portal_type_configuration["PortalTypeKey"].portal_tools[0] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * portal_active
    #   * portal_not_exists
    #
    # @overload describe_portal(params = {})
    # @param [Hash] params ({})
    def describe_portal(params = {}, options = {})
      req = build_request(:describe_portal, params)
      req.send_request(options)
    end

    # Retrieves information about a project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @return [Types::DescribeProjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProjectResponse#project_id #project_id} => String
    #   * {Types::DescribeProjectResponse#project_arn #project_arn} => String
    #   * {Types::DescribeProjectResponse#project_name #project_name} => String
    #   * {Types::DescribeProjectResponse#portal_id #portal_id} => String
    #   * {Types::DescribeProjectResponse#project_description #project_description} => String
    #   * {Types::DescribeProjectResponse#project_creation_date #project_creation_date} => Time
    #   * {Types::DescribeProjectResponse#project_last_update_date #project_last_update_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project({
    #     project_id: "ID", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project_id #=> String
    #   resp.project_arn #=> String
    #   resp.project_name #=> String
    #   resp.portal_id #=> String
    #   resp.project_description #=> String
    #   resp.project_creation_date #=> Time
    #   resp.project_last_update_date #=> Time
    #
    # @overload describe_project(params = {})
    # @param [Hash] params ({})
    def describe_project(params = {}, options = {})
      req = build_request(:describe_project, params)
      req.send_request(options)
    end

    # Retrieves information about the storage configuration for IoT
    # SiteWise.
    #
    # @return [Types::DescribeStorageConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStorageConfigurationResponse#storage_type #storage_type} => String
    #   * {Types::DescribeStorageConfigurationResponse#multi_layer_storage #multi_layer_storage} => Types::MultiLayerStorage
    #   * {Types::DescribeStorageConfigurationResponse#disassociated_data_storage #disassociated_data_storage} => String
    #   * {Types::DescribeStorageConfigurationResponse#retention_period #retention_period} => Types::RetentionPeriod
    #   * {Types::DescribeStorageConfigurationResponse#configuration_status #configuration_status} => Types::ConfigurationStatus
    #   * {Types::DescribeStorageConfigurationResponse#last_update_date #last_update_date} => Time
    #   * {Types::DescribeStorageConfigurationResponse#warm_tier #warm_tier} => String
    #   * {Types::DescribeStorageConfigurationResponse#warm_tier_retention_period #warm_tier_retention_period} => Types::WarmTierRetentionPeriod
    #   * {Types::DescribeStorageConfigurationResponse#disallow_ingest_null_na_n #disallow_ingest_null_na_n} => Boolean
    #
    # @example Response structure
    #
    #   resp.storage_type #=> String, one of "SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"
    #   resp.multi_layer_storage.customer_managed_s3_storage.s3_resource_arn #=> String
    #   resp.multi_layer_storage.customer_managed_s3_storage.role_arn #=> String
    #   resp.disassociated_data_storage #=> String, one of "ENABLED", "DISABLED"
    #   resp.retention_period.number_of_days #=> Integer
    #   resp.retention_period.unlimited #=> Boolean
    #   resp.configuration_status.state #=> String, one of "ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.configuration_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.configuration_status.error.message #=> String
    #   resp.last_update_date #=> Time
    #   resp.warm_tier #=> String, one of "ENABLED", "DISABLED"
    #   resp.warm_tier_retention_period.number_of_days #=> Integer
    #   resp.warm_tier_retention_period.unlimited #=> Boolean
    #   resp.disallow_ingest_null_na_n #=> Boolean
    #
    # @overload describe_storage_configuration(params = {})
    # @param [Hash] params ({})
    def describe_storage_configuration(params = {}, options = {})
      req = build_request(:describe_storage_configuration, params)
      req.send_request(options)
    end

    # Retrieves information about a time series (data stream).
    #
    # To identify a time series, do one of the following:
    #
    # * If the time series isn't associated with an asset property, specify
    #   the `alias` of the time series.
    #
    # * If the time series is associated with an asset property, specify one
    #   of the following:
    #
    #   * The `alias` of the time series.
    #
    #   * The `assetId` and `propertyId` that identifies the asset property.
    #
    # @option params [String] :alias
    #   The alias that identifies the time series.
    #
    # @option params [String] :asset_id
    #   The ID of the asset in which the asset property was created. This can
    #   be either the actual ID in UUID format, or else `externalId:` followed
    #   by the external ID, if it has one. For more information, see
    #   [Referencing objects with external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :property_id
    #   The ID of the asset property. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @return [Types::DescribeTimeSeriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTimeSeriesResponse#asset_id #asset_id} => String
    #   * {Types::DescribeTimeSeriesResponse#property_id #property_id} => String
    #   * {Types::DescribeTimeSeriesResponse#alias #alias} => String
    #   * {Types::DescribeTimeSeriesResponse#time_series_id #time_series_id} => String
    #   * {Types::DescribeTimeSeriesResponse#data_type #data_type} => String
    #   * {Types::DescribeTimeSeriesResponse#data_type_spec #data_type_spec} => String
    #   * {Types::DescribeTimeSeriesResponse#time_series_creation_date #time_series_creation_date} => Time
    #   * {Types::DescribeTimeSeriesResponse#time_series_last_update_date #time_series_last_update_date} => Time
    #   * {Types::DescribeTimeSeriesResponse#time_series_arn #time_series_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_time_series({
    #     alias: "PropertyAlias",
    #     asset_id: "CustomID",
    #     property_id: "CustomID",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_id #=> String
    #   resp.property_id #=> String
    #   resp.alias #=> String
    #   resp.time_series_id #=> String
    #   resp.data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.data_type_spec #=> String
    #   resp.time_series_creation_date #=> Time
    #   resp.time_series_last_update_date #=> Time
    #   resp.time_series_arn #=> String
    #
    # @overload describe_time_series(params = {})
    # @param [Hash] params ({})
    def describe_time_series(params = {}, options = {})
      req = build_request(:describe_time_series, params)
      req.send_request(options)
    end

    # Disassociates a child asset from the given parent asset through a
    # hierarchy defined in the parent asset's model.
    #
    # @option params [required, String] :asset_id
    #   The ID of the parent asset from which to disassociate the child asset.
    #   This can be either the actual ID in UUID format, or else `externalId:`
    #   followed by the external ID, if it has one. For more information, see
    #   [Referencing objects with external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :hierarchy_id
    #   The ID of a hierarchy in the parent asset's model. (This can be
    #   either the actual ID in UUID format, or else `externalId:` followed by
    #   the external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.)
    #   Hierarchies allow different groupings of assets to be formed that all
    #   come from the same asset model. You can use the hierarchy ID to
    #   identify the correct asset to disassociate. For more information, see
    #   [Asset hierarchies][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #
    # @option params [required, String] :child_asset_id
    #   The ID of the child asset to disassociate. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_assets({
    #     asset_id: "CustomID", # required
    #     hierarchy_id: "CustomID", # required
    #     child_asset_id: "CustomID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload disassociate_assets(params = {})
    # @param [Hash] params ({})
    def disassociate_assets(params = {}, options = {})
      req = build_request(:disassociate_assets, params)
      req.send_request(options)
    end

    # Disassociates a time series (data stream) from an asset property.
    #
    # @option params [required, String] :alias
    #   The alias that identifies the time series.
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset in which the asset property was created. This can
    #   be either the actual ID in UUID format, or else `externalId:` followed
    #   by the external ID, if it has one. For more information, see
    #   [Referencing objects with external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :property_id
    #   The ID of the asset property. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_time_series_from_asset_property({
    #     alias: "PropertyAlias", # required
    #     asset_id: "CustomID", # required
    #     property_id: "CustomID", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload disassociate_time_series_from_asset_property(params = {})
    # @param [Hash] params ({})
    def disassociate_time_series_from_asset_property(params = {}, options = {})
      req = build_request(:disassociate_time_series_from_asset_property, params)
      req.send_request(options)
    end

    # Executes an action on a target resource.
    #
    # @option params [required, Types::TargetResource] :target_resource
    #   The resource the action will be taken on.
    #
    # @option params [required, String] :action_definition_id
    #   The ID of the action definition.
    #
    # @option params [required, Types::ActionPayload] :action_payload
    #   The JSON payload of the action.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    # @option params [Types::ResolveTo] :resolve_to
    #   The detailed resource this action resolves to.
    #
    # @return [Types::ExecuteActionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteActionResponse#action_id #action_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_action({
    #     target_resource: { # required
    #       asset_id: "ID",
    #       computation_model_id: "ID",
    #     },
    #     action_definition_id: "ID", # required
    #     action_payload: { # required
    #       string_value: "ActionPayloadString", # required
    #     },
    #     client_token: "ClientToken",
    #     resolve_to: {
    #       asset_id: "ID", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.action_id #=> String
    #
    # @overload execute_action(params = {})
    # @param [Hash] params ({})
    def execute_action(params = {}, options = {})
      req = build_request(:execute_action, params)
      req.send_request(options)
    end

    # Run SQL queries to retrieve metadata and time-series data from asset
    # models, assets, measurements, metrics, transforms, and aggregates.
    #
    # @option params [required, String] :query_statement
    #   The IoT SiteWise query statement.
    #
    # @option params [String] :next_token
    #   The string that specifies the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    #   * Minimum is 1
    #
    #   * Maximum is 20000
    #
    #   * Default is 250
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ExecuteQueryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteQueryResponse#columns #columns} => Array&lt;Types::ColumnInfo&gt;
    #   * {Types::ExecuteQueryResponse#rows #rows} => Array&lt;Types::Row&gt;
    #   * {Types::ExecuteQueryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_query({
    #     query_statement: "QueryStatement", # required
    #     next_token: "ExecuteQueryNextToken",
    #     max_results: 1,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.columns #=> Array
    #   resp.columns[0].name #=> String
    #   resp.columns[0].type.scalar_type #=> String, one of "BOOLEAN", "INT", "DOUBLE", "TIMESTAMP", "STRING"
    #   resp.rows #=> Array
    #   resp.rows[0].data #=> Array
    #   resp.rows[0].data[0].scalar_value #=> String
    #   resp.rows[0].data[0].array_value #=> Types::DatumList
    #   resp.rows[0].data[0].row_value #=> Types::Row
    #   resp.rows[0].data[0].null_value #=> Boolean
    #   resp.next_token #=> String
    #
    # @overload execute_query(params = {})
    # @param [Hash] params ({})
    def execute_query(params = {}, options = {})
      req = build_request(:execute_query, params)
      req.send_request(options)
    end

    # Gets aggregated values for an asset property. For more information,
    # see [Querying aggregates][1] in the *IoT SiteWise User Guide*.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @option params [String] :asset_id
    #   The ID of the asset, in UUID format.
    #
    # @option params [String] :property_id
    #   The ID of the asset property, in UUID format.
    #
    # @option params [String] :property_alias
    #   The alias that identifies the property, such as an OPC-UA server data
    #   stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @option params [required, Array<String>] :aggregate_types
    #   The data aggregating function.
    #
    # @option params [required, String] :resolution
    #   The time interval over which to aggregate data.
    #
    # @option params [Array<String>] :qualities
    #   The quality by which to filter asset data.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_date
    #   The exclusive start of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_date
    #   The inclusive end of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [String] :time_ordering
    #   The chronological sorting order of the requested information.
    #
    #   Default: `ASCENDING`
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request. A
    #   result set is returned in the two cases, whichever occurs first.
    #
    #   * The size of the result set is equal to 1 MB.
    #
    #   * The number of data points in the result set is equal to the value of
    #     `maxResults`. The maximum value of `maxResults` is 2500.
    #
    # @return [Types::GetAssetPropertyAggregatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetPropertyAggregatesResponse#aggregated_values #aggregated_values} => Array&lt;Types::AggregatedValue&gt;
    #   * {Types::GetAssetPropertyAggregatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_aggregates({
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #     aggregate_types: ["AVERAGE"], # required, accepts AVERAGE, COUNT, MAXIMUM, MINIMUM, SUM, STANDARD_DEVIATION
    #     resolution: "Resolution", # required
    #     qualities: ["GOOD"], # accepts GOOD, BAD, UNCERTAIN
    #     start_date: Time.now, # required
    #     end_date: Time.now, # required
    #     time_ordering: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.aggregated_values #=> Array
    #   resp.aggregated_values[0].timestamp #=> Time
    #   resp.aggregated_values[0].quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #   resp.aggregated_values[0].value.average #=> Float
    #   resp.aggregated_values[0].value.count #=> Float
    #   resp.aggregated_values[0].value.maximum #=> Float
    #   resp.aggregated_values[0].value.minimum #=> Float
    #   resp.aggregated_values[0].value.sum #=> Float
    #   resp.aggregated_values[0].value.standard_deviation #=> Float
    #   resp.next_token #=> String
    #
    # @overload get_asset_property_aggregates(params = {})
    # @param [Hash] params ({})
    def get_asset_property_aggregates(params = {}, options = {})
      req = build_request(:get_asset_property_aggregates, params)
      req.send_request(options)
    end

    # Gets an asset property's current value. For more information, see
    # [Querying current values][1] in the *IoT SiteWise User Guide*.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @option params [String] :asset_id
    #   The ID of the asset, in UUID format.
    #
    # @option params [String] :property_id
    #   The ID of the asset property, in UUID format.
    #
    # @option params [String] :property_alias
    #   The alias that identifies the property, such as an OPC-UA server data
    #   stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @return [Types::GetAssetPropertyValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetPropertyValueResponse#property_value #property_value} => Types::AssetPropertyValue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_value({
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #   })
    #
    # @example Response structure
    #
    #   resp.property_value.value.string_value #=> String
    #   resp.property_value.value.integer_value #=> Integer
    #   resp.property_value.value.double_value #=> Float
    #   resp.property_value.value.boolean_value #=> Boolean
    #   resp.property_value.value.null_value.value_type #=> String, one of "D", "B", "S", "I", "U"
    #   resp.property_value.timestamp.time_in_seconds #=> Integer
    #   resp.property_value.timestamp.offset_in_nanos #=> Integer
    #   resp.property_value.quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #
    # @overload get_asset_property_value(params = {})
    # @param [Hash] params ({})
    def get_asset_property_value(params = {}, options = {})
      req = build_request(:get_asset_property_value, params)
      req.send_request(options)
    end

    # Gets the history of an asset property's values. For more information,
    # see [Querying historical values][1] in the *IoT SiteWise User Guide*.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values
    # [2]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @option params [String] :asset_id
    #   The ID of the asset, in UUID format.
    #
    # @option params [String] :property_id
    #   The ID of the asset property, in UUID format.
    #
    # @option params [String] :property_alias
    #   The alias that identifies the property, such as an OPC-UA server data
    #   stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_date
    #   The exclusive start of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_date
    #   The inclusive end of the range from which to query historical data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [Array<String>] :qualities
    #   The quality by which to filter asset data.
    #
    # @option params [String] :time_ordering
    #   The chronological sorting order of the requested information.
    #
    #   Default: `ASCENDING`
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request. A
    #   result set is returned in the two cases, whichever occurs first.
    #
    #   * The size of the result set is equal to 4 MB.
    #
    #   * The number of data points in the result set is equal to the value of
    #     `maxResults`. The maximum value of `maxResults` is 20000.
    #
    # @return [Types::GetAssetPropertyValueHistoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetPropertyValueHistoryResponse#asset_property_value_history #asset_property_value_history} => Array&lt;Types::AssetPropertyValue&gt;
    #   * {Types::GetAssetPropertyValueHistoryResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_property_value_history({
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #     start_date: Time.now,
    #     end_date: Time.now,
    #     qualities: ["GOOD"], # accepts GOOD, BAD, UNCERTAIN
    #     time_ordering: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_property_value_history #=> Array
    #   resp.asset_property_value_history[0].value.string_value #=> String
    #   resp.asset_property_value_history[0].value.integer_value #=> Integer
    #   resp.asset_property_value_history[0].value.double_value #=> Float
    #   resp.asset_property_value_history[0].value.boolean_value #=> Boolean
    #   resp.asset_property_value_history[0].value.null_value.value_type #=> String, one of "D", "B", "S", "I", "U"
    #   resp.asset_property_value_history[0].timestamp.time_in_seconds #=> Integer
    #   resp.asset_property_value_history[0].timestamp.offset_in_nanos #=> Integer
    #   resp.asset_property_value_history[0].quality #=> String, one of "GOOD", "BAD", "UNCERTAIN"
    #   resp.next_token #=> String
    #
    # @overload get_asset_property_value_history(params = {})
    # @param [Hash] params ({})
    def get_asset_property_value_history(params = {}, options = {})
      req = build_request(:get_asset_property_value_history, params)
      req.send_request(options)
    end

    # Get interpolated values for an asset property for a specified time
    # interval, during a period of time. If your time series is missing data
    # points during the specified time interval, you can use interpolation
    # to estimate the missing data.
    #
    # For example, you can use this operation to return the interpolated
    # temperature values for a wind turbine every 24 hours over a duration
    # of 7 days.
    #
    # To identify an asset property, you must specify one of the following:
    #
    # * The `assetId` and `propertyId` of an asset property.
    #
    # * A `propertyAlias`, which is a data stream alias (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). To define an asset
    #   property's alias, see [UpdateAssetProperty][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html
    #
    # @option params [String] :asset_id
    #   The ID of the asset, in UUID format.
    #
    # @option params [String] :property_id
    #   The ID of the asset property, in UUID format.
    #
    # @option params [String] :property_alias
    #   The alias that identifies the property, such as an OPC-UA server data
    #   stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @option params [required, Integer] :start_time_in_seconds
    #   The exclusive start of the range from which to interpolate data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [Integer] :start_time_offset_in_nanos
    #   The nanosecond offset converted from `startTimeInSeconds`.
    #
    # @option params [required, Integer] :end_time_in_seconds
    #   The inclusive end of the range from which to interpolate data,
    #   expressed in seconds in Unix epoch time.
    #
    # @option params [Integer] :end_time_offset_in_nanos
    #   The nanosecond offset converted from `endTimeInSeconds`.
    #
    # @option params [required, String] :quality
    #   The quality of the asset property value. You can use this parameter as
    #   a filter to choose only the asset property values that have a specific
    #   quality.
    #
    # @option params [required, Integer] :interval_in_seconds
    #   The time interval in seconds over which to interpolate data. Each
    #   interval starts when the previous one ends.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request. If
    #   not specified, the default value is 10.
    #
    # @option params [required, String] :type
    #   The interpolation type.
    #
    #   Valid values: `LINEAR_INTERPOLATION | LOCF_INTERPOLATION`
    #
    #   * `LINEAR_INTERPOLATION` – Estimates missing data using [linear
    #     interpolation][1].
    #
    #     For example, you can use this operation to return the interpolated
    #     temperature values for a wind turbine every 24 hours over a duration
    #     of 7 days. If the interpolation starts July 1, 2021, at 9 AM, IoT
    #     SiteWise returns the first interpolated value on July 2, 2021, at 9
    #     AM, the second interpolated value on July 3, 2021, at 9 AM, and so
    #     on.
    #
    #   * `LOCF_INTERPOLATION` – Estimates missing data using last observation
    #     carried forward interpolation
    #
    #     If no data point is found for an interval, IoT SiteWise returns the
    #     last observed data point for the previous interval and carries
    #     forward this interpolated value until a new data point is found.
    #
    #     For example, you can get the state of an on-off valve every 24 hours
    #     over a duration of 7 days. If the interpolation starts July 1, 2021,
    #     at 9 AM, IoT SiteWise returns the last observed data point between
    #     July 1, 2021, at 9 AM and July 2, 2021, at 9 AM as the first
    #     interpolated value. If a data point isn't found after 9 AM on July
    #     2, 2021, IoT SiteWise uses the same interpolated value for the rest
    #     of the days.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Linear_interpolation
    #
    # @option params [Integer] :interval_window_in_seconds
    #   The query interval for the window, in seconds. IoT SiteWise computes
    #   each interpolated value by using data points from the timestamp of
    #   each interval, minus the window to the timestamp of each interval plus
    #   the window. If not specified, the window ranges between the start time
    #   minus the interval and the end time plus the interval.
    #
    #   <note markdown="1"> * If you specify a value for the `intervalWindowInSeconds` parameter,
    #     the value for the `type` parameter must be `LINEAR_INTERPOLATION`.
    #
    #   * If a data point isn't found during the specified query window, IoT
    #     SiteWise won't return an interpolated value for the interval. This
    #     indicates that there's a gap in the ingested data points.
    #
    #    </note>
    #
    #   For example, you can get the interpolated temperature values for a
    #   wind turbine every 24 hours over a duration of 7 days. If the
    #   interpolation starts on July 1, 2021, at 9 AM with a window of 2
    #   hours, IoT SiteWise uses the data points from 7 AM (9 AM minus 2
    #   hours) to 11 AM (9 AM plus 2 hours) on July 2, 2021 to compute the
    #   first interpolated value. Next, IoT SiteWise uses the data points from
    #   7 AM (9 AM minus 2 hours) to 11 AM (9 AM plus 2 hours) on July 3, 2021
    #   to compute the second interpolated value, and so on.
    #
    # @return [Types::GetInterpolatedAssetPropertyValuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInterpolatedAssetPropertyValuesResponse#interpolated_asset_property_values #interpolated_asset_property_values} => Array&lt;Types::InterpolatedAssetPropertyValue&gt;
    #   * {Types::GetInterpolatedAssetPropertyValuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_interpolated_asset_property_values({
    #     asset_id: "ID",
    #     property_id: "ID",
    #     property_alias: "AssetPropertyAlias",
    #     start_time_in_seconds: 1, # required
    #     start_time_offset_in_nanos: 1,
    #     end_time_in_seconds: 1, # required
    #     end_time_offset_in_nanos: 1,
    #     quality: "GOOD", # required, accepts GOOD, BAD, UNCERTAIN
    #     interval_in_seconds: 1, # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     type: "InterpolationType", # required
    #     interval_window_in_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.interpolated_asset_property_values #=> Array
    #   resp.interpolated_asset_property_values[0].timestamp.time_in_seconds #=> Integer
    #   resp.interpolated_asset_property_values[0].timestamp.offset_in_nanos #=> Integer
    #   resp.interpolated_asset_property_values[0].value.string_value #=> String
    #   resp.interpolated_asset_property_values[0].value.integer_value #=> Integer
    #   resp.interpolated_asset_property_values[0].value.double_value #=> Float
    #   resp.interpolated_asset_property_values[0].value.boolean_value #=> Boolean
    #   resp.interpolated_asset_property_values[0].value.null_value.value_type #=> String, one of "D", "B", "S", "I", "U"
    #   resp.next_token #=> String
    #
    # @overload get_interpolated_asset_property_values(params = {})
    # @param [Hash] params ({})
    def get_interpolated_asset_property_values(params = {}, options = {})
      req = build_request(:get_interpolated_asset_property_values, params)
      req.send_request(options)
    end

    # Invokes SiteWise Assistant to start or continue a conversation.
    #
    # @option params [String] :conversation_id
    #   The ID assigned to a conversation. IoT SiteWise automatically
    #   generates a unique ID for you, and this parameter is never required.
    #   However, if you prefer to have your own ID, you must specify it here
    #   in UUID format. If you specify your own ID, it must be globally
    #   unique.
    #
    # @option params [required, String] :message
    #   A text message sent to the SiteWise Assistant by the user.
    #
    # @option params [Boolean] :enable_trace
    #   Specifies if to turn trace on or not. It is used to track the SiteWise
    #   Assistant's reasoning, and data access process.
    #
    # @return [Types::InvokeAssistantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAssistantResponse#body #body} => Types::ResponseStream
    #   * {Types::InvokeAssistantResponse#conversation_id #conversation_id} => String
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register invoke_assistant
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #invoke_assistant call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::IoTSiteWise::EventStreams::ResponseStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #invoke_assistant
    #   # Example for registering callbacks for all event types and an error event
    #   client.invoke_assistant(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #invoke_assistant
    #   #  1) Create a Aws::IoTSiteWise::EventStreams::ResponseStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::IoTSiteWise::EventStreams::ResponseStream.new
    #   handler.on_trace_event do |event|
    #     event # => Aws::IoTSiteWise::Types::trace
    #   end
    #   handler.on_output_event do |event|
    #     event # => Aws::IoTSiteWise::Types::output
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::accessDeniedException
    #   end
    #   handler.on_conflicting_operation_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::conflictingOperationException
    #   end
    #   handler.on_internal_failure_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::internalFailureException
    #   end
    #   handler.on_invalid_request_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::invalidRequestException
    #   end
    #   handler.on_limit_exceeded_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::limitExceededException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::resourceNotFoundException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::throttlingException
    #   end
    #
    #   client.invoke_assistant(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_trace_event do |event|
    #       event # => Aws::IoTSiteWise::Types::trace
    #     end
    #     stream.on_output_event do |event|
    #       event # => Aws::IoTSiteWise::Types::output
    #     end
    #     stream.on_access_denied_exception_event do |event|
    #       event # => Aws::IoTSiteWise::Types::accessDeniedException
    #     end
    #     stream.on_conflicting_operation_exception_event do |event|
    #       event # => Aws::IoTSiteWise::Types::conflictingOperationException
    #     end
    #     stream.on_internal_failure_exception_event do |event|
    #       event # => Aws::IoTSiteWise::Types::internalFailureException
    #     end
    #     stream.on_invalid_request_exception_event do |event|
    #       event # => Aws::IoTSiteWise::Types::invalidRequestException
    #     end
    #     stream.on_limit_exceeded_exception_event do |event|
    #       event # => Aws::IoTSiteWise::Types::limitExceededException
    #     end
    #     stream.on_resource_not_found_exception_event do |event|
    #       event # => Aws::IoTSiteWise::Types::resourceNotFoundException
    #     end
    #     stream.on_throttling_exception_event do |event|
    #       event # => Aws::IoTSiteWise::Types::throttlingException
    #     end
    #   end
    #
    #   client.invoke_assistant(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::IoTSiteWise::EventStreams::ResponseStream.new
    #   handler.on_trace_event do |event|
    #     event # => Aws::IoTSiteWise::Types::trace
    #   end
    #   handler.on_output_event do |event|
    #     event # => Aws::IoTSiteWise::Types::output
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::accessDeniedException
    #   end
    #   handler.on_conflicting_operation_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::conflictingOperationException
    #   end
    #   handler.on_internal_failure_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::internalFailureException
    #   end
    #   handler.on_invalid_request_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::invalidRequestException
    #   end
    #   handler.on_limit_exceeded_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::limitExceededException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::resourceNotFoundException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::IoTSiteWise::Types::throttlingException
    #   end
    #
    #   client.invoke_assistant(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.body # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_assistant({
    #     conversation_id: "ConversationId",
    #     message: "MessageInput", # required
    #     enable_trace: false,
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.body:
    #   resp.body #=> Enumerator
    #   resp.body.event_types #=> [:trace, :output, :access_denied_exception, :conflicting_operation_exception, :internal_failure_exception, :invalid_request_exception, :limit_exceeded_exception, :resource_not_found_exception, :throttling_exception]
    #
    #   # For :trace event available at #on_trace_event callback and response eventstream enumerator:
    #   event.text #=> String
    #
    #   # For :output event available at #on_output_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.citations #=> Array
    #   event.citations[0].reference.dataset.dataset_arn #=> String
    #   event.citations[0].reference.dataset.source.arn #=> String
    #   event.citations[0].reference.dataset.source.location.uri #=> String
    #   event.citations[0].content.text #=> String
    #
    #   # For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflicting_operation_exception event available at #on_conflicting_operation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_id #=> String
    #   event.resource_arn #=> String
    #
    #   # For :internal_failure_exception event available at #on_internal_failure_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :invalid_request_exception event available at #on_invalid_request_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :limit_exceeded_exception event available at #on_limit_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   resp.conversation_id #=> String
    #
    # @overload invoke_assistant(params = {})
    # @param [Hash] params ({})
    def invoke_assistant(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::ResponseStream then handler
        when Proc then EventStreams::ResponseStream.new.tap(&handler)
        when nil then EventStreams::ResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::IoTSiteWise::EventStreams::ResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_assistant, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Retrieves a paginated list of access policies for an identity (an IAM
    # Identity Center user, an IAM Identity Center group, or an IAM user) or
    # an IoT SiteWise Monitor resource (a portal or project).
    #
    # @option params [String] :identity_type
    #   The type of identity (IAM Identity Center user, IAM Identity Center
    #   group, or IAM user). This parameter is required if you specify
    #   `identityId`.
    #
    # @option params [String] :identity_id
    #   The ID of the identity. This parameter is required if you specify
    #   `USER` or `GROUP` for `identityType`.
    #
    # @option params [String] :resource_type
    #   The type of resource (portal or project). This parameter is required
    #   if you specify `resourceId`.
    #
    # @option params [String] :resource_id
    #   The ID of the resource. This parameter is required if you specify
    #   `resourceType`.
    #
    # @option params [String] :iam_arn
    #   The ARN of the IAM user. For more information, see [IAM ARNs][1] in
    #   the *IAM User Guide*. This parameter is required if you specify `IAM`
    #   for `identityType`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListAccessPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPoliciesResponse#access_policy_summaries #access_policy_summaries} => Array&lt;Types::AccessPolicySummary&gt;
    #   * {Types::ListAccessPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_policies({
    #     identity_type: "USER", # accepts USER, GROUP, IAM
    #     identity_id: "IdentityId",
    #     resource_type: "PORTAL", # accepts PORTAL, PROJECT
    #     resource_id: "ID",
    #     iam_arn: "IamArn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_summaries #=> Array
    #   resp.access_policy_summaries[0].id #=> String
    #   resp.access_policy_summaries[0].identity.user.id #=> String
    #   resp.access_policy_summaries[0].identity.group.id #=> String
    #   resp.access_policy_summaries[0].identity.iam_user.arn #=> String
    #   resp.access_policy_summaries[0].identity.iam_role.arn #=> String
    #   resp.access_policy_summaries[0].resource.portal.id #=> String
    #   resp.access_policy_summaries[0].resource.project.id #=> String
    #   resp.access_policy_summaries[0].permission #=> String, one of "ADMINISTRATOR", "VIEWER"
    #   resp.access_policy_summaries[0].creation_date #=> Time
    #   resp.access_policy_summaries[0].last_update_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_access_policies(params = {})
    # @param [Hash] params ({})
    def list_access_policies(params = {}, options = {})
      req = build_request(:list_access_policies, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of actions for a specific target resource.
    #
    # @option params [required, String] :target_resource_type
    #   The type of resource.
    #
    # @option params [required, String] :target_resource_id
    #   The ID of the target resource.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    # @option params [String] :resolve_to_resource_type
    #   The type of the resolved resource.
    #
    # @option params [String] :resolve_to_resource_id
    #   The ID of the resolved resource.
    #
    # @return [Types::ListActionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActionsResponse#action_summaries #action_summaries} => Array&lt;Types::ActionSummary&gt;
    #   * {Types::ListActionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_actions({
    #     target_resource_type: "ASSET", # required, accepts ASSET, COMPUTATION_MODEL
    #     target_resource_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resolve_to_resource_type: "ASSET", # accepts ASSET
    #     resolve_to_resource_id: "ID",
    #   })
    #
    # @example Response structure
    #
    #   resp.action_summaries #=> Array
    #   resp.action_summaries[0].action_id #=> String
    #   resp.action_summaries[0].action_definition_id #=> String
    #   resp.action_summaries[0].target_resource.asset_id #=> String
    #   resp.action_summaries[0].target_resource.computation_model_id #=> String
    #   resp.action_summaries[0].resolve_to.asset_id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_actions(params = {})
    # @param [Hash] params ({})
    def list_actions(params = {}, options = {})
      req = build_request(:list_actions, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of composite models associated with the
    # asset model
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @option params [String] :asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #
    # @return [Types::ListAssetModelCompositeModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetModelCompositeModelsResponse#asset_model_composite_model_summaries #asset_model_composite_model_summaries} => Array&lt;Types::AssetModelCompositeModelSummary&gt;
    #   * {Types::ListAssetModelCompositeModelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_model_composite_models({
    #     asset_model_id: "CustomID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_model_version: "AssetModelVersionFilter",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_composite_model_summaries #=> Array
    #   resp.asset_model_composite_model_summaries[0].id #=> String
    #   resp.asset_model_composite_model_summaries[0].external_id #=> String
    #   resp.asset_model_composite_model_summaries[0].name #=> String
    #   resp.asset_model_composite_model_summaries[0].type #=> String
    #   resp.asset_model_composite_model_summaries[0].description #=> String
    #   resp.asset_model_composite_model_summaries[0].path #=> Array
    #   resp.asset_model_composite_model_summaries[0].path[0].id #=> String
    #   resp.asset_model_composite_model_summaries[0].path[0].name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_asset_model_composite_models(params = {})
    # @param [Hash] params ({})
    def list_asset_model_composite_models(params = {}, options = {})
      req = build_request(:list_asset_model_composite_models, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of properties associated with an asset
    # model. If you update properties associated with the model before you
    # finish listing all the properties, you need to start all over again.
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request. If
    #   not specified, the default value is 50.
    #
    # @option params [String] :filter
    #   Filters the requested list of asset model properties. You can choose
    #   one of the following options:
    #
    #   * `ALL` – The list includes all asset model properties for a given
    #     asset model ID.
    #
    #   * `BASE` – The list includes only base asset model properties for a
    #     given asset model ID.
    #
    #   Default: `BASE`
    #
    # @option params [String] :asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #
    # @return [Types::ListAssetModelPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetModelPropertiesResponse#asset_model_property_summaries #asset_model_property_summaries} => Array&lt;Types::AssetModelPropertySummary&gt;
    #   * {Types::ListAssetModelPropertiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_model_properties({
    #     asset_model_id: "CustomID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: "ALL", # accepts ALL, BASE
    #     asset_model_version: "AssetModelVersionFilter",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_property_summaries #=> Array
    #   resp.asset_model_property_summaries[0].id #=> String
    #   resp.asset_model_property_summaries[0].external_id #=> String
    #   resp.asset_model_property_summaries[0].name #=> String
    #   resp.asset_model_property_summaries[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.asset_model_property_summaries[0].data_type_spec #=> String
    #   resp.asset_model_property_summaries[0].unit #=> String
    #   resp.asset_model_property_summaries[0].type.attribute.default_value #=> String
    #   resp.asset_model_property_summaries[0].type.measurement.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_model_property_summaries[0].type.transform.expression #=> String
    #   resp.asset_model_property_summaries[0].type.transform.variables #=> Array
    #   resp.asset_model_property_summaries[0].type.transform.variables[0].name #=> String
    #   resp.asset_model_property_summaries[0].type.transform.variables[0].value.property_id #=> String
    #   resp.asset_model_property_summaries[0].type.transform.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_property_summaries[0].type.transform.variables[0].value.property_path #=> Array
    #   resp.asset_model_property_summaries[0].type.transform.variables[0].value.property_path[0].id #=> String
    #   resp.asset_model_property_summaries[0].type.transform.variables[0].value.property_path[0].name #=> String
    #   resp.asset_model_property_summaries[0].type.transform.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_model_property_summaries[0].type.transform.processing_config.forwarding_config.state #=> String, one of "DISABLED", "ENABLED"
    #   resp.asset_model_property_summaries[0].type.metric.expression #=> String
    #   resp.asset_model_property_summaries[0].type.metric.variables #=> Array
    #   resp.asset_model_property_summaries[0].type.metric.variables[0].name #=> String
    #   resp.asset_model_property_summaries[0].type.metric.variables[0].value.property_id #=> String
    #   resp.asset_model_property_summaries[0].type.metric.variables[0].value.hierarchy_id #=> String
    #   resp.asset_model_property_summaries[0].type.metric.variables[0].value.property_path #=> Array
    #   resp.asset_model_property_summaries[0].type.metric.variables[0].value.property_path[0].id #=> String
    #   resp.asset_model_property_summaries[0].type.metric.variables[0].value.property_path[0].name #=> String
    #   resp.asset_model_property_summaries[0].type.metric.window.tumbling.interval #=> String
    #   resp.asset_model_property_summaries[0].type.metric.window.tumbling.offset #=> String
    #   resp.asset_model_property_summaries[0].type.metric.processing_config.compute_location #=> String, one of "EDGE", "CLOUD"
    #   resp.asset_model_property_summaries[0].asset_model_composite_model_id #=> String
    #   resp.asset_model_property_summaries[0].path #=> Array
    #   resp.asset_model_property_summaries[0].path[0].id #=> String
    #   resp.asset_model_property_summaries[0].path[0].name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_asset_model_properties(params = {})
    # @param [Hash] params ({})
    def list_asset_model_properties(params = {}, options = {})
      req = build_request(:list_asset_model_properties, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of summaries of all asset models.
    #
    # @option params [Array<String>] :asset_model_types
    #   The type of asset model. If you don't provide an `assetModelTypes`,
    #   all types of asset models are returned.
    #
    #   * **ASSET\_MODEL** – An asset model that you can use to create assets.
    #     Can't be included as a component in another asset model.
    #
    #   * **COMPONENT\_MODEL** – A reusable component that you can include in
    #     the composite models of other asset models. You can't create assets
    #     directly from this type of asset model.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @option params [String] :asset_model_version
    #   The version alias that specifies the latest or active version of the
    #   asset model. The details are returned in the response. The default
    #   value is `LATEST`. See [ Asset model versions][1] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/model-active-version.html
    #
    # @return [Types::ListAssetModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetModelsResponse#asset_model_summaries #asset_model_summaries} => Array&lt;Types::AssetModelSummary&gt;
    #   * {Types::ListAssetModelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_models({
    #     asset_model_types: ["ASSET_MODEL"], # accepts ASSET_MODEL, COMPONENT_MODEL
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_model_version: "AssetModelVersionFilter",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_summaries #=> Array
    #   resp.asset_model_summaries[0].id #=> String
    #   resp.asset_model_summaries[0].external_id #=> String
    #   resp.asset_model_summaries[0].arn #=> String
    #   resp.asset_model_summaries[0].name #=> String
    #   resp.asset_model_summaries[0].asset_model_type #=> String, one of "ASSET_MODEL", "COMPONENT_MODEL"
    #   resp.asset_model_summaries[0].description #=> String
    #   resp.asset_model_summaries[0].creation_date #=> Time
    #   resp.asset_model_summaries[0].last_update_date #=> Time
    #   resp.asset_model_summaries[0].status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_summaries[0].status.error.message #=> String
    #   resp.asset_model_summaries[0].status.error.details #=> Array
    #   resp.asset_model_summaries[0].status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_model_summaries[0].status.error.details[0].message #=> String
    #   resp.asset_model_summaries[0].version #=> String
    #   resp.next_token #=> String
    #
    # @overload list_asset_models(params = {})
    # @param [Hash] params ({})
    def list_asset_models(params = {}, options = {})
      req = build_request(:list_asset_models, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of properties associated with an asset. If
    # you update properties associated with the model before you finish
    # listing all the properties, you need to start all over again.
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset. This can be either the actual ID in UUID format,
    #   or else `externalId:` followed by the external ID, if it has one. For
    #   more information, see [Referencing objects with external IDs][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request. If
    #   not specified, the default value is 50.
    #
    # @option params [String] :filter
    #   Filters the requested list of asset properties. You can choose one of
    #   the following options:
    #
    #   * `ALL` – The list includes all asset properties for a given asset
    #     model ID.
    #
    #   * `BASE` – The list includes only base asset properties for a given
    #     asset model ID.
    #
    #   Default: `BASE`
    #
    # @return [Types::ListAssetPropertiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetPropertiesResponse#asset_property_summaries #asset_property_summaries} => Array&lt;Types::AssetPropertySummary&gt;
    #   * {Types::ListAssetPropertiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_properties({
    #     asset_id: "CustomID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: "ALL", # accepts ALL, BASE
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_property_summaries #=> Array
    #   resp.asset_property_summaries[0].id #=> String
    #   resp.asset_property_summaries[0].external_id #=> String
    #   resp.asset_property_summaries[0].alias #=> String
    #   resp.asset_property_summaries[0].unit #=> String
    #   resp.asset_property_summaries[0].notification.topic #=> String
    #   resp.asset_property_summaries[0].notification.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.asset_property_summaries[0].asset_composite_model_id #=> String
    #   resp.asset_property_summaries[0].path #=> Array
    #   resp.asset_property_summaries[0].path[0].id #=> String
    #   resp.asset_property_summaries[0].path[0].name #=> String
    #   resp.next_token #=> String
    #
    # @overload list_asset_properties(params = {})
    # @param [Hash] params ({})
    def list_asset_properties(params = {}, options = {})
      req = build_request(:list_asset_properties, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of asset relationships for an asset. You
    # can use this operation to identify an asset's root asset and all
    # associated assets between that asset and its root.
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset. This can be either the actual ID in UUID format,
    #   or else `externalId:` followed by the external ID, if it has one. For
    #   more information, see [Referencing objects with external IDs][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :traversal_type
    #   The type of traversal to use to identify asset relationships. Choose
    #   the following option:
    #
    #   * `PATH_TO_ROOT` – Identify the asset's parent assets up to the root
    #     asset. The asset that you specify in `assetId` is the first result
    #     in the list of `assetRelationshipSummaries`, and the root asset is
    #     the last result.
    #
    #   ^
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    # @return [Types::ListAssetRelationshipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetRelationshipsResponse#asset_relationship_summaries #asset_relationship_summaries} => Array&lt;Types::AssetRelationshipSummary&gt;
    #   * {Types::ListAssetRelationshipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_relationships({
    #     asset_id: "CustomID", # required
    #     traversal_type: "PATH_TO_ROOT", # required, accepts PATH_TO_ROOT
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_relationship_summaries #=> Array
    #   resp.asset_relationship_summaries[0].hierarchy_info.parent_asset_id #=> String
    #   resp.asset_relationship_summaries[0].hierarchy_info.child_asset_id #=> String
    #   resp.asset_relationship_summaries[0].relationship_type #=> String, one of "HIERARCHY"
    #   resp.next_token #=> String
    #
    # @overload list_asset_relationships(params = {})
    # @param [Hash] params ({})
    def list_asset_relationships(params = {}, options = {})
      req = build_request(:list_asset_relationships, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of asset summaries.
    #
    # You can use this operation to do the following:
    #
    # * List assets based on a specific asset model.
    #
    # * List top-level assets.
    #
    # You can't use this operation to list all assets. To retrieve
    # summaries for all of your assets, use [ListAssetModels][1] to get all
    # of your asset model IDs. Then, use ListAssets to get all assets for
    # each asset model.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @option params [String] :asset_model_id
    #   The ID of the asset model by which to filter the list of assets. This
    #   parameter is required if you choose `ALL` for `filter`. This can be
    #   either the actual ID in UUID format, or else `externalId:` followed by
    #   the external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :filter
    #   The filter for the requested list of assets. Choose one of the
    #   following options:
    #
    #   * `ALL` – The list includes all assets for a given asset model ID. The
    #     `assetModelId` parameter is required if you filter by `ALL`.
    #
    #   * `TOP_LEVEL` – The list includes only top-level assets in the asset
    #     hierarchy tree.
    #
    #   Default: `ALL`
    #
    # @return [Types::ListAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetsResponse#asset_summaries #asset_summaries} => Array&lt;Types::AssetSummary&gt;
    #   * {Types::ListAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_assets({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_model_id: "CustomID",
    #     filter: "ALL", # accepts ALL, TOP_LEVEL
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_summaries #=> Array
    #   resp.asset_summaries[0].id #=> String
    #   resp.asset_summaries[0].external_id #=> String
    #   resp.asset_summaries[0].arn #=> String
    #   resp.asset_summaries[0].name #=> String
    #   resp.asset_summaries[0].asset_model_id #=> String
    #   resp.asset_summaries[0].creation_date #=> Time
    #   resp.asset_summaries[0].last_update_date #=> Time
    #   resp.asset_summaries[0].status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_summaries[0].status.error.message #=> String
    #   resp.asset_summaries[0].status.error.details #=> Array
    #   resp.asset_summaries[0].status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_summaries[0].status.error.details[0].message #=> String
    #   resp.asset_summaries[0].hierarchies #=> Array
    #   resp.asset_summaries[0].hierarchies[0].id #=> String
    #   resp.asset_summaries[0].hierarchies[0].external_id #=> String
    #   resp.asset_summaries[0].hierarchies[0].name #=> String
    #   resp.asset_summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @overload list_assets(params = {})
    # @param [Hash] params ({})
    def list_assets(params = {}, options = {})
      req = build_request(:list_assets, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of associated assets.
    #
    # You can use this operation to do the following:
    #
    # * `CHILD` - List all child assets associated to the asset.
    #
    # * `PARENT` - List the asset's parent asset.
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset to query. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :hierarchy_id
    #   (Optional) If you don't provide a `hierarchyId`, all the immediate
    #   assets in the `traversalDirection` will be returned.
    #
    #   The ID of the hierarchy by which child assets are associated to the
    #   asset. (This can be either the actual ID in UUID format, or else
    #   `externalId:` followed by the external ID, if it has one. For more
    #   information, see [Referencing objects with external IDs][1] in the
    #   *IoT SiteWise User Guide*.)
    #
    #   For more information, see [Asset hierarchies][2] in the *IoT SiteWise
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #
    # @option params [String] :traversal_direction
    #   The direction to list associated assets. Choose one of the following
    #   options:
    #
    #   * `CHILD` – The list includes all child assets associated to the
    #     asset.
    #
    #   * `PARENT` – The list includes the asset's parent asset.
    #
    #   Default: `CHILD`
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListAssociatedAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociatedAssetsResponse#asset_summaries #asset_summaries} => Array&lt;Types::AssociatedAssetsSummary&gt;
    #   * {Types::ListAssociatedAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_assets({
    #     asset_id: "CustomID", # required
    #     hierarchy_id: "CustomID",
    #     traversal_direction: "PARENT", # accepts PARENT, CHILD
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_summaries #=> Array
    #   resp.asset_summaries[0].id #=> String
    #   resp.asset_summaries[0].external_id #=> String
    #   resp.asset_summaries[0].arn #=> String
    #   resp.asset_summaries[0].name #=> String
    #   resp.asset_summaries[0].asset_model_id #=> String
    #   resp.asset_summaries[0].creation_date #=> Time
    #   resp.asset_summaries[0].last_update_date #=> Time
    #   resp.asset_summaries[0].status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_summaries[0].status.error.message #=> String
    #   resp.asset_summaries[0].status.error.details #=> Array
    #   resp.asset_summaries[0].status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_summaries[0].status.error.details[0].message #=> String
    #   resp.asset_summaries[0].hierarchies #=> Array
    #   resp.asset_summaries[0].hierarchies[0].id #=> String
    #   resp.asset_summaries[0].hierarchies[0].external_id #=> String
    #   resp.asset_summaries[0].hierarchies[0].name #=> String
    #   resp.asset_summaries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @overload list_associated_assets(params = {})
    # @param [Hash] params ({})
    def list_associated_assets(params = {}, options = {})
      req = build_request(:list_associated_assets, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of bulk import job requests. For more
    # information, see [List bulk import jobs (CLI)][1] in the *IoT SiteWise
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ListBulkImportJobs.html
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    # @option params [String] :filter
    #   You can use a filter to select the bulk import jobs that you want to
    #   retrieve.
    #
    # @return [Types::ListBulkImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBulkImportJobsResponse#job_summaries #job_summaries} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListBulkImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bulk_import_jobs({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filter: "ALL", # accepts ALL, PENDING, RUNNING, CANCELLED, FAILED, COMPLETED_WITH_FAILURES, COMPLETED
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summaries #=> Array
    #   resp.job_summaries[0].id #=> String
    #   resp.job_summaries[0].name #=> String
    #   resp.job_summaries[0].status #=> String, one of "PENDING", "CANCELLED", "RUNNING", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #   resp.next_token #=> String
    #
    # @overload list_bulk_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_bulk_import_jobs(params = {}, options = {})
      req = build_request(:list_bulk_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of composition relationships for an asset
    # model of type `COMPONENT_MODEL`.
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model. This can be either the actual ID in UUID
    #   format, or else `externalId:` followed by the external ID, if it has
    #   one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListCompositionRelationshipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCompositionRelationshipsResponse#composition_relationship_summaries #composition_relationship_summaries} => Array&lt;Types::CompositionRelationshipSummary&gt;
    #   * {Types::ListCompositionRelationshipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_composition_relationships({
    #     asset_model_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.composition_relationship_summaries #=> Array
    #   resp.composition_relationship_summaries[0].asset_model_id #=> String
    #   resp.composition_relationship_summaries[0].asset_model_composite_model_id #=> String
    #   resp.composition_relationship_summaries[0].asset_model_composite_model_type #=> String
    #   resp.next_token #=> String
    #
    # @overload list_composition_relationships(params = {})
    # @param [Hash] params ({})
    def list_composition_relationships(params = {}, options = {})
      req = build_request(:list_composition_relationships, params)
      req.send_request(options)
    end

    # Lists all data binding usages for computation models. This allows to
    # identify where specific data bindings are being utilized across the
    # computation models. This track dependencies between data sources and
    # computation models.
    #
    # @option params [required, Types::DataBindingValueFilter] :data_binding_value_filter
    #   A filter used to limit the returned data binding usages based on
    #   specific data binding values. You can filter by asset, asset model,
    #   asset property, or asset model property to find all computation models
    #   using these specific data sources.
    #
    # @option params [String] :next_token
    #   The token used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned for each paginated request.
    #
    # @return [Types::ListComputationModelDataBindingUsagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComputationModelDataBindingUsagesResponse#data_binding_usage_summaries #data_binding_usage_summaries} => Array&lt;Types::ComputationModelDataBindingUsageSummary&gt;
    #   * {Types::ListComputationModelDataBindingUsagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_computation_model_data_binding_usages({
    #     data_binding_value_filter: { # required
    #       asset: {
    #         asset_id: "ID", # required
    #       },
    #       asset_model: {
    #         asset_model_id: "ID", # required
    #       },
    #       asset_property: {
    #         asset_id: "ID", # required
    #         property_id: "ID", # required
    #       },
    #       asset_model_property: {
    #         asset_model_id: "ID", # required
    #         property_id: "ID", # required
    #       },
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.data_binding_usage_summaries #=> Array
    #   resp.data_binding_usage_summaries[0].computation_model_ids #=> Array
    #   resp.data_binding_usage_summaries[0].computation_model_ids[0] #=> String
    #   resp.data_binding_usage_summaries[0].matched_data_binding.value.asset_model_property.asset_model_id #=> String
    #   resp.data_binding_usage_summaries[0].matched_data_binding.value.asset_model_property.property_id #=> String
    #   resp.data_binding_usage_summaries[0].matched_data_binding.value.asset_property.asset_id #=> String
    #   resp.data_binding_usage_summaries[0].matched_data_binding.value.asset_property.property_id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_computation_model_data_binding_usages(params = {})
    # @param [Hash] params ({})
    def list_computation_model_data_binding_usages(params = {}, options = {})
      req = build_request(:list_computation_model_data_binding_usages, params)
      req.send_request(options)
    end

    # Lists all distinct resources that are resolved from the executed
    # actions of the computation model.
    #
    # @option params [required, String] :computation_model_id
    #   The ID of the computation model for which to list resolved resources.
    #
    # @option params [String] :next_token
    #   The token used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned for each paginated request.
    #
    # @return [Types::ListComputationModelResolveToResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComputationModelResolveToResourcesResponse#computation_model_resolve_to_resource_summaries #computation_model_resolve_to_resource_summaries} => Array&lt;Types::ComputationModelResolveToResourceSummary&gt;
    #   * {Types::ListComputationModelResolveToResourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_computation_model_resolve_to_resources({
    #     computation_model_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.computation_model_resolve_to_resource_summaries #=> Array
    #   resp.computation_model_resolve_to_resource_summaries[0].resolve_to.asset_id #=> String
    #   resp.next_token #=> String
    #
    # @overload list_computation_model_resolve_to_resources(params = {})
    # @param [Hash] params ({})
    def list_computation_model_resolve_to_resources(params = {}, options = {})
      req = build_request(:list_computation_model_resolve_to_resources, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of summaries of all computation models.
    #
    # @option params [String] :computation_model_type
    #   The type of computation model. If a `computationModelType` is not
    #   provided, all types of computation models are returned.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    # @return [Types::ListComputationModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComputationModelsResponse#computation_model_summaries #computation_model_summaries} => Array&lt;Types::ComputationModelSummary&gt;
    #   * {Types::ListComputationModelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_computation_models({
    #     computation_model_type: "ANOMALY_DETECTION", # accepts ANOMALY_DETECTION
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.computation_model_summaries #=> Array
    #   resp.computation_model_summaries[0].id #=> String
    #   resp.computation_model_summaries[0].arn #=> String
    #   resp.computation_model_summaries[0].name #=> String
    #   resp.computation_model_summaries[0].description #=> String
    #   resp.computation_model_summaries[0].type #=> String, one of "ANOMALY_DETECTION"
    #   resp.computation_model_summaries[0].creation_date #=> Time
    #   resp.computation_model_summaries[0].last_update_date #=> Time
    #   resp.computation_model_summaries[0].status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.computation_model_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.computation_model_summaries[0].status.error.message #=> String
    #   resp.computation_model_summaries[0].status.error.details #=> Array
    #   resp.computation_model_summaries[0].status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.computation_model_summaries[0].status.error.details[0].message #=> String
    #   resp.computation_model_summaries[0].version #=> String
    #   resp.next_token #=> String
    #
    # @overload list_computation_models(params = {})
    # @param [Hash] params ({})
    def list_computation_models(params = {}, options = {})
      req = build_request(:list_computation_models, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of dashboards for an IoT SiteWise Monitor
    # project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListDashboardsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDashboardsResponse#dashboard_summaries #dashboard_summaries} => Array&lt;Types::DashboardSummary&gt;
    #   * {Types::ListDashboardsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_dashboards({
    #     project_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dashboard_summaries #=> Array
    #   resp.dashboard_summaries[0].id #=> String
    #   resp.dashboard_summaries[0].name #=> String
    #   resp.dashboard_summaries[0].description #=> String
    #   resp.dashboard_summaries[0].creation_date #=> Time
    #   resp.dashboard_summaries[0].last_update_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_dashboards(params = {})
    # @param [Hash] params ({})
    def list_dashboards(params = {}, options = {})
      req = build_request(:list_dashboards, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of datasets for a specific target resource.
    #
    # @option params [required, String] :source_type
    #   The type of data source for the dataset.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    # @return [Types::ListDatasetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDatasetsResponse#dataset_summaries #dataset_summaries} => Array&lt;Types::DatasetSummary&gt;
    #   * {Types::ListDatasetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_datasets({
    #     source_type: "KENDRA", # required, accepts KENDRA
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_summaries #=> Array
    #   resp.dataset_summaries[0].id #=> String
    #   resp.dataset_summaries[0].arn #=> String
    #   resp.dataset_summaries[0].name #=> String
    #   resp.dataset_summaries[0].description #=> String
    #   resp.dataset_summaries[0].creation_date #=> Time
    #   resp.dataset_summaries[0].last_update_date #=> Time
    #   resp.dataset_summaries[0].status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.dataset_summaries[0].status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.dataset_summaries[0].status.error.message #=> String
    #   resp.dataset_summaries[0].status.error.details #=> Array
    #   resp.dataset_summaries[0].status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.dataset_summaries[0].status.error.details[0].message #=> String
    #   resp.next_token #=> String
    #
    # @overload list_datasets(params = {})
    # @param [Hash] params ({})
    def list_datasets(params = {}, options = {})
      req = build_request(:list_datasets, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of summaries of all executions.
    #
    # @option params [required, String] :target_resource_type
    #   The type of the target resource.
    #
    # @option params [required, String] :target_resource_id
    #   The ID of the target resource.
    #
    # @option params [String] :resolve_to_resource_type
    #   The type of the resolved resource.
    #
    # @option params [String] :resolve_to_resource_id
    #   The ID of the resolved resource.
    #
    # @option params [String] :next_token
    #   The token used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results returned for each paginated request.
    #
    # @option params [String] :action_type
    #   The type of action exectued.
    #
    # @return [Types::ListExecutionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExecutionsResponse#execution_summaries #execution_summaries} => Array&lt;Types::ExecutionSummary&gt;
    #   * {Types::ListExecutionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions({
    #     target_resource_type: "ASSET", # required, accepts ASSET, COMPUTATION_MODEL
    #     target_resource_id: "ID", # required
    #     resolve_to_resource_type: "ASSET", # accepts ASSET
    #     resolve_to_resource_id: "ID",
    #     next_token: "NextToken",
    #     max_results: 1,
    #     action_type: "Name",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_summaries #=> Array
    #   resp.execution_summaries[0].execution_id #=> String
    #   resp.execution_summaries[0].action_type #=> String
    #   resp.execution_summaries[0].target_resource.asset_id #=> String
    #   resp.execution_summaries[0].target_resource.computation_model_id #=> String
    #   resp.execution_summaries[0].target_resource_version #=> String
    #   resp.execution_summaries[0].resolve_to.asset_id #=> String
    #   resp.execution_summaries[0].execution_start_time #=> Time
    #   resp.execution_summaries[0].execution_end_time #=> Time
    #   resp.execution_summaries[0].execution_status.state #=> String, one of "RUNNING", "COMPLETED", "FAILED"
    #   resp.execution_summaries[0].execution_entity_version #=> String
    #   resp.next_token #=> String
    #
    # @overload list_executions(params = {})
    # @param [Hash] params ({})
    def list_executions(params = {}, options = {})
      req = build_request(:list_executions, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of gateways.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListGatewaysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGatewaysResponse#gateway_summaries #gateway_summaries} => Array&lt;Types::GatewaySummary&gt;
    #   * {Types::ListGatewaysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.gateway_summaries #=> Array
    #   resp.gateway_summaries[0].gateway_id #=> String
    #   resp.gateway_summaries[0].gateway_name #=> String
    #   resp.gateway_summaries[0].gateway_platform.greengrass.group_arn #=> String
    #   resp.gateway_summaries[0].gateway_platform.greengrass_v2.core_device_thing_name #=> String
    #   resp.gateway_summaries[0].gateway_platform.greengrass_v2.core_device_operating_system #=> String, one of "LINUX_AARCH64", "LINUX_AMD64", "WINDOWS_AMD64"
    #   resp.gateway_summaries[0].gateway_platform.siemens_ie.iot_core_thing_name #=> String
    #   resp.gateway_summaries[0].gateway_version #=> String
    #   resp.gateway_summaries[0].gateway_capability_summaries #=> Array
    #   resp.gateway_summaries[0].gateway_capability_summaries[0].capability_namespace #=> String
    #   resp.gateway_summaries[0].gateway_capability_summaries[0].capability_sync_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN", "NOT_APPLICABLE"
    #   resp.gateway_summaries[0].creation_date #=> Time
    #   resp.gateway_summaries[0].last_update_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_gateways(params = {})
    # @param [Hash] params ({})
    def list_gateways(params = {}, options = {})
      req = build_request(:list_gateways, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of IoT SiteWise Monitor portals.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListPortalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortalsResponse#portal_summaries #portal_summaries} => Array&lt;Types::PortalSummary&gt;
    #   * {Types::ListPortalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portals({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_summaries #=> Array
    #   resp.portal_summaries[0].id #=> String
    #   resp.portal_summaries[0].name #=> String
    #   resp.portal_summaries[0].description #=> String
    #   resp.portal_summaries[0].start_url #=> String
    #   resp.portal_summaries[0].creation_date #=> Time
    #   resp.portal_summaries[0].last_update_date #=> Time
    #   resp.portal_summaries[0].role_arn #=> String
    #   resp.portal_summaries[0].status.state #=> String, one of "CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_summaries[0].status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_summaries[0].status.error.message #=> String
    #   resp.portal_summaries[0].portal_type #=> String, one of "SITEWISE_PORTAL_V1", "SITEWISE_PORTAL_V2"
    #   resp.next_token #=> String
    #
    # @overload list_portals(params = {})
    # @param [Hash] params ({})
    def list_portals(params = {}, options = {})
      req = build_request(:list_portals, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of assets associated with an IoT SiteWise
    # Monitor project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListProjectAssetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectAssetsResponse#asset_ids #asset_ids} => Array&lt;String&gt;
    #   * {Types::ListProjectAssetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_project_assets({
    #     project_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_ids #=> Array
    #   resp.asset_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_project_assets(params = {})
    # @param [Hash] params ({})
    def list_project_assets(params = {}, options = {})
      req = build_request(:list_project_assets, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of projects for an IoT SiteWise Monitor
    # portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    #   Default: 50
    #
    # @return [Types::ListProjectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResponse#project_summaries #project_summaries} => Array&lt;Types::ProjectSummary&gt;
    #   * {Types::ListProjectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     portal_id: "ID", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.project_summaries #=> Array
    #   resp.project_summaries[0].id #=> String
    #   resp.project_summaries[0].name #=> String
    #   resp.project_summaries[0].description #=> String
    #   resp.project_summaries[0].creation_date #=> Time
    #   resp.project_summaries[0].last_update_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Retrieves the list of tags for an IoT SiteWise resource.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of time series (data streams).
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return for each paginated request.
    #
    # @option params [String] :asset_id
    #   The ID of the asset in which the asset property was created. This can
    #   be either the actual ID in UUID format, or else `externalId:` followed
    #   by the external ID, if it has one. For more information, see
    #   [Referencing objects with external IDs][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :alias_prefix
    #   The alias prefix of the time series.
    #
    # @option params [String] :time_series_type
    #   The type of the time series. The time series type can be one of the
    #   following values:
    #
    #   * `ASSOCIATED` – The time series is associated with an asset property.
    #
    #   * `DISASSOCIATED` – The time series isn't associated with any asset
    #     property.
    #
    # @return [Types::ListTimeSeriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTimeSeriesResponse#time_series_summaries #time_series_summaries} => Array&lt;Types::TimeSeriesSummary&gt;
    #   * {Types::ListTimeSeriesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_time_series({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     asset_id: "CustomID",
    #     alias_prefix: "PropertyAlias",
    #     time_series_type: "ASSOCIATED", # accepts ASSOCIATED, DISASSOCIATED
    #   })
    #
    # @example Response structure
    #
    #   resp.time_series_summaries #=> Array
    #   resp.time_series_summaries[0].asset_id #=> String
    #   resp.time_series_summaries[0].property_id #=> String
    #   resp.time_series_summaries[0].alias #=> String
    #   resp.time_series_summaries[0].time_series_id #=> String
    #   resp.time_series_summaries[0].data_type #=> String, one of "STRING", "INTEGER", "DOUBLE", "BOOLEAN", "STRUCT"
    #   resp.time_series_summaries[0].data_type_spec #=> String
    #   resp.time_series_summaries[0].time_series_creation_date #=> Time
    #   resp.time_series_summaries[0].time_series_last_update_date #=> Time
    #   resp.time_series_summaries[0].time_series_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_time_series(params = {})
    # @param [Hash] params ({})
    def list_time_series(params = {}, options = {})
      req = build_request(:list_time_series, params)
      req.send_request(options)
    end

    # Sets the default encryption configuration for the Amazon Web Services
    # account. For more information, see [Key management][1] in the *IoT
    # SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html
    #
    # @option params [required, String] :encryption_type
    #   The type of encryption used for the encryption configuration.
    #
    # @option params [String] :kms_key_id
    #   The Key ID of the customer managed key used for KMS encryption. This
    #   is required if you use `KMS_BASED_ENCRYPTION`.
    #
    # @return [Types::PutDefaultEncryptionConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDefaultEncryptionConfigurationResponse#encryption_type #encryption_type} => String
    #   * {Types::PutDefaultEncryptionConfigurationResponse#kms_key_arn #kms_key_arn} => String
    #   * {Types::PutDefaultEncryptionConfigurationResponse#configuration_status #configuration_status} => Types::ConfigurationStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_default_encryption_configuration({
    #     encryption_type: "SITEWISE_DEFAULT_ENCRYPTION", # required, accepts SITEWISE_DEFAULT_ENCRYPTION, KMS_BASED_ENCRYPTION
    #     kms_key_id: "KmsKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.encryption_type #=> String, one of "SITEWISE_DEFAULT_ENCRYPTION", "KMS_BASED_ENCRYPTION"
    #   resp.kms_key_arn #=> String
    #   resp.configuration_status.state #=> String, one of "ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.configuration_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.configuration_status.error.message #=> String
    #
    # @overload put_default_encryption_configuration(params = {})
    # @param [Hash] params ({})
    def put_default_encryption_configuration(params = {}, options = {})
      req = build_request(:put_default_encryption_configuration, params)
      req.send_request(options)
    end

    # Sets logging options for IoT SiteWise.
    #
    # @option params [required, Types::LoggingOptions] :logging_options
    #   The logging options to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_options({
    #     logging_options: { # required
    #       level: "ERROR", # required, accepts ERROR, INFO, OFF
    #     },
    #   })
    #
    # @overload put_logging_options(params = {})
    # @param [Hash] params ({})
    def put_logging_options(params = {}, options = {})
      req = build_request(:put_logging_options, params)
      req.send_request(options)
    end

    # Configures storage settings for IoT SiteWise.
    #
    # @option params [required, String] :storage_type
    #   The storage tier that you specified for your data. The `storageType`
    #   parameter can be one of the following values:
    #
    #   * `SITEWISE_DEFAULT_STORAGE` – IoT SiteWise saves your data into the
    #     hot tier. The hot tier is a service-managed database.
    #
    #   * `MULTI_LAYER_STORAGE` – IoT SiteWise saves your data in both the
    #     cold tier and the hot tier. The cold tier is a customer-managed
    #     Amazon S3 bucket.
    #
    # @option params [Types::MultiLayerStorage] :multi_layer_storage
    #   Identifies a storage destination. If you specified
    #   `MULTI_LAYER_STORAGE` for the storage type, you must specify a
    #   `MultiLayerStorage` object.
    #
    # @option params [String] :disassociated_data_storage
    #   Contains the storage configuration for time series (data streams) that
    #   aren't associated with asset properties. The
    #   `disassociatedDataStorage` can be one of the following values:
    #
    #   * `ENABLED` – IoT SiteWise accepts time series that aren't associated
    #     with asset properties.
    #
    #     After the `disassociatedDataStorage` is enabled, you can't disable
    #     it.
    #
    #   * `DISABLED` – IoT SiteWise doesn't accept time series (data streams)
    #     that aren't associated with asset properties.
    #
    #   For more information, see [Data streams][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-streams.html
    #
    # @option params [Types::RetentionPeriod] :retention_period
    #   The number of days your data is kept in the hot tier. By default, your
    #   data is kept indefinitely in the hot tier.
    #
    # @option params [String] :warm_tier
    #   A service managed storage tier optimized for analytical queries. It
    #   stores periodically uploaded, buffered and historical data ingested
    #   with the CreaeBulkImportJob API.
    #
    # @option params [Types::WarmTierRetentionPeriod] :warm_tier_retention_period
    #   Set this period to specify how long your data is stored in the warm
    #   tier before it is deleted. You can set this only if cold tier is
    #   enabled.
    #
    # @option params [Boolean] :disallow_ingest_null_na_n
    #   Describes the configuration for ingesting NULL and NaN data. By
    #   default the feature is allowed. The feature is disallowed if the value
    #   is `true`.
    #
    # @return [Types::PutStorageConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutStorageConfigurationResponse#storage_type #storage_type} => String
    #   * {Types::PutStorageConfigurationResponse#multi_layer_storage #multi_layer_storage} => Types::MultiLayerStorage
    #   * {Types::PutStorageConfigurationResponse#disassociated_data_storage #disassociated_data_storage} => String
    #   * {Types::PutStorageConfigurationResponse#retention_period #retention_period} => Types::RetentionPeriod
    #   * {Types::PutStorageConfigurationResponse#configuration_status #configuration_status} => Types::ConfigurationStatus
    #   * {Types::PutStorageConfigurationResponse#warm_tier #warm_tier} => String
    #   * {Types::PutStorageConfigurationResponse#warm_tier_retention_period #warm_tier_retention_period} => Types::WarmTierRetentionPeriod
    #   * {Types::PutStorageConfigurationResponse#disallow_ingest_null_na_n #disallow_ingest_null_na_n} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_storage_configuration({
    #     storage_type: "SITEWISE_DEFAULT_STORAGE", # required, accepts SITEWISE_DEFAULT_STORAGE, MULTI_LAYER_STORAGE
    #     multi_layer_storage: {
    #       customer_managed_s3_storage: { # required
    #         s3_resource_arn: "ARN", # required
    #         role_arn: "ARN", # required
    #       },
    #     },
    #     disassociated_data_storage: "ENABLED", # accepts ENABLED, DISABLED
    #     retention_period: {
    #       number_of_days: 1,
    #       unlimited: false,
    #     },
    #     warm_tier: "ENABLED", # accepts ENABLED, DISABLED
    #     warm_tier_retention_period: {
    #       number_of_days: 1,
    #       unlimited: false,
    #     },
    #     disallow_ingest_null_na_n: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_type #=> String, one of "SITEWISE_DEFAULT_STORAGE", "MULTI_LAYER_STORAGE"
    #   resp.multi_layer_storage.customer_managed_s3_storage.s3_resource_arn #=> String
    #   resp.multi_layer_storage.customer_managed_s3_storage.role_arn #=> String
    #   resp.disassociated_data_storage #=> String, one of "ENABLED", "DISABLED"
    #   resp.retention_period.number_of_days #=> Integer
    #   resp.retention_period.unlimited #=> Boolean
    #   resp.configuration_status.state #=> String, one of "ACTIVE", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"
    #   resp.configuration_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.configuration_status.error.message #=> String
    #   resp.warm_tier #=> String, one of "ENABLED", "DISABLED"
    #   resp.warm_tier_retention_period.number_of_days #=> Integer
    #   resp.warm_tier_retention_period.unlimited #=> Boolean
    #   resp.disallow_ingest_null_na_n #=> Boolean
    #
    # @overload put_storage_configuration(params = {})
    # @param [Hash] params ({})
    def put_storage_configuration(params = {}, options = {})
      req = build_request(:put_storage_configuration, params)
      req.send_request(options)
    end

    # Adds tags to an IoT SiteWise resource. If a tag already exists for the
    # resource, this operation updates the tag's value.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource to tag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of key-value pairs that contain metadata for the resource. For
    #   more information, see [Tagging your IoT SiteWise resources][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from an IoT SiteWise resource.
    #
    # @option params [required, String] :resource_arn
    #   The [ARN][1] of the resource to untag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys for tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing access policy that specifies an identity's access
    # to an IoT SiteWise Monitor portal or project resource.
    #
    # @option params [required, String] :access_policy_id
    #   The ID of the access policy.
    #
    # @option params [required, Types::Identity] :access_policy_identity
    #   The identity for this access policy. Choose an IAM Identity Center
    #   user, an IAM Identity Center group, or an IAM user.
    #
    # @option params [required, Types::Resource] :access_policy_resource
    #   The IoT SiteWise Monitor resource for this access policy. Choose
    #   either a portal or a project.
    #
    # @option params [required, String] :access_policy_permission
    #   The permission level for this access policy. Note that a project
    #   `ADMINISTRATOR` is also known as a project owner.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_policy({
    #     access_policy_id: "ID", # required
    #     access_policy_identity: { # required
    #       user: {
    #         id: "IdentityId", # required
    #       },
    #       group: {
    #         id: "IdentityId", # required
    #       },
    #       iam_user: {
    #         arn: "IamArn", # required
    #       },
    #       iam_role: {
    #         arn: "IamArn", # required
    #       },
    #     },
    #     access_policy_resource: { # required
    #       portal: {
    #         id: "ID", # required
    #       },
    #       project: {
    #         id: "ID", # required
    #       },
    #     },
    #     access_policy_permission: "ADMINISTRATOR", # required, accepts ADMINISTRATOR, VIEWER
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_access_policy(params = {})
    # @param [Hash] params ({})
    def update_access_policy(params = {}, options = {})
      req = build_request(:update_access_policy, params)
      req.send_request(options)
    end

    # Updates an asset's name. For more information, see [Updating assets
    # and models][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset to update. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if it
    #   has one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :asset_external_id
    #   An external ID to assign to the asset. The asset must not already have
    #   an external ID. The external ID must be unique within your Amazon Web
    #   Services account. For more information, see [Using external IDs][1] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #
    # @option params [required, String] :asset_name
    #   A friendly name for the asset.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :asset_description
    #   A description for the asset.
    #
    # @return [Types::UpdateAssetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssetResponse#asset_status #asset_status} => Types::AssetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset({
    #     asset_id: "CustomID", # required
    #     asset_external_id: "ExternalId",
    #     asset_name: "Name", # required
    #     client_token: "ClientToken",
    #     asset_description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.asset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_status.error.message #=> String
    #   resp.asset_status.error.details #=> Array
    #   resp.asset_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_status.error.details[0].message #=> String
    #
    # @overload update_asset(params = {})
    # @param [Hash] params ({})
    def update_asset(params = {}, options = {})
      req = build_request(:update_asset, params)
      req.send_request(options)
    end

    # Updates an asset model and all of the assets that were created from
    # the model. Each asset created from the model inherits the updated
    # asset model's property and hierarchy definitions. For more
    # information, see [Updating assets and models][1] in the *IoT SiteWise
    # User Guide*.
    #
    # If you remove a property from an asset model, IoT SiteWise deletes all
    # previous data for that property. You can’t change the type or data
    # type of an existing property.
    #
    #  To replace an existing asset model property with a new one with the
    # same `name`, do the following:
    #
    #  1.  Submit an `UpdateAssetModel` request with the entire existing
    #     property removed.
    #
    # 2.  Submit a second `UpdateAssetModel` request that includes the new
    #     property. The new asset property will have the same `name` as the
    #     previous one and IoT SiteWise will generate a new unique `id`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model to update. This can be either the actual ID
    #   in UUID format, or else `externalId:` followed by the external ID, if
    #   it has one. For more information, see [Referencing objects with
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :asset_model_external_id
    #   An external ID to assign to the asset model. The asset model must not
    #   already have an external ID. The external ID must be unique within
    #   your Amazon Web Services account. For more information, see [Using
    #   external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-ids
    #
    # @option params [required, String] :asset_model_name
    #   A unique name for the asset model.
    #
    # @option params [String] :asset_model_description
    #   A description for the asset model.
    #
    # @option params [Array<Types::AssetModelProperty>] :asset_model_properties
    #   The updated property definitions of the asset model. For more
    #   information, see [Asset properties][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #   You can specify up to 200 properties per asset model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [Array<Types::AssetModelHierarchy>] :asset_model_hierarchies
    #   The updated hierarchy definitions of the asset model. Each hierarchy
    #   specifies an asset model whose assets can be children of any other
    #   assets created from this asset model. For more information, see [Asset
    #   hierarchies][1] in the *IoT SiteWise User Guide*.
    #
    #   You can specify up to 10 hierarchies per asset model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [Array<Types::AssetModelCompositeModel>] :asset_model_composite_models
    #   The composite models that are part of this asset model. It groups
    #   properties (such as attributes, measurements, transforms, and metrics)
    #   and child composite models that model parts of your industrial
    #   equipment. Each composite model has a type that defines the properties
    #   that the composite model supports. Use composite models to define
    #   alarms on this asset model.
    #
    #   <note markdown="1"> When creating custom composite models, you need to use
    #   [CreateAssetModelCompositeModel][1]. For more information, see
    #   [Creating custom composite models (Components)][2] in the *IoT
    #   SiteWise User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModelCompositeModel.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-custom-composite-models.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :if_match
    #   The expected current entity tag (ETag) for the asset model’s latest or
    #   active version (specified using `matchForVersionType`). The update
    #   request is rejected if the tag does not match the latest or active
    #   version's current entity tag. See [Optimistic locking for asset model
    #   writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #
    # @option params [String] :if_none_match
    #   Accepts ***** to reject the update request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists for
    #   the asset model.
    #
    # @option params [String] :match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used in
    #   conjunction with `If-Match` or `If-None-Match` headers to determine
    #   the target ETag for the update operation.
    #
    # @return [Types::UpdateAssetModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssetModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset_model({
    #     asset_model_id: "CustomID", # required
    #     asset_model_external_id: "ExternalId",
    #     asset_model_name: "Name", # required
    #     asset_model_description: "Description",
    #     asset_model_properties: [
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue",
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED", # required, accepts DISABLED, ENABLED
    #               },
    #             },
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name",
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #               forwarding_config: {
    #                 state: "DISABLED", # required, accepts DISABLED, ENABLED
    #               },
    #             },
    #           },
    #           metric: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name",
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset",
    #               },
    #             },
    #             processing_config: {
    #               compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #             },
    #           },
    #         },
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name",
    #           },
    #         ],
    #       },
    #     ],
    #     asset_model_hierarchies: [
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         child_asset_model_id: "CustomID", # required
    #       },
    #     ],
    #     asset_model_composite_models: [
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         type: "Name", # required
    #         properties: [
    #           {
    #             id: "CustomID",
    #             external_id: "ExternalId",
    #             name: "Name", # required
    #             data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
    #             data_type_spec: "Name",
    #             unit: "PropertyUnit",
    #             type: { # required
    #               attribute: {
    #                 default_value: "DefaultValue",
    #               },
    #               measurement: {
    #                 processing_config: {
    #                   forwarding_config: { # required
    #                     state: "DISABLED", # required, accepts DISABLED, ENABLED
    #                   },
    #                 },
    #               },
    #               transform: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name",
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #                 processing_config: {
    #                   compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #                   forwarding_config: {
    #                     state: "DISABLED", # required, accepts DISABLED, ENABLED
    #                   },
    #                 },
    #               },
    #               metric: {
    #                 expression: "Expression", # required
    #                 variables: [ # required
    #                   {
    #                     name: "VariableName", # required
    #                     value: { # required
    #                       property_id: "Macro",
    #                       hierarchy_id: "Macro",
    #                       property_path: [
    #                         {
    #                           id: "ID",
    #                           name: "Name",
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #                 window: { # required
    #                   tumbling: {
    #                     interval: "Interval", # required
    #                     offset: "Offset",
    #                   },
    #                 },
    #                 processing_config: {
    #                   compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #                 },
    #               },
    #             },
    #             path: [
    #               {
    #                 id: "ID",
    #                 name: "Name",
    #               },
    #             ],
    #           },
    #         ],
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST", # accepts LATEST, ACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #   resp.asset_model_status.error.details #=> Array
    #   resp.asset_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_model_status.error.details[0].message #=> String
    #
    # @overload update_asset_model(params = {})
    # @param [Hash] params ({})
    def update_asset_model(params = {}, options = {})
      req = build_request(:update_asset_model, params)
      req.send_request(options)
    end

    # Updates a composite model and all of the assets that were created from
    # the model. Each asset created from the model inherits the updated
    # asset model's property and hierarchy definitions. For more
    # information, see [Updating assets and models][1] in the *IoT SiteWise
    # User Guide*.
    #
    # If you remove a property from a composite asset model, IoT SiteWise
    # deletes all previous data for that property. You can’t change the type
    # or data type of an existing property.
    #
    #  To replace an existing composite asset model property with a new one
    # with the same `name`, do the following:
    #
    #  1.  Submit an `UpdateAssetModelCompositeModel` request with the
    # entire
    #     existing property removed.
    #
    # 2.  Submit a second `UpdateAssetModelCompositeModel` request that
    #     includes the new property. The new asset property will have the
    #     same `name` as the previous one and IoT SiteWise will generate a
    #     new unique `id`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html
    #
    # @option params [required, String] :asset_model_id
    #   The ID of the asset model, in UUID format.
    #
    # @option params [required, String] :asset_model_composite_model_id
    #   The ID of a composite model on this asset model.
    #
    # @option params [String] :asset_model_composite_model_external_id
    #   An external ID to assign to the asset model. You can only set the
    #   external ID of the asset model if it wasn't set when it was created,
    #   or you're setting it to the exact same thing as when it was created.
    #
    # @option params [String] :asset_model_composite_model_description
    #   A description for the composite model.
    #
    # @option params [required, String] :asset_model_composite_model_name
    #   A unique name for the composite model.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::AssetModelProperty>] :asset_model_composite_model_properties
    #   The property definitions of the composite model. For more information,
    #   see [ Inline custom composite models][1] in the *IoT SiteWise User
    #   Guide*.
    #
    #   You can specify up to 200 properties per composite model. For more
    #   information, see [Quotas][2] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/custom-composite-models.html#inline-composite-models
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html
    #
    # @option params [String] :if_match
    #   The expected current entity tag (ETag) for the asset model’s latest or
    #   active version (specified using `matchForVersionType`). The update
    #   request is rejected if the tag does not match the latest or active
    #   version's current entity tag. See [Optimistic locking for asset model
    #   writes][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/opt-locking-for-model.html
    #
    # @option params [String] :if_none_match
    #   Accepts ***** to reject the update request if an active version
    #   (specified using `matchForVersionType` as `ACTIVE`) already exists for
    #   the asset model.
    #
    # @option params [String] :match_for_version_type
    #   Specifies the asset model version type (`LATEST` or `ACTIVE`) used in
    #   conjunction with `If-Match` or `If-None-Match` headers to determine
    #   the target ETag for the update operation.
    #
    # @return [Types::UpdateAssetModelCompositeModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssetModelCompositeModelResponse#asset_model_composite_model_path #asset_model_composite_model_path} => Array&lt;Types::AssetModelCompositeModelPathSegment&gt;
    #   * {Types::UpdateAssetModelCompositeModelResponse#asset_model_status #asset_model_status} => Types::AssetModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset_model_composite_model({
    #     asset_model_id: "CustomID", # required
    #     asset_model_composite_model_id: "CustomID", # required
    #     asset_model_composite_model_external_id: "ExternalId",
    #     asset_model_composite_model_description: "Description",
    #     asset_model_composite_model_name: "Name", # required
    #     client_token: "ClientToken",
    #     asset_model_composite_model_properties: [
    #       {
    #         id: "CustomID",
    #         external_id: "ExternalId",
    #         name: "Name", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, DOUBLE, BOOLEAN, STRUCT
    #         data_type_spec: "Name",
    #         unit: "PropertyUnit",
    #         type: { # required
    #           attribute: {
    #             default_value: "DefaultValue",
    #           },
    #           measurement: {
    #             processing_config: {
    #               forwarding_config: { # required
    #                 state: "DISABLED", # required, accepts DISABLED, ENABLED
    #               },
    #             },
    #           },
    #           transform: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name",
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             processing_config: {
    #               compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #               forwarding_config: {
    #                 state: "DISABLED", # required, accepts DISABLED, ENABLED
    #               },
    #             },
    #           },
    #           metric: {
    #             expression: "Expression", # required
    #             variables: [ # required
    #               {
    #                 name: "VariableName", # required
    #                 value: { # required
    #                   property_id: "Macro",
    #                   hierarchy_id: "Macro",
    #                   property_path: [
    #                     {
    #                       id: "ID",
    #                       name: "Name",
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #             window: { # required
    #               tumbling: {
    #                 interval: "Interval", # required
    #                 offset: "Offset",
    #               },
    #             },
    #             processing_config: {
    #               compute_location: "EDGE", # required, accepts EDGE, CLOUD
    #             },
    #           },
    #         },
    #         path: [
    #           {
    #             id: "ID",
    #             name: "Name",
    #           },
    #         ],
    #       },
    #     ],
    #     if_match: "ETag",
    #     if_none_match: "SelectAll",
    #     match_for_version_type: "LATEST", # accepts LATEST, ACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.asset_model_composite_model_path #=> Array
    #   resp.asset_model_composite_model_path[0].id #=> String
    #   resp.asset_model_composite_model_path[0].name #=> String
    #   resp.asset_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "PROPAGATING", "DELETING", "FAILED"
    #   resp.asset_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.asset_model_status.error.message #=> String
    #   resp.asset_model_status.error.details #=> Array
    #   resp.asset_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.asset_model_status.error.details[0].message #=> String
    #
    # @overload update_asset_model_composite_model(params = {})
    # @param [Hash] params ({})
    def update_asset_model_composite_model(params = {}, options = {})
      req = build_request(:update_asset_model_composite_model, params)
      req.send_request(options)
    end

    # Updates an asset property's alias and notification state.
    #
    # This operation overwrites the property's existing alias and
    # notification state. To keep your existing property's alias or
    # notification state, you must include the existing values in the
    # UpdateAssetProperty request. For more information, see
    # [DescribeAssetProperty][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html
    #
    # @option params [required, String] :asset_id
    #   The ID of the asset to be updated. This can be either the actual ID in
    #   UUID format, or else `externalId:` followed by the external ID, if it
    #   has one. For more information, see [Referencing objects with external
    #   IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [required, String] :property_id
    #   The ID of the asset property to be updated. This can be either the
    #   actual ID in UUID format, or else `externalId:` followed by the
    #   external ID, if it has one. For more information, see [Referencing
    #   objects with external IDs][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/object-ids.html#external-id-references
    #
    # @option params [String] :property_alias
    #   The alias that identifies the property, such as an OPC-UA server data
    #   stream path (for example,
    #   `/company/windfarm/3/turbine/7/temperature`). For more information,
    #   see [Mapping industrial data streams to asset properties][1] in the
    #   *IoT SiteWise User Guide*.
    #
    #   If you omit this parameter, the alias is removed from the property.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html
    #
    # @option params [String] :property_notification_state
    #   The MQTT notification state (enabled or disabled) for this asset
    #   property. When the notification state is enabled, IoT SiteWise
    #   publishes property value updates to a unique MQTT topic. For more
    #   information, see [Interacting with other services][1] in the *IoT
    #   SiteWise User Guide*.
    #
    #   If you omit this parameter, the notification state is set to
    #   `DISABLED`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :property_unit
    #   The unit of measure (such as Newtons or RPM) of the asset property. If
    #   you don't specify a value for this parameter, the service uses the
    #   value of the `assetModelProperty` in the asset model.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset_property({
    #     asset_id: "CustomID", # required
    #     property_id: "CustomID", # required
    #     property_alias: "PropertyAlias",
    #     property_notification_state: "ENABLED", # accepts ENABLED, DISABLED
    #     client_token: "ClientToken",
    #     property_unit: "PropertyUnit",
    #   })
    #
    # @overload update_asset_property(params = {})
    # @param [Hash] params ({})
    def update_asset_property(params = {}, options = {})
      req = build_request(:update_asset_property, params)
      req.send_request(options)
    end

    # Updates the computation model.
    #
    # @option params [required, String] :computation_model_id
    #   The ID of the computation model.
    #
    # @option params [required, String] :computation_model_name
    #   The name of the computation model.
    #
    # @option params [String] :computation_model_description
    #   The description of the computation model.
    #
    # @option params [required, Types::ComputationModelConfiguration] :computation_model_configuration
    #   The configuration for the computation model.
    #
    # @option params [required, Hash<String,Types::ComputationModelDataBindingValue>] :computation_model_data_binding
    #   The data binding for the computation model. Key is a variable name
    #   defined in configuration. Value is a
    #   `ComputationModelDataBindingValue` referenced by the variable.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateComputationModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateComputationModelResponse#computation_model_status #computation_model_status} => Types::ComputationModelStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_computation_model({
    #     computation_model_id: "ID", # required
    #     computation_model_name: "RestrictedName", # required
    #     computation_model_description: "RestrictedDescription",
    #     computation_model_configuration: { # required
    #       anomaly_detection: {
    #         input_properties: "InputProperties", # required
    #         result_property: "ResultProperty", # required
    #       },
    #     },
    #     computation_model_data_binding: { # required
    #       "ComputationModelDataBindingVariable" => {
    #         asset_model_property: {
    #           asset_model_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         asset_property: {
    #           asset_id: "ID", # required
    #           property_id: "ID", # required
    #         },
    #         list: [
    #           {
    #             # recursive ComputationModelDataBindingValue
    #           },
    #         ],
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.computation_model_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.computation_model_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.computation_model_status.error.message #=> String
    #   resp.computation_model_status.error.details #=> Array
    #   resp.computation_model_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.computation_model_status.error.details[0].message #=> String
    #
    # @overload update_computation_model(params = {})
    # @param [Hash] params ({})
    def update_computation_model(params = {}, options = {})
      req = build_request(:update_computation_model, params)
      req.send_request(options)
    end

    # Updates an IoT SiteWise Monitor dashboard.
    #
    # @option params [required, String] :dashboard_id
    #   The ID of the dashboard to update.
    #
    # @option params [required, String] :dashboard_name
    #   A new friendly name for the dashboard.
    #
    # @option params [String] :dashboard_description
    #   A new description for the dashboard.
    #
    # @option params [required, String] :dashboard_definition
    #   The new dashboard definition, as specified in a JSON literal.
    #
    #   * IoT SiteWise Monitor (Classic) see [Create dashboards (CLI)][1]
    #
    #   * IoT SiteWise Monitor (AI-aware) see [Create dashboards (CLI)][2]
    #
    #   in the *IoT SiteWise User Guide*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-ai-dashboard-cli.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dashboard({
    #     dashboard_id: "ID", # required
    #     dashboard_name: "Name", # required
    #     dashboard_description: "Description",
    #     dashboard_definition: "DashboardDefinition", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_dashboard(params = {})
    # @param [Hash] params ({})
    def update_dashboard(params = {}, options = {})
      req = build_request(:update_dashboard, params)
      req.send_request(options)
    end

    # Updates a dataset.
    #
    # @option params [required, String] :dataset_id
    #   The ID of the dataset.
    #
    # @option params [required, String] :dataset_name
    #   The name of the dataset.
    #
    # @option params [String] :dataset_description
    #   A description about the dataset, and its functionality.
    #
    # @option params [required, Types::DatasetSource] :dataset_source
    #   The data source for the dataset.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateDatasetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDatasetResponse#dataset_id #dataset_id} => String
    #   * {Types::UpdateDatasetResponse#dataset_arn #dataset_arn} => String
    #   * {Types::UpdateDatasetResponse#dataset_status #dataset_status} => Types::DatasetStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_dataset({
    #     dataset_id: "ID", # required
    #     dataset_name: "RestrictedName", # required
    #     dataset_description: "RestrictedDescription",
    #     dataset_source: { # required
    #       source_type: "KENDRA", # required, accepts KENDRA
    #       source_format: "KNOWLEDGE_BASE", # required, accepts KNOWLEDGE_BASE
    #       source_detail: {
    #         kendra: {
    #           knowledge_base_arn: "ARN", # required
    #           role_arn: "ARN", # required
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.dataset_id #=> String
    #   resp.dataset_arn #=> String
    #   resp.dataset_status.state #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.dataset_status.error.code #=> String, one of "VALIDATION_ERROR", "INTERNAL_FAILURE"
    #   resp.dataset_status.error.message #=> String
    #   resp.dataset_status.error.details #=> Array
    #   resp.dataset_status.error.details[0].code #=> String, one of "INCOMPATIBLE_COMPUTE_LOCATION", "INCOMPATIBLE_FORWARDING_CONFIGURATION"
    #   resp.dataset_status.error.details[0].message #=> String
    #
    # @overload update_dataset(params = {})
    # @param [Hash] params ({})
    def update_dataset(params = {}, options = {})
      req = build_request(:update_dataset, params)
      req.send_request(options)
    end

    # Updates a gateway's name.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway to update.
    #
    # @option params [required, String] :gateway_name
    #   A unique name for the gateway.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway({
    #     gateway_id: "ID", # required
    #     gateway_name: "GatewayName", # required
    #   })
    #
    # @overload update_gateway(params = {})
    # @param [Hash] params ({})
    def update_gateway(params = {}, options = {})
      req = build_request(:update_gateway, params)
      req.send_request(options)
    end

    # Updates a gateway capability configuration or defines a new capability
    # configuration. Each gateway capability defines data sources for a
    # gateway.
    #
    # Important workflow notes:
    #
    # Each gateway capability defines data sources for a gateway. This is
    # the namespace of the gateway capability.
    #
    # . The namespace follows the format `service:capability:version`,
    # where:
    #
    # * `service` - The service providing the capability, or `iotsitewise`.
    #
    # * `capability` - The specific capability type. Options include:
    #   `opcuacollector` for the OPC UA data source collector, or
    #   `publisher` for data publisher capability.
    #
    # * `version` - The version number of the capability. Option include `2`
    #   for Classic streams, V2 gateways, and `3` for MQTT-enabled, V3
    #   gateways.
    #
    # After updating a capability configuration, the sync status becomes
    # `OUT_OF_SYNC` until the gateway processes the configuration.Use
    # `DescribeGatewayCapabilityConfiguration` to check the sync status and
    # verify the configuration was applied.
    #
    # A gateway can have multiple capability configurations with different
    # namespaces.
    #
    # @option params [required, String] :gateway_id
    #   The ID of the gateway to be updated.
    #
    # @option params [required, String] :capability_namespace
    #   The namespace of the gateway capability configuration to be updated.
    #   For example, if you configure OPC UA sources for an MQTT-enabled
    #   gateway, your OPC-UA capability configuration has the namespace
    #   `iotsitewise:opcuacollector:3`.
    #
    # @option params [required, String] :capability_configuration
    #   The JSON document that defines the configuration for the gateway
    #   capability. For more information, see [Configuring data sources
    #   (CLI)][1] in the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli
    #
    # @return [Types::UpdateGatewayCapabilityConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGatewayCapabilityConfigurationResponse#capability_namespace #capability_namespace} => String
    #   * {Types::UpdateGatewayCapabilityConfigurationResponse#capability_sync_status #capability_sync_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_capability_configuration({
    #     gateway_id: "ID", # required
    #     capability_namespace: "CapabilityNamespace", # required
    #     capability_configuration: "CapabilityConfiguration", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.capability_namespace #=> String
    #   resp.capability_sync_status #=> String, one of "IN_SYNC", "OUT_OF_SYNC", "SYNC_FAILED", "UNKNOWN", "NOT_APPLICABLE"
    #
    # @overload update_gateway_capability_configuration(params = {})
    # @param [Hash] params ({})
    def update_gateway_capability_configuration(params = {}, options = {})
      req = build_request(:update_gateway_capability_configuration, params)
      req.send_request(options)
    end

    # Updates an IoT SiteWise Monitor portal.
    #
    # @option params [required, String] :portal_id
    #   The ID of the portal to update.
    #
    # @option params [required, String] :portal_name
    #   A new friendly name for the portal.
    #
    # @option params [String] :portal_description
    #   A new description for the portal.
    #
    # @option params [required, String] :portal_contact_email
    #   The Amazon Web Services administrator's contact email address.
    #
    # @option params [Types::Image] :portal_logo_image
    #   Contains an image that is one of the following:
    #
    #   * An image file. Choose this option to upload a new image.
    #
    #   * The ID of an existing image. Choose this option to keep an existing
    #     image.
    #
    # @option params [required, String] :role_arn
    #   The [ARN][1] of a service role that allows the portal's users to
    #   access your IoT SiteWise resources on your behalf. For more
    #   information, see [Using service roles for IoT SiteWise Monitor][2] in
    #   the *IoT SiteWise User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :notification_sender_email
    #   The email address that sends alarm notifications.
    #
    # @option params [Types::Alarms] :alarms
    #   Contains the configuration information of an alarm created in an IoT
    #   SiteWise Monitor portal. You can use the alarm to monitor an asset
    #   property and get notified when the asset property value is outside a
    #   specified range. For more information, see [Monitoring with alarms][1]
    #   in the *IoT SiteWise Application Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/iot-sitewise/latest/appguide/monitor-alarms.html
    #
    # @option params [String] :portal_type
    #   Define the type of portal. The value for IoT SiteWise Monitor
    #   (Classic) is `SITEWISE_PORTAL_V1`. The value for IoT SiteWise Monitor
    #   (AI-aware) is `SITEWISE_PORTAL_V2`.
    #
    # @option params [Hash<String,Types::PortalTypeEntry>] :portal_type_configuration
    #   The configuration entry associated with the specific portal type. The
    #   value for IoT SiteWise Monitor (Classic) is `SITEWISE_PORTAL_V1`. The
    #   value for IoT SiteWise Monitor (AI-aware) is `SITEWISE_PORTAL_V2`.
    #
    # @return [Types::UpdatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePortalResponse#portal_status #portal_status} => Types::PortalStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portal({
    #     portal_id: "ID", # required
    #     portal_name: "Name", # required
    #     portal_description: "Description",
    #     portal_contact_email: "Email", # required
    #     portal_logo_image: {
    #       id: "ID",
    #       file: {
    #         data: "data", # required
    #         type: "PNG", # required, accepts PNG
    #       },
    #     },
    #     role_arn: "IamArn", # required
    #     client_token: "ClientToken",
    #     notification_sender_email: "Email",
    #     alarms: {
    #       alarm_role_arn: "IamArn", # required
    #       notification_lambda_arn: "ARN",
    #     },
    #     portal_type: "SITEWISE_PORTAL_V1", # accepts SITEWISE_PORTAL_V1, SITEWISE_PORTAL_V2
    #     portal_type_configuration: {
    #       "PortalTypeKey" => {
    #         portal_tools: ["Name"],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_status.state #=> String, one of "CREATING", "PENDING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.portal_status.error.code #=> String, one of "INTERNAL_FAILURE", "VALIDATION_ERROR", "LIMIT_EXCEEDED"
    #   resp.portal_status.error.message #=> String
    #
    # @overload update_portal(params = {})
    # @param [Hash] params ({})
    def update_portal(params = {}, options = {})
      req = build_request(:update_portal, params)
      req.send_request(options)
    end

    # Updates an IoT SiteWise Monitor project.
    #
    # @option params [required, String] :project_id
    #   The ID of the project to update.
    #
    # @option params [required, String] :project_name
    #   A new friendly name for the project.
    #
    # @option params [String] :project_description
    #   A new description for the project.
    #
    # @option params [String] :client_token
    #   A unique case-sensitive identifier that you can provide to ensure the
    #   idempotency of the request. Don't reuse this client token if a new
    #   idempotent request is required.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     project_id: "ID", # required
    #     project_name: "Name", # required
    #     project_description: "Description",
    #     client_token: "ClientToken",
    #   })
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::IoTSiteWise')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-iotsitewise'
      context[:gem_version] = '1.89.0'
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
    # | asset_active           | {Client#describe_asset}       | 3        | 20            |
    # | asset_model_active     | {Client#describe_asset_model} | 3        | 20            |
    # | asset_model_not_exists | {Client#describe_asset_model} | 3        | 20            |
    # | asset_not_exists       | {Client#describe_asset}       | 3        | 20            |
    # | portal_active          | {Client#describe_portal}      | 3        | 20            |
    # | portal_not_exists      | {Client#describe_portal}      | 3        | 20            |
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
        asset_active: Waiters::AssetActive,
        asset_model_active: Waiters::AssetModelActive,
        asset_model_not_exists: Waiters::AssetModelNotExists,
        asset_not_exists: Waiters::AssetNotExists,
        portal_active: Waiters::PortalActive,
        portal_not_exists: Waiters::PortalNotExists
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
