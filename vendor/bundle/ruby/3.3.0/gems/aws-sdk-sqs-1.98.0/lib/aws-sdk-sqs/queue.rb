# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SQS

  class Queue

    extend Aws::Deprecations

    # @overload def initialize(url, options = {})
    #   @param [String] url
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :url
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @url = extract_url(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def url
      @url
    end

    # A map of attributes to their respective values.
    # @return [Hash<String,String>]
    def attributes
      data[:attributes]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Queue}.
    # Returns `self` making it possible to chain methods.
    #
    #     queue.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.get_queue_attributes(
        queue_url: @url,
        attribute_names: ["All"]
      )
      end
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetQueueAttributesResult]
    #   Returns the data for this {Queue}. Calls
    #   {Client#get_queue_attributes} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   queue.add_permission({
    #     label: "String", # required
    #     aws_account_ids: ["String"], # required
    #     actions: ["String"], # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :label
    #   The unique identification of the permission you're setting (for
    #   example, `AliceSendMessage`). Maximum 80 characters. Allowed
    #   characters include alphanumeric characters, hyphens (`-`), and
    #   underscores (`_`).
    # @option options [required, Array<String>] :aws_account_ids
    #   The Amazon Web Services account numbers of the [principals][1] who are
    #   to receive permission. For information about locating the Amazon Web
    #   Services account identification, see [Your Amazon Web Services
    #   Identifiers][2] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html#sqs-api-request-authentication
    # @option options [required, Array<String>] :actions
    #   The action the client wants to allow for the specified principal.
    #   Valid values: the name of any action or `*`.
    #
    #   For more information about these actions, see [Overview of Managing
    #   Access Permissions to Your Amazon Simple Queue Service Resource][1] in
    #   the *Amazon SQS Developer Guide*.
    #
    #   Specifying `SendMessage`, `DeleteMessage`, or
    #   `ChangeMessageVisibility` for `ActionName.n` also grants permissions
    #   for the corresponding batch versions of those actions:
    #   `SendMessageBatch`, `DeleteMessageBatch`, and
    #   `ChangeMessageVisibilityBatch`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-overview-of-managing-access.html
    # @return [EmptyStructure]
    def add_permission(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.add_permission(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   queue.change_message_visibility_batch({
    #     entries: [ # required
    #       {
    #         id: "String", # required
    #         receipt_handle: "String", # required
    #         visibility_timeout: 1,
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::ChangeMessageVisibilityBatchRequestEntry>] :entries
    #   Lists the receipt handles of the messages for which the visibility
    #   timeout must be changed.
    # @return [Types::ChangeMessageVisibilityBatchResult]
    def change_message_visibility_batch(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.change_message_visibility_batch(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   queue.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_queue(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   queue.delete_messages({
    #     entries: [ # required
    #       {
    #         id: "String", # required
    #         receipt_handle: "String", # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::DeleteMessageBatchRequestEntry>] :entries
    #   Lists the receipt handles for the messages to be deleted.
    # @return [Types::DeleteMessageBatchResult]
    def delete_messages(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.delete_message_batch(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   queue.purge()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def purge(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.purge_queue(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   message = queue.receive_messages({
    #     attribute_names: ["All"], # accepts All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication, KmsMasterKeyId, KmsDataKeyReusePeriodSeconds, DeduplicationScope, FifoThroughputLimit, RedriveAllowPolicy, SqsManagedSseEnabled
    #     message_system_attribute_names: ["All"], # accepts All, SenderId, SentTimestamp, ApproximateReceiveCount, ApproximateFirstReceiveTimestamp, SequenceNumber, MessageDeduplicationId, MessageGroupId, AWSTraceHeader, DeadLetterQueueSourceArn
    #     message_attribute_names: ["MessageAttributeName"],
    #     max_number_of_messages: 1,
    #     visibility_timeout: 1,
    #     wait_time_seconds: 1,
    #     receive_request_attempt_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :attribute_names
    #   This parameter has been discontinued but will be supported for
    #   backward compatibility. To provide attribute names, you are encouraged
    #   to use `MessageSystemAttributeNames`.
    #
    #   A list of attributes that need to be returned along with each message.
    #   These attributes include:
    #
    #   * `All` – Returns all values.
    #
    #   * `ApproximateFirstReceiveTimestamp` – Returns the time the message
    #     was first received from the queue ([epoch time][1] in milliseconds).
    #
    #   * `ApproximateReceiveCount` – Returns the number of times a message
    #     has been received across all queues but not deleted.
    #
    #   * `AWSTraceHeader` – Returns the X-Ray trace header string.
    #
    #   * `SenderId`
    #
    #     * For a user, returns the user ID, for example
    #       `ABCDEFGHI1JKLMNOPQ23R`.
    #
    #     * For an IAM role, returns the IAM role ID, for example
    #       `ABCDE1F2GH3I4JK5LMNOP:i-a123b456`.
    #   * `SentTimestamp` – Returns the time the message was sent to the queue
    #     ([epoch time][1] in milliseconds).
    #
    #   * `SqsManagedSseEnabled` – Enables server-side queue encryption using
    #     SQS owned encryption keys. Only one server-side encryption option is
    #     supported per queue (for example, [SSE-KMS][2] or [SSE-SQS][3]).
    #
    #   * `MessageDeduplicationId` – Returns the value provided by the
    #     producer that calls the ` SendMessage ` action.
    #
    #   * `MessageGroupId` – Returns the value provided by the producer that
    #     calls the ` SendMessage ` action.
    #
    #   * `SequenceNumber` – Returns the value provided by Amazon SQS.
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Unix_time
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html
    #   [3]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html
    # @option options [Array<String>] :message_system_attribute_names
    #   A list of attributes that need to be returned along with each message.
    #   These attributes include:
    #
    #   * `All` – Returns all values.
    #
    #   * `ApproximateFirstReceiveTimestamp` – Returns the time the message
    #     was first received from the queue ([epoch time][1] in milliseconds).
    #
    #   * `ApproximateReceiveCount` – Returns the number of times a message
    #     has been received across all queues but not deleted.
    #
    #   * `AWSTraceHeader` – Returns the X-Ray trace header string.
    #
    #   * `SenderId`
    #
    #     * For a user, returns the user ID, for example
    #       `ABCDEFGHI1JKLMNOPQ23R`.
    #
    #     * For an IAM role, returns the IAM role ID, for example
    #       `ABCDE1F2GH3I4JK5LMNOP:i-a123b456`.
    #   * `SentTimestamp` – Returns the time the message was sent to the queue
    #     ([epoch time][1] in milliseconds).
    #
    #   * `SqsManagedSseEnabled` – Enables server-side queue encryption using
    #     SQS owned encryption keys. Only one server-side encryption option is
    #     supported per queue (for example, [SSE-KMS][2] or [SSE-SQS][3]).
    #
    #   * `MessageDeduplicationId` – Returns the value provided by the
    #     producer that calls the ` SendMessage ` action.
    #
    #   * `MessageGroupId` – Returns the value provided by the producer that
    #     calls the ` SendMessage ` action.
    #
    #   * `SequenceNumber` – Returns the value provided by Amazon SQS.
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Unix_time
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html
    #   [3]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html
    # @option options [Array<String>] :message_attribute_names
    #   The name of the message attribute, where *N* is the index.
    #
    #   * The name can contain alphanumeric characters and the underscore
    #     (`_`), hyphen (`-`), and period (`.`).
    #
    #   * The name is case-sensitive and must be unique among all attribute
    #     names for the message.
    #
    #   * The name must not start with AWS-reserved prefixes such as `AWS.` or
    #     `Amazon.` (or any casing variants).
    #
    #   * The name must not start or end with a period (`.`), and it should
    #     not have periods in succession (`..`).
    #
    #   * The name can be up to 256 characters long.
    #
    #   When using `ReceiveMessage`, you can send a list of attribute names to
    #   receive, or you can return all of the attributes by specifying `All`
    #   or `.*` in your request. You can also use all message attributes
    #   starting with a prefix, for example `bar.*`.
    # @option options [Integer] :max_number_of_messages
    #   The maximum number of messages to return. Amazon SQS never returns
    #   more messages than this value (however, fewer messages might be
    #   returned). Valid values: 1 to 10. Default: 1.
    # @option options [Integer] :visibility_timeout
    #   The duration (in seconds) that the received messages are hidden from
    #   subsequent retrieve requests after being retrieved by a
    #   `ReceiveMessage` request. If not specified, the default visibility
    #   timeout for the queue is used, which is 30 seconds.
    #
    #   Understanding `VisibilityTimeout`:
    #
    #   * When a message is received from a queue, it becomes temporarily
    #     invisible to other consumers for the duration of the visibility
    #     timeout. This prevents multiple consumers from processing the same
    #     message simultaneously. If the message is not deleted or its
    #     visibility timeout is not extended before the timeout expires, it
    #     becomes visible again and can be retrieved by other consumers.
    #
    #   * Setting an appropriate visibility timeout is crucial. If it's too
    #     short, the message might become visible again before processing is
    #     complete, leading to duplicate processing. If it's too long, it
    #     delays the reprocessing of messages if the initial processing fails.
    #
    #   * You can adjust the visibility timeout using the
    #     `--visibility-timeout` parameter in the `receive-message` command to
    #     match the processing time required by your application.
    #
    #   * A message that isn't deleted or a message whose visibility isn't
    #     extended before the visibility timeout expires counts as a failed
    #     receive. Depending on the configuration of the queue, the message
    #     might be sent to the dead-letter queue.
    #
    #   For more information, see [Visibility Timeout][1] in the *Amazon SQS
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    # @option options [Integer] :wait_time_seconds
    #   The duration (in seconds) for which the call waits for a message to
    #   arrive in the queue before returning. If a message is available, the
    #   call returns sooner than `WaitTimeSeconds`. If no messages are
    #   available and the wait time expires, the call does not return a
    #   message list. If you are using the Java SDK, it returns a
    #   `ReceiveMessageResponse` object, which has a empty list instead of a
    #   Null object.
    #
    #   To avoid HTTP errors, ensure that the HTTP response timeout for
    #   `ReceiveMessage` requests is longer than the `WaitTimeSeconds`
    #   parameter. For example, with the Java SDK, you can set HTTP transport
    #   settings using the [ NettyNioAsyncHttpClient][1] for asynchronous
    #   clients, or the [ ApacheHttpClient][2] for synchronous clients.
    #
    #
    #
    #   [1]: https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/nio/netty/NettyNioAsyncHttpClient.html
    #   [2]: https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/apache/ApacheHttpClient.html
    # @option options [String] :receive_request_attempt_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of `ReceiveMessage` calls. If a
    #   networking issue occurs after a `ReceiveMessage` action, and instead
    #   of a response you receive a generic error, it is possible to retry the
    #   same action with an identical `ReceiveRequestAttemptId` to retrieve
    #   the same set of messages, even if their visibility timeout has not yet
    #   expired.
    #
    #   * You can use `ReceiveRequestAttemptId` only for 5 minutes after a
    #     `ReceiveMessage` action.
    #
    #   * When you set `FifoQueue`, a caller of the `ReceiveMessage` action
    #     can provide a `ReceiveRequestAttemptId` explicitly.
    #
    #   * It is possible to retry the `ReceiveMessage` action with the same
    #     `ReceiveRequestAttemptId` if none of the messages have been modified
    #     (deleted or had their visibility changes).
    #
    #   * During a visibility timeout, subsequent calls with the same
    #     `ReceiveRequestAttemptId` return the same messages and receipt
    #     handles. If a retry occurs within the deduplication interval, it
    #     resets the visibility timeout. For more information, see [Visibility
    #     Timeout][1] in the *Amazon SQS Developer Guide*.
    #
    #     If a caller of the `ReceiveMessage` action still processes messages
    #     when the visibility timeout expires and messages become visible,
    #     another worker consuming from the same queue can receive the same
    #     messages and therefore process duplicates. Also, if a consumer whose
    #     message processing time is longer than the visibility timeout tries
    #     to delete the processed messages, the action fails with an error.
    #
    #      To mitigate this effect, ensure that your application observes a
    #     safe threshold before the visibility timeout expires and extend the
    #     visibility timeout as necessary.
    #
    #   * While messages with a particular `MessageGroupId` are invisible, no
    #     more messages belonging to the same `MessageGroupId` are returned
    #     until the visibility timeout expires. You can still receive messages
    #     with another `MessageGroupId` from your FIFO queue as long as they
    #     are visible.
    #
    #   * If a caller of `ReceiveMessage` can't track the
    #     `ReceiveRequestAttemptId`, no retries work until the original
    #     visibility timeout expires. As a result, delays might occur but the
    #     messages in the queue remain in a strict order.
    #
    #   The maximum length of `ReceiveRequestAttemptId` is 128 characters.
    #   `ReceiveRequestAttemptId` can contain alphanumeric characters (`a-z`,
    #   `A-Z`, `0-9`) and punctuation (`` !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
    #   ``).
    #
    #   For best practices of using `ReceiveRequestAttemptId`, see [Using the
    #   ReceiveRequestAttemptId Request Parameter][2] in the *Amazon SQS
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-receiverequestattemptid-request-parameter.html
    # @return [Message::Collection]
    def receive_messages(options = {})
      batch = []
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.receive_message(options)
      end
      resp.data.messages.each do |m|
        batch << Message.new(
          queue_url: @url,
          receipt_handle: m.receipt_handle,
          data: m,
          client: @client
        )
      end
      Message::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   queue.remove_permission({
    #     label: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :label
    #   The identification of the permission to remove. This is the label
    #   added using the ` AddPermission ` action.
    # @return [EmptyStructure]
    def remove_permission(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.remove_permission(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   queue.send_message({
    #     message_body: "String", # required
    #     delay_seconds: 1,
    #     message_attributes: {
    #       "String" => {
    #         string_value: "String",
    #         binary_value: "data",
    #         string_list_values: ["String"],
    #         binary_list_values: ["data"],
    #         data_type: "String", # required
    #       },
    #     },
    #     message_system_attributes: {
    #       "AWSTraceHeader" => {
    #         string_value: "String",
    #         binary_value: "data",
    #         string_list_values: ["String"],
    #         binary_list_values: ["data"],
    #         data_type: "String", # required
    #       },
    #     },
    #     message_deduplication_id: "String",
    #     message_group_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :message_body
    #   The message to send. The minimum size is one character. The maximum
    #   size is 256 KiB.
    #
    #   A message can include only XML, JSON, and unformatted text. The
    #   following Unicode characters are allowed. For more information, see
    #   the [W3C specification for characters][1].
    #
    #    `#x9` \| `#xA` \| `#xD` \| `#x20` to `#xD7FF` \| `#xE000` to `#xFFFD`
    #   \| `#x10000` to `#x10FFFF`
    #
    #    Amazon SQS does not throw an exception or completely reject the
    #   message if it contains invalid characters. Instead, it replaces those
    #   invalid characters with U+FFFD before storing the message in the
    #   queue, as long as the message body contains at least one valid
    #   character.
    #
    #
    #
    #   [1]: http://www.w3.org/TR/REC-xml/#charsets
    # @option options [Integer] :delay_seconds
    #   The length of time, in seconds, for which to delay a specific message.
    #   Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive
    #   `DelaySeconds` value become available for processing after the delay
    #   period is finished. If you don't specify a value, the default value
    #   for the queue applies.
    #
    #   <note markdown="1"> When you set `FifoQueue`, you can't set `DelaySeconds` per message.
    #   You can set this parameter only on a queue level.
    #
    #    </note>
    # @option options [Hash<String,Types::MessageAttributeValue>] :message_attributes
    #   Each message attribute consists of a `Name`, `Type`, and `Value`. For
    #   more information, see [Amazon SQS message attributes][1] in the
    #   *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes
    # @option options [Hash<String,Types::MessageSystemAttributeValue>] :message_system_attributes
    #   The message system attribute to send. Each message system attribute
    #   consists of a `Name`, `Type`, and `Value`.
    #
    #   * Currently, the only supported message system attribute is
    #     `AWSTraceHeader`. Its type must be `String` and its value must be a
    #     correctly formatted X-Ray trace header string.
    #
    #   * The size of a message system attribute doesn't count towards the
    #     total size of a message.
    # @option options [String] :message_deduplication_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of sent messages. If a message with a
    #   particular `MessageDeduplicationId` is sent successfully, any messages
    #   sent with the same `MessageDeduplicationId` are accepted successfully
    #   but aren't delivered during the 5-minute deduplication interval. For
    #   more information, see [ Exactly-once processing][1] in the *Amazon SQS
    #   Developer Guide*.
    #
    #   * Every message must have a unique `MessageDeduplicationId`,
    #
    #     * You may provide a `MessageDeduplicationId` explicitly.
    #
    #     * If you aren't able to provide a `MessageDeduplicationId` and you
    #       enable `ContentBasedDeduplication` for your queue, Amazon SQS uses
    #       a SHA-256 hash to generate the `MessageDeduplicationId` using the
    #       body of the message (but not the attributes of the message).
    #
    #     * If you don't provide a `MessageDeduplicationId` and the queue
    #       doesn't have `ContentBasedDeduplication` set, the action fails
    #       with an error.
    #
    #     * If the queue has `ContentBasedDeduplication` set, your
    #       `MessageDeduplicationId` overrides the generated one.
    #   * When `ContentBasedDeduplication` is in effect, messages with
    #     identical content sent within the deduplication interval are treated
    #     as duplicates and only one copy of the message is delivered.
    #
    #   * If you send one message with `ContentBasedDeduplication` enabled and
    #     then another message with a `MessageDeduplicationId` that is the
    #     same as the one generated for the first `MessageDeduplicationId`,
    #     the two messages are treated as duplicates and only one copy of the
    #     message is delivered.
    #
    #   <note markdown="1"> The `MessageDeduplicationId` is available to the consumer of the
    #   message (this can be useful for troubleshooting delivery issues).
    #
    #    If a message is sent successfully but the acknowledgement is lost and
    #   the message is resent with the same `MessageDeduplicationId` after the
    #   deduplication interval, Amazon SQS can't detect duplicate messages.
    #
    #    Amazon SQS continues to keep track of the message deduplication ID
    #   even after the message is received and deleted.
    #
    #    </note>
    #
    #   The maximum length of `MessageDeduplicationId` is 128 characters.
    #   `MessageDeduplicationId` can contain alphanumeric characters (`a-z`,
    #   `A-Z`, `0-9`) and punctuation (`` !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~
    #   ``).
    #
    #   For best practices of using `MessageDeduplicationId`, see [Using the
    #   MessageDeduplicationId Property][2] in the *Amazon SQS Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-exactly-once-processing.html
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagededuplicationid-property.html
    # @option options [String] :message_group_id
    #   `MessageGroupId` is an attribute used in Amazon SQS FIFO
    #   (First-In-First-Out) and standard queues. In FIFO queues,
    #   `MessageGroupId` organizes messages into distinct groups. Messages
    #   within the same message group are always processed one at a time, in
    #   strict order, ensuring that no two messages from the same group are
    #   processed simultaneously. In standard queues, using `MessageGroupId`
    #   enables fair queues. It is used to identify the tenant a message
    #   belongs to, helping maintain consistent message dwell time across all
    #   tenants during noisy neighbor events. Unlike FIFO queues, messages
    #   with the same `MessageGroupId` can be processed in parallel,
    #   maintaining the high throughput of standard queues.
    #
    #   * **FIFO queues:** `MessageGroupId` acts as the tag that specifies
    #     that a message belongs to a specific message group. Messages that
    #     belong to the same message group are processed in a FIFO manner
    #     (however, messages in different message groups might be processed
    #     out of order). To interleave multiple ordered streams within a
    #     single queue, use `MessageGroupId` values (for example, session data
    #     for multiple users). In this scenario, multiple consumers can
    #     process the queue, but the session data of each user is processed in
    #     a FIFO fashion.
    #
    #     If you do not provide a `MessageGroupId` when sending a message to a
    #     FIFO queue, the action fails.
    #
    #     `ReceiveMessage` might return messages with multiple
    #     `MessageGroupId` values. For each `MessageGroupId`, the messages are
    #     sorted by time sent.
    #
    #   * **Standard queues:**Use `MessageGroupId` in standard queues to
    #     enable fair queues. The `MessageGroupId` identifies the tenant a
    #     message belongs to. A tenant can be any entity that shares a queue
    #     with others, such as your customer, a client application, or a
    #     request type. When one tenant sends a disproportionately large
    #     volume of messages or has messages that require longer processing
    #     time, fair queues ensure other tenants' messages maintain low dwell
    #     time. This preserves quality of service for all tenants while
    #     maintaining the scalability and throughput of standard queues. We
    #     recommend that you include a `MessageGroupId` in all messages when
    #     using fair queues.
    #
    #   The length of `MessageGroupId` is 128 characters. Valid values:
    #   alphanumeric characters and punctuation ``
    #   (!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~) ``.
    #
    #   For best practices of using `MessageGroupId`, see [Using the
    #   MessageGroupId Property][1] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-messagegroupid-property.html
    # @return [Types::SendMessageResult]
    def send_message(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.send_message(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   queue.send_messages({
    #     entries: [ # required
    #       {
    #         id: "String", # required
    #         message_body: "String", # required
    #         delay_seconds: 1,
    #         message_attributes: {
    #           "String" => {
    #             string_value: "String",
    #             binary_value: "data",
    #             string_list_values: ["String"],
    #             binary_list_values: ["data"],
    #             data_type: "String", # required
    #           },
    #         },
    #         message_system_attributes: {
    #           "AWSTraceHeader" => {
    #             string_value: "String",
    #             binary_value: "data",
    #             string_list_values: ["String"],
    #             binary_list_values: ["data"],
    #             data_type: "String", # required
    #           },
    #         },
    #         message_deduplication_id: "String",
    #         message_group_id: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, Array<Types::SendMessageBatchRequestEntry>] :entries
    #   A list of ` SendMessageBatchRequestEntry ` items.
    # @return [Types::SendMessageBatchResult]
    def send_messages(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.send_message_batch(options)
      end
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   queue.set_attributes({
    #     attributes: { # required
    #       "All" => "String",
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [required, Hash<String,String>] :attributes
    #   A map of attributes to set.
    #
    #   The following lists the names, descriptions, and values of the special
    #   request parameters that the `SetQueueAttributes` action uses:
    #
    #   * `DelaySeconds` – The length of time, in seconds, for which the
    #     delivery of all messages in the queue is delayed. Valid values: An
    #     integer from 0 to 900 (15 minutes). Default: 0.
    #
    #   * `MaximumMessageSize` – The limit of how many bytes a message can
    #     contain before Amazon SQS rejects it. Valid values: An integer from
    #     1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). Default: 262,144
    #     (256 KiB).
    #
    #   * `MessageRetentionPeriod` – The length of time, in seconds, for which
    #     Amazon SQS retains a message. Valid values: An integer representing
    #     seconds, from 60 (1 minute) to 1,209,600 (14 days). Default: 345,600
    #     (4 days). When you change a queue's attributes, the change can take
    #     up to 60 seconds for most of the attributes to propagate throughout
    #     the Amazon SQS system. Changes made to the `MessageRetentionPeriod`
    #     attribute can take up to 15 minutes and will impact existing
    #     messages in the queue potentially causing them to be expired and
    #     deleted if the `MessageRetentionPeriod` is reduced below the age of
    #     existing messages.
    #
    #   * `Policy` – The queue's policy. A valid Amazon Web Services policy.
    #     For more information about policy structure, see [Overview of Amazon
    #     Web Services IAM Policies][1] in the *Identity and Access Management
    #     User Guide*.
    #
    #   * `ReceiveMessageWaitTimeSeconds` – The length of time, in seconds,
    #     for which a ` ReceiveMessage ` action waits for a message to arrive.
    #     Valid values: An integer from 0 to 20 (seconds). Default: 0.
    #
    #   * `VisibilityTimeout` – The visibility timeout for the queue, in
    #     seconds. Valid values: An integer from 0 to 43,200 (12 hours).
    #     Default: 30. For more information about the visibility timeout, see
    #     [Visibility Timeout][2] in the *Amazon SQS Developer Guide*.
    #
    #   The following attributes apply only to [dead-letter queues:][3]
    #
    #   * `RedrivePolicy` – The string that includes the parameters for the
    #     dead-letter queue functionality of the source queue as a JSON
    #     object. The parameters are as follows:
    #
    #     * `deadLetterTargetArn` – The Amazon Resource Name (ARN) of the
    #       dead-letter queue to which Amazon SQS moves messages after the
    #       value of `maxReceiveCount` is exceeded.
    #
    #     * `maxReceiveCount` – The number of times a message is delivered to
    #       the source queue before being moved to the dead-letter queue.
    #       Default: 10. When the `ReceiveCount` for a message exceeds the
    #       `maxReceiveCount` for a queue, Amazon SQS moves the message to the
    #       dead-letter-queue.
    #   * `RedriveAllowPolicy` – The string that includes the parameters for
    #     the permissions for the dead-letter queue redrive permission and
    #     which source queues can specify dead-letter queues as a JSON object.
    #     The parameters are as follows:
    #
    #     * `redrivePermission` – The permission type that defines which
    #       source queues can specify the current queue as the dead-letter
    #       queue. Valid values are:
    #
    #       * `allowAll` – (Default) Any source queues in this Amazon Web
    #         Services account in the same Region can specify this queue as
    #         the dead-letter queue.
    #
    #       * `denyAll` – No source queues can specify this queue as the
    #         dead-letter queue.
    #
    #       * `byQueue` – Only queues specified by the `sourceQueueArns`
    #         parameter can specify this queue as the dead-letter queue.
    #     * `sourceQueueArns` – The Amazon Resource Names (ARN)s of the source
    #       queues that can specify this queue as the dead-letter queue and
    #       redrive messages. You can specify this parameter only when the
    #       `redrivePermission` parameter is set to `byQueue`. You can specify
    #       up to 10 source queue ARNs. To allow more than 10 source queues to
    #       specify dead-letter queues, set the `redrivePermission` parameter
    #       to `allowAll`.
    #
    #   <note markdown="1"> The dead-letter queue of a FIFO queue must also be a FIFO queue.
    #   Similarly, the dead-letter queue of a standard queue must also be a
    #   standard queue.
    #
    #    </note>
    #
    #   The following attributes apply only to [server-side-encryption][4]:
    #
    #   * `KmsMasterKeyId` – The ID of an Amazon Web Services managed customer
    #     master key (CMK) for Amazon SQS or a custom CMK. For more
    #     information, see [Key Terms][5]. While the alias of the AWS-managed
    #     CMK for Amazon SQS is always `alias/aws/sqs`, the alias of a custom
    #     CMK can, for example, be `alias/MyAlias `. For more examples, see
    #     [KeyId][6] in the *Key Management Service API Reference*.
    #
    #   * `KmsDataKeyReusePeriodSeconds` – The length of time, in seconds, for
    #     which Amazon SQS can reuse a [data key][7] to encrypt or decrypt
    #     messages before calling KMS again. An integer representing seconds,
    #     between 60 seconds (1 minute) and 86,400 seconds (24 hours).
    #     Default: 300 (5 minutes). A shorter time period provides better
    #     security but results in more calls to KMS which might incur charges
    #     after Free Tier. For more information, see [How Does the Data Key
    #     Reuse Period Work?][8].
    #
    #   * `SqsManagedSseEnabled` – Enables server-side queue encryption using
    #     SQS owned encryption keys. Only one server-side encryption option is
    #     supported per queue (for example, [SSE-KMS][9] or [SSE-SQS][10]).
    #
    #   The following attribute applies only to [FIFO (first-in-first-out)
    #   queues][11]:
    #
    #   * `ContentBasedDeduplication` – Enables content-based deduplication.
    #     For more information, see [Exactly-once processing][12] in the
    #     *Amazon SQS Developer Guide*. Note the following:
    #
    #     * Every message must have a unique `MessageDeduplicationId`.
    #
    #       * You may provide a `MessageDeduplicationId` explicitly.
    #
    #       * If you aren't able to provide a `MessageDeduplicationId` and
    #         you enable `ContentBasedDeduplication` for your queue, Amazon
    #         SQS uses a SHA-256 hash to generate the `MessageDeduplicationId`
    #         using the body of the message (but not the attributes of the
    #         message).
    #
    #       * If you don't provide a `MessageDeduplicationId` and the queue
    #         doesn't have `ContentBasedDeduplication` set, the action fails
    #         with an error.
    #
    #       * If the queue has `ContentBasedDeduplication` set, your
    #         `MessageDeduplicationId` overrides the generated one.
    #     * When `ContentBasedDeduplication` is in effect, messages with
    #       identical content sent within the deduplication interval are
    #       treated as duplicates and only one copy of the message is
    #       delivered.
    #
    #     * If you send one message with `ContentBasedDeduplication` enabled
    #       and then another message with a `MessageDeduplicationId` that is
    #       the same as the one generated for the first
    #       `MessageDeduplicationId`, the two messages are treated as
    #       duplicates and only one copy of the message is delivered.
    #
    #   The following attributes apply only to [high throughput for FIFO
    #   queues][13]:
    #
    #   * `DeduplicationScope` – Specifies whether message deduplication
    #     occurs at the message group or queue level. Valid values are
    #     `messageGroup` and `queue`.
    #
    #   * `FifoThroughputLimit` – Specifies whether the FIFO queue throughput
    #     quota applies to the entire queue or per message group. Valid values
    #     are `perQueue` and `perMessageGroupId`. The `perMessageGroupId`
    #     value is allowed only when the value for `DeduplicationScope` is
    #     `messageGroup`.
    #
    #   To enable high throughput for FIFO queues, do the following:
    #
    #   * Set `DeduplicationScope` to `messageGroup`.
    #
    #   * Set `FifoThroughputLimit` to `perMessageGroupId`.
    #
    #   If you set these attributes to anything other than the values shown
    #   for enabling high throughput, normal throughput is in effect and
    #   deduplication occurs as specified.
    #
    #   For information on throughput quotas, see [Quotas related to
    #   messages][14] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [3]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [4]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html
    #   [5]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms
    #   [6]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters
    #   [7]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys
    #   [8]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work
    #   [9]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html
    #   [10]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html
    #   [11]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [12]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-exactly-once-processing.html
    #   [13]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/high-throughput-fifo.html
    #   [14]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/quotas-messages.html
    # @return [EmptyStructure]
    def set_attributes(options = {})
      options = options.merge(queue_url: @url)
      resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
        @client.set_queue_attributes(options)
      end
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   queue.dead_letter_source_queues()
    # @param [Hash] options ({})
    # @return [Queue::Collection]
    def dead_letter_source_queues(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(queue_url: @url)
        resp = Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do
          @client.list_dead_letter_source_queues(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.queue_urls.each do |q|
            batch << Queue.new(
              url: q,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Queue::Collection.new(batches)
    end

    # @param [String] receipt_handle
    # @return [Message]
    def message(receipt_handle)
      Message.new(
        queue_url: @url,
        receipt_handle: receipt_handle,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      { url: @url }
    end
    deprecated(:identifiers)

    private

    def extract_url(args, options)
      value = args[0] || options.delete(:url)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :url"
      else
        msg = "expected :url to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
