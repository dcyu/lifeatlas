# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

begin
  require 'http/2'
rescue LoadError; end
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/json_rpc'
require 'aws-sdk-core/plugins/event_stream_configuration'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesis)

module Aws::Kinesis
  # An API async client for Kinesis.  To construct an async client, you need to configure a `:region` and `:credentials`.
  #
  #     async_client = Aws::Kinesis::AsyncClient.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class AsyncClient < Seahorse::Client::AsyncBase

    include Aws::AsyncClientStubs

    @identifier = :kinesis

    set_api(ClientApi::API)

    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::Kinesis::Plugins::Endpoints)

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
    #   @option options [Aws::Kinesis::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Kinesis::EndpointParameters`.
    #
    #   @option options [Integer] :connection_read_timeout (60)
    #     Connection read timeout in seconds, defaults to 60 sec.
    #
    #   @option options [Integer] :connection_timeout (60)
    #     Connection timeout in seconds, defaults to 60 sec.
    #
    #   @option options [Boolean] :enable_alpn (true)
    #     Set to `false` to disable ALPN in HTTP2 over TLS. ALPN requires Openssl version >= 1.0.2.
    #     Note: RFC7540 requires HTTP2 to use ALPN over TLS but some
    #     services may not fully support ALPN and require setting this to `false`.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`, HTTP2 debug output will be sent to the `:logger`.
    #
    #   @option options [Integer] :max_concurrent_streams (100)
    #     Maximum concurrent streams used in HTTP2 connection, defaults to 100. Note that server may send back
    #     :settings_max_concurrent_streams value which will take priority when initializing new streams.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     Defaults to `true`, raises errors if exist when #wait or #join! is called upon async response.
    #
    #   @option options [Integer] :read_chunk_size (1024)
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates. If you do not pass `:ssl_ca_directory` or `:ssl_ca_bundle`
    #     the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate authority
    #     files for verifying peer certificates. If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      unless Kernel.const_defined?("HTTP2")
        raise "Must include http/2 gem to use AsyncClient instances."
      end
      super
    end

    # @!group API Operations

    # This operation establishes an HTTP/2 connection between the consumer
    # you specify in the `ConsumerARN` parameter and the shard you specify
    # in the `ShardId` parameter. After the connection is successfully
    # established, Kinesis Data Streams pushes records from the shard to the
    # consumer over this connection. Before you call this operation, call
    # RegisterStreamConsumer to register the consumer with Kinesis Data
    # Streams.
    #
    # When the `SubscribeToShard` call succeeds, your consumer starts
    # receiving events of type SubscribeToShardEvent over the HTTP/2
    # connection for up to 5 minutes, after which time you need to call
    # `SubscribeToShard` again to renew the subscription if you want to
    # continue to receive records.
    #
    # You can make one call to `SubscribeToShard` per second per registered
    # consumer per shard. For example, if you have a 4000 shard stream and
    # two registered stream consumers, you can make one `SubscribeToShard`
    # request per second for each combination of shard and registered
    # consumer, allowing you to subscribe both consumers to all 4000 shards
    # in one second.
    #
    # If you call `SubscribeToShard` again with the same `ConsumerARN` and
    # `ShardId` within 5 seconds of a successful call, you'll get a
    # `ResourceInUseException`. If you call `SubscribeToShard` 5 seconds or
    # more after a successful call, the second call takes over the
    # subscription and the previous connection expires or fails with a
    # `ResourceInUseException`.
    #
    # For an example of how to use this operation, see [Enhanced Fan-Out
    # Using the Kinesis Data Streams API][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/streams/latest/dev/building-enhanced-consumers-api.html
    #
    # @option params [required, String] :consumer_arn
    #   For this parameter, use the value you obtained when you called
    #   RegisterStreamConsumer.
    #
    # @option params [required, String] :shard_id
    #   The ID of the shard you want to subscribe to. To see a list of all the
    #   shards for a given stream, use ListShards.
    #
    # @option params [required, Types::StartingPosition] :starting_position
    #   The starting position in the data stream from which to start
    #   streaming.
    #
    # @return [Types::SubscribeToShardOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubscribeToShardOutput#event_stream #event_stream} => Types::SubscribeToShardEventStream
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register subscribe_to_shard
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #subscribe_to_shard call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::Kinesis::EventStreams::SubscribeToShardEventStream object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #subscribe_to_shard
    #   # Example for registering callbacks for all event types and an error event
    #   client.subscribe_to_shard(
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
    #   # Usage pattern b): Pass in `:event_stream_handler` for #subscribe_to_shard
    #   #  1) Create a Aws::Kinesis::EventStreams::SubscribeToShardEventStream object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::Kinesis::EventStreams::SubscribeToShardEventStream.new
    #   handler.on_subscribe_to_shard_event_event do |event|
    #     event # => Aws::Kinesis::Types::SubscribeToShardEvent
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::Kinesis::Types::ResourceNotFoundException
    #   end
    #   handler.on_resource_in_use_exception_event do |event|
    #     event # => Aws::Kinesis::Types::ResourceInUseException
    #   end
    #   handler.on_kms_disabled_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSDisabledException
    #   end
    #   handler.on_kms_invalid_state_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSInvalidStateException
    #   end
    #   handler.on_kms_access_denied_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSAccessDeniedException
    #   end
    #   handler.on_kms_not_found_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSNotFoundException
    #   end
    #   handler.on_kms_opt_in_required_event do |event|
    #     event # => Aws::Kinesis::Types::KMSOptInRequired
    #   end
    #   handler.on_kms_throttling_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSThrottlingException
    #   end
    #   handler.on_internal_failure_exception_event do |event|
    #     event # => Aws::Kinesis::Types::InternalFailureException
    #   end
    #
    #   client.subscribe_to_shard(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_subscribe_to_shard_event_event do |event|
    #       event # => Aws::Kinesis::Types::SubscribeToShardEvent
    #     end
    #     stream.on_resource_not_found_exception_event do |event|
    #       event # => Aws::Kinesis::Types::ResourceNotFoundException
    #     end
    #     stream.on_resource_in_use_exception_event do |event|
    #       event # => Aws::Kinesis::Types::ResourceInUseException
    #     end
    #     stream.on_kms_disabled_exception_event do |event|
    #       event # => Aws::Kinesis::Types::KMSDisabledException
    #     end
    #     stream.on_kms_invalid_state_exception_event do |event|
    #       event # => Aws::Kinesis::Types::KMSInvalidStateException
    #     end
    #     stream.on_kms_access_denied_exception_event do |event|
    #       event # => Aws::Kinesis::Types::KMSAccessDeniedException
    #     end
    #     stream.on_kms_not_found_exception_event do |event|
    #       event # => Aws::Kinesis::Types::KMSNotFoundException
    #     end
    #     stream.on_kms_opt_in_required_event do |event|
    #       event # => Aws::Kinesis::Types::KMSOptInRequired
    #     end
    #     stream.on_kms_throttling_exception_event do |event|
    #       event # => Aws::Kinesis::Types::KMSThrottlingException
    #     end
    #     stream.on_internal_failure_exception_event do |event|
    #       event # => Aws::Kinesis::Types::InternalFailureException
    #     end
    #   end
    #
    #   client.subscribe_to_shard(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::Kinesis::EventStreams::SubscribeToShardEventStream.new
    #   handler.on_subscribe_to_shard_event_event do |event|
    #     event # => Aws::Kinesis::Types::SubscribeToShardEvent
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::Kinesis::Types::ResourceNotFoundException
    #   end
    #   handler.on_resource_in_use_exception_event do |event|
    #     event # => Aws::Kinesis::Types::ResourceInUseException
    #   end
    #   handler.on_kms_disabled_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSDisabledException
    #   end
    #   handler.on_kms_invalid_state_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSInvalidStateException
    #   end
    #   handler.on_kms_access_denied_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSAccessDeniedException
    #   end
    #   handler.on_kms_not_found_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSNotFoundException
    #   end
    #   handler.on_kms_opt_in_required_event do |event|
    #     event # => Aws::Kinesis::Types::KMSOptInRequired
    #   end
    #   handler.on_kms_throttling_exception_event do |event|
    #     event # => Aws::Kinesis::Types::KMSThrottlingException
    #   end
    #   handler.on_internal_failure_exception_event do |event|
    #     event # => Aws::Kinesis::Types::InternalFailureException
    #   end
    #
    #   client.subscribe_to_shard(
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
    #   resp.event_stream # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.subscribe_to_shard({
    #     consumer_arn: "ConsumerARN", # required
    #     shard_id: "ShardId", # required
    #     starting_position: { # required
    #       type: "AT_SEQUENCE_NUMBER", # required, accepts AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #       sequence_number: "SequenceNumber",
    #       timestamp: Time.now,
    #     },
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   # All events are available at resp.event_stream:
    #   resp.event_stream #=> Enumerator
    #   resp.event_stream.event_types #=> [:subscribe_to_shard_event, :resource_not_found_exception, :resource_in_use_exception, :kms_disabled_exception, :kms_invalid_state_exception, :kms_access_denied_exception, :kms_not_found_exception, :kms_opt_in_required, :kms_throttling_exception, :internal_failure_exception]
    #
    #   # For :subscribe_to_shard_event event available at #on_subscribe_to_shard_event_event callback and response eventstream enumerator:
    #   event.records #=> Array
    #   event.records[0].sequence_number #=> String
    #   event.records[0].approximate_arrival_timestamp #=> Time
    #   event.records[0].data #=> String
    #   event.records[0].partition_key #=> String
    #   event.records[0].encryption_type #=> String, one of "NONE", "KMS"
    #   event.continuation_sequence_number #=> String
    #   event.millis_behind_latest #=> Integer
    #   event.child_shards #=> Array
    #   event.child_shards[0].shard_id #=> String
    #   event.child_shards[0].parent_shards #=> Array
    #   event.child_shards[0].parent_shards[0] #=> String
    #   event.child_shards[0].hash_key_range.starting_hash_key #=> String
    #   event.child_shards[0].hash_key_range.ending_hash_key #=> String
    #
    #   # For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :resource_in_use_exception event available at #on_resource_in_use_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :kms_disabled_exception event available at #on_kms_disabled_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :kms_invalid_state_exception event available at #on_kms_invalid_state_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :kms_access_denied_exception event available at #on_kms_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :kms_not_found_exception event available at #on_kms_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :kms_opt_in_required event available at #on_kms_opt_in_required_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :kms_throttling_exception event available at #on_kms_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :internal_failure_exception event available at #on_internal_failure_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-2013-12-02/SubscribeToShard AWS API Documentation
    #
    # @overload subscribe_to_shard(params = {})
    # @param [Hash] params ({})
    def subscribe_to_shard(params = {}, options = {})
      params = params.dup
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::SubscribeToShardEventStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:subscribe_to_shard, params)

      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 55)

      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Kinesis')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        http_response: Seahorse::Client::Http::AsyncResponse.new,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-kinesis'
      context[:gem_version] = '1.82.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    private

    def _event_stream_handler(type, handler, event_stream_class)
      case handler
      when event_stream_class then handler
      when Proc then event_stream_class.new.tap(&handler)
      when nil then event_stream_class.new
      else
        msg = "expected #{type}_event_stream_handler to be a block or "\
              "instance of Aws::Kinesis::#{event_stream_class}"\
              ", got `#{handler.inspect}` instead"
        raise ArgumentError, msg
      end
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
