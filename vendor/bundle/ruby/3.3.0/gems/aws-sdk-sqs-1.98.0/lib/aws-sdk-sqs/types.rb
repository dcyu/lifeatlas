# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SQS
  module Types

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to which permissions are added.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The unique identification of the permission you're setting (for
    #   example, `AliceSendMessage`). Maximum 80 characters. Allowed
    #   characters include alphanumeric characters, hyphens (`-`), and
    #   underscores (`_`).
    #   @return [String]
    #
    # @!attribute [rw] aws_account_ids
    #   The Amazon Web Services account numbers of the [principals][1] who
    #   are to receive permission. For information about locating the Amazon
    #   Web Services account identification, see [Your Amazon Web Services
    #   Identifiers][2] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html#sqs-api-request-authentication
    #   @return [Array<String>]
    #
    # @!attribute [rw] actions
    #   The action the client wants to allow for the specified principal.
    #   Valid values: the name of any action or `*`.
    #
    #   For more information about these actions, see [Overview of Managing
    #   Access Permissions to Your Amazon Simple Queue Service Resource][1]
    #   in the *Amazon SQS Developer Guide*.
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
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/AddPermissionRequest AWS API Documentation
    #
    class AddPermissionRequest < Struct.new(
      :queue_url,
      :label,
      :aws_account_ids,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two or more batch entries in the request have the same `Id`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/BatchEntryIdsNotDistinct AWS API Documentation
    #
    class BatchEntryIdsNotDistinct < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The length of all the messages put together is more than the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/BatchRequestTooLong AWS API Documentation
    #
    class BatchRequestTooLong < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gives a detailed description of the result of an action on each entry
    # in the request.
    #
    # @!attribute [rw] id
    #   The `Id` of an entry in a batch request.
    #   @return [String]
    #
    # @!attribute [rw] sender_fault
    #   Specifies whether the error happened due to the caller of the batch
    #   API action.
    #   @return [Boolean]
    #
    # @!attribute [rw] code
    #   An error code representing why the action failed on this entry.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message explaining why the action failed on this entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/BatchResultErrorEntry AWS API Documentation
    #
    class BatchResultErrorEntry < Struct.new(
      :id,
      :sender_fault,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_handle
    #   An identifier associated with a message movement task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/CancelMessageMoveTaskRequest AWS API Documentation
    #
    class CancelMessageMoveTaskRequest < Struct.new(
      :task_handle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] approximate_number_of_messages_moved
    #   The approximate number of messages already moved to the destination
    #   queue.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/CancelMessageMoveTaskResult AWS API Documentation
    #
    class CancelMessageMoveTaskResult < Struct.new(
      :approximate_number_of_messages_moved)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue whose messages' visibility is
    #   changed.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   Lists the receipt handles of the messages for which the visibility
    #   timeout must be changed.
    #   @return [Array<Types::ChangeMessageVisibilityBatchRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibilityBatchRequest AWS API Documentation
    #
    class ChangeMessageVisibilityBatchRequest < Struct.new(
      :queue_url,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encloses a receipt handle and an entry ID for each message in `
    # ChangeMessageVisibilityBatch.`
    #
    # @!attribute [rw] id
    #   An identifier for this particular receipt handle used to communicate
    #   the result.
    #
    #   <note markdown="1"> The `Id`s of a batch request need to be unique within a request.
    #
    #    This identifier can have up to 80 characters. The following
    #   characters are accepted: alphanumeric characters, hyphens(-), and
    #   underscores (\_).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   A receipt handle.
    #   @return [String]
    #
    # @!attribute [rw] visibility_timeout
    #   The new value (in seconds) for the message's visibility timeout.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibilityBatchRequestEntry AWS API Documentation
    #
    class ChangeMessageVisibilityBatchRequestEntry < Struct.new(
      :id,
      :receipt_handle,
      :visibility_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # For each message in the batch, the response contains a `
    # ChangeMessageVisibilityBatchResultEntry ` tag if the message succeeds
    # or a ` BatchResultErrorEntry ` tag if the message fails.
    #
    # @!attribute [rw] successful
    #   A list of ` ChangeMessageVisibilityBatchResultEntry ` items.
    #   @return [Array<Types::ChangeMessageVisibilityBatchResultEntry>]
    #
    # @!attribute [rw] failed
    #   A list of ` BatchResultErrorEntry ` items.
    #   @return [Array<Types::BatchResultErrorEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibilityBatchResult AWS API Documentation
    #
    class ChangeMessageVisibilityBatchResult < Struct.new(
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encloses the `Id` of an entry in ` ChangeMessageVisibilityBatch.`
    #
    # @!attribute [rw] id
    #   Represents a message whose visibility timeout has been changed
    #   successfully.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibilityBatchResultEntry AWS API Documentation
    #
    class ChangeMessageVisibilityBatchResultEntry < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue whose message's visibility is
    #   changed.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   The receipt handle associated with the message, whose visibility
    #   timeout is changed. This parameter is returned by the `
    #   ReceiveMessage ` action.
    #   @return [String]
    #
    # @!attribute [rw] visibility_timeout
    #   The new value for the message's visibility timeout (in seconds).
    #   Values range: `0` to `43200`. Maximum: 12 hours.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ChangeMessageVisibilityRequest AWS API Documentation
    #
    class ChangeMessageVisibilityRequest < Struct.new(
      :queue_url,
      :receipt_handle,
      :visibility_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_name
    #   The name of the new queue. The following limits apply to this name:
    #
    #   * A queue name can have up to 80 characters.
    #
    #   * Valid values: alphanumeric characters, hyphens (`-`), and
    #     underscores (`_`).
    #
    #   * A FIFO queue name must end with the `.fifo` suffix.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A map of attributes with their corresponding values.
    #
    #   The following lists the names, descriptions, and values of the
    #   special request parameters that the `CreateQueue` action uses:
    #
    #   * `DelaySeconds` – The length of time, in seconds, for which the
    #     delivery of all messages in the queue is delayed. Valid values: An
    #     integer from 0 to 900 seconds (15 minutes). Default: 0.
    #
    #   * `MaximumMessageSize` – The limit of how many bytes a message can
    #     contain before Amazon SQS rejects it. Valid values: An integer
    #     from 1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). Default:
    #     262,144 (256 KiB).
    #
    #   * `MessageRetentionPeriod` – The length of time, in seconds, for
    #     which Amazon SQS retains a message. Valid values: An integer from
    #     60 seconds (1 minute) to 1,209,600 seconds (14 days). Default:
    #     345,600 (4 days). When you change a queue's attributes, the
    #     change can take up to 60 seconds for most of the attributes to
    #     propagate throughout the Amazon SQS system. Changes made to the
    #     `MessageRetentionPeriod` attribute can take up to 15 minutes and
    #     will impact existing messages in the queue potentially causing
    #     them to be expired and deleted if the `MessageRetentionPeriod` is
    #     reduced below the age of existing messages.
    #
    #   * `Policy` – The queue's policy. A valid Amazon Web Services
    #     policy. For more information about policy structure, see [Overview
    #     of Amazon Web Services IAM Policies][1] in the *IAM User Guide*.
    #
    #   * `ReceiveMessageWaitTimeSeconds` – The length of time, in seconds,
    #     for which a ` ReceiveMessage ` action waits for a message to
    #     arrive. Valid values: An integer from 0 to 20 (seconds). Default:
    #     0.
    #
    #   * `VisibilityTimeout` – The visibility timeout for the queue, in
    #     seconds. Valid values: An integer from 0 to 43,200 (12 hours).
    #     Default: 30. For more information about the visibility timeout,
    #     see [Visibility Timeout][2] in the *Amazon SQS Developer Guide*.
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
    #     * `maxReceiveCount` – The number of times a message is delivered
    #       to the source queue before being moved to the dead-letter queue.
    #       Default: 10. When the `ReceiveCount` for a message exceeds the
    #       `maxReceiveCount` for a queue, Amazon SQS moves the message to
    #       the dead-letter-queue.
    #   * `RedriveAllowPolicy` – The string that includes the parameters for
    #     the permissions for the dead-letter queue redrive permission and
    #     which source queues can specify dead-letter queues as a JSON
    #     object. The parameters are as follows:
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
    #     * `sourceQueueArns` – The Amazon Resource Names (ARN)s of the
    #       source queues that can specify this queue as the dead-letter
    #       queue and redrive messages. You can specify this parameter only
    #       when the `redrivePermission` parameter is set to `byQueue`. You
    #       can specify up to 10 source queue ARNs. To allow more than 10
    #       source queues to specify dead-letter queues, set the
    #       `redrivePermission` parameter to `allowAll`.
    #
    #   <note markdown="1"> The dead-letter queue of a FIFO queue must also be a FIFO queue.
    #   Similarly, the dead-letter queue of a standard queue must also be a
    #   standard queue.
    #
    #    </note>
    #
    #   The following attributes apply only to [server-side-encryption][4]:
    #
    #   * `KmsMasterKeyId` – The ID of an Amazon Web Services managed
    #     customer master key (CMK) for Amazon SQS or a custom CMK. For more
    #     information, see [Key Terms][5]. While the alias of the Amazon Web
    #     Services managed CMK for Amazon SQS is always `alias/aws/sqs`, the
    #     alias of a custom CMK can, for example, be `alias/MyAlias `. For
    #     more examples, see [KeyId][6] in the *Key Management Service API
    #     Reference*.
    #
    #   * `KmsDataKeyReusePeriodSeconds` – The length of time, in seconds,
    #     for which Amazon SQS can reuse a [data key][7] to encrypt or
    #     decrypt messages before calling KMS again. An integer representing
    #     seconds, between 60 seconds (1 minute) and 86,400 seconds (24
    #     hours). Default: 300 (5 minutes). A shorter time period provides
    #     better security but results in more calls to KMS which might incur
    #     charges after Free Tier. For more information, see [How Does the
    #     Data Key Reuse Period Work?][8]
    #
    #   * `SqsManagedSseEnabled` – Enables server-side queue encryption
    #     using SQS owned encryption keys. Only one server-side encryption
    #     option is supported per queue (for example, [SSE-KMS][9] or
    #     [SSE-SQS][10]).
    #
    #   The following attributes apply only to [FIFO (first-in-first-out)
    #   queues][11]:
    #
    #   * `FifoQueue` – Designates a queue as FIFO. Valid values are `true`
    #     and `false`. If you don't specify the `FifoQueue` attribute,
    #     Amazon SQS creates a standard queue. You can provide this
    #     attribute only during queue creation. You can't change it for an
    #     existing queue. When you set this attribute, you must also provide
    #     the `MessageGroupId` for your messages explicitly.
    #
    #     For more information, see [FIFO queue logic][12] in the *Amazon
    #     SQS Developer Guide*.
    #
    #   * `ContentBasedDeduplication` – Enables content-based deduplication.
    #     Valid values are `true` and `false`. For more information, see
    #     [Exactly-once processing][13] in the *Amazon SQS Developer Guide*.
    #     Note the following:
    #
    #     * Every message must have a unique `MessageDeduplicationId`.
    #
    #       * You may provide a `MessageDeduplicationId` explicitly.
    #
    #       * If you aren't able to provide a `MessageDeduplicationId` and
    #         you enable `ContentBasedDeduplication` for your queue, Amazon
    #         SQS uses a SHA-256 hash to generate the
    #         `MessageDeduplicationId` using the body of the message (but
    #         not the attributes of the message).
    #
    #       * If you don't provide a `MessageDeduplicationId` and the queue
    #         doesn't have `ContentBasedDeduplication` set, the action
    #         fails with an error.
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
    #   queues][14]:
    #
    #   * `DeduplicationScope` – Specifies whether message deduplication
    #     occurs at the message group or queue level. Valid values are
    #     `messageGroup` and `queue`.
    #
    #   * `FifoThroughputLimit` – Specifies whether the FIFO queue
    #     throughput quota applies to the entire queue or per message group.
    #     Valid values are `perQueue` and `perMessageGroupId`. The
    #     `perMessageGroupId` value is allowed only when the value for
    #     `DeduplicationScope` is `messageGroup`.
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
    #   messages][15] in the *Amazon SQS Developer Guide*.
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
    #   [12]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-understanding-logic.html
    #   [13]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-exactly-once-processing.html
    #   [14]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/high-throughput-fifo.html
    #   [15]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/quotas-messages.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   Add cost allocation tags to the specified Amazon SQS queue. For an
    #   overview, see [Tagging Your Amazon SQS Queues][1] in the *Amazon SQS
    #   Developer Guide*.
    #
    #   When you use queue tags, keep the following guidelines in mind:
    #
    #   * Adding more than 50 tags to a queue isn't recommended.
    #
    #   * Tags don't have any semantic meaning. Amazon SQS interprets tags
    #     as character strings.
    #
    #   * Tags are case-sensitive.
    #
    #   * A new tag with a key identical to that of an existing tag
    #     overwrites the existing tag.
    #
    #   For a full list of tag restrictions, see [Quotas related to
    #   queues][2] in the *Amazon SQS Developer Guide*.
    #
    #   <note markdown="1"> To be able to tag a queue on creation, you must have the
    #   `sqs:CreateQueue` and `sqs:TagQueue` permissions.
    #
    #    Cross-account permissions don't apply to this action. For more
    #   information, see [Grant cross-account permissions to a role and a
    #   username][3] in the *Amazon SQS Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues
    #   [3]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/CreateQueueRequest AWS API Documentation
    #
    class CreateQueueRequest < Struct.new(
      :queue_name,
      :attributes,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the `QueueUrl` attribute of the created queue.
    #
    # @!attribute [rw] queue_url
    #   The URL of the created Amazon SQS queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/CreateQueueResult AWS API Documentation
    #
    class CreateQueueResult < Struct.new(
      :queue_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue from which messages are deleted.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   Lists the receipt handles for the messages to be deleted.
    #   @return [Array<Types::DeleteMessageBatchRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessageBatchRequest AWS API Documentation
    #
    class DeleteMessageBatchRequest < Struct.new(
      :queue_url,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encloses a receipt handle and an identifier for it.
    #
    # @!attribute [rw] id
    #   The identifier for this particular receipt handle. This is used to
    #   communicate the result.
    #
    #   <note markdown="1"> The `Id`s of a batch request need to be unique within a request.
    #
    #    This identifier can have up to 80 characters. The following
    #   characters are accepted: alphanumeric characters, hyphens(-), and
    #   underscores (\_).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   A receipt handle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessageBatchRequestEntry AWS API Documentation
    #
    class DeleteMessageBatchRequestEntry < Struct.new(
      :id,
      :receipt_handle)
      SENSITIVE = []
      include Aws::Structure
    end

    # For each message in the batch, the response contains a `
    # DeleteMessageBatchResultEntry ` tag if the message is deleted or a `
    # BatchResultErrorEntry ` tag if the message can't be deleted.
    #
    # @!attribute [rw] successful
    #   A list of ` DeleteMessageBatchResultEntry ` items.
    #   @return [Array<Types::DeleteMessageBatchResultEntry>]
    #
    # @!attribute [rw] failed
    #   A list of ` BatchResultErrorEntry ` items.
    #   @return [Array<Types::BatchResultErrorEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessageBatchResult AWS API Documentation
    #
    class DeleteMessageBatchResult < Struct.new(
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encloses the `Id` of an entry in ` DeleteMessageBatch.`
    #
    # @!attribute [rw] id
    #   Represents a successfully deleted message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessageBatchResultEntry AWS API Documentation
    #
    class DeleteMessageBatchResultEntry < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue from which messages are deleted.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   The receipt handle associated with the message to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteMessageRequest AWS API Documentation
    #
    class DeleteMessageRequest < Struct.new(
      :queue_url,
      :receipt_handle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to delete.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/DeleteQueueRequest AWS API Documentation
    #
    class DeleteQueueRequest < Struct.new(
      :queue_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The batch request doesn't contain any entries.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/EmptyBatchRequest AWS API Documentation
    #
    class EmptyBatchRequest < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue whose attribute information is
    #   retrieved.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   A list of attributes for which to retrieve information.
    #
    #   The `AttributeNames` parameter is optional, but if you don't
    #   specify values for this parameter, the request returns empty
    #   results.
    #
    #   <note markdown="1"> In the future, new attributes might be added. If you write code that
    #   calls this action, we recommend that you structure your code so that
    #   it can handle new attributes gracefully.
    #
    #    </note>
    #
    #   The following attributes are supported:
    #
    #   The `ApproximateNumberOfMessagesDelayed`,
    #   `ApproximateNumberOfMessagesNotVisible`, and
    #   `ApproximateNumberOfMessages` metrics may not achieve consistency
    #   until at least 1 minute after the producers stop sending messages.
    #   This period is required for the queue metadata to reach eventual
    #   consistency.
    #
    #   * `All` – Returns all values.
    #
    #   * `ApproximateNumberOfMessages` – Returns the approximate number of
    #     messages available for retrieval from the queue.
    #
    #   * `ApproximateNumberOfMessagesDelayed` – Returns the approximate
    #     number of messages in the queue that are delayed and not available
    #     for reading immediately. This can happen when the queue is
    #     configured as a delay queue or when a message has been sent with a
    #     delay parameter.
    #
    #   * `ApproximateNumberOfMessagesNotVisible` – Returns the approximate
    #     number of messages that are in flight. Messages are considered to
    #     be *in flight* if they have been sent to a client but have not yet
    #     been deleted or have not yet reached the end of their visibility
    #     window.
    #
    #   * `CreatedTimestamp` – Returns the time when the queue was created
    #     in seconds ([epoch time][1]).
    #
    #   * `DelaySeconds` – Returns the default delay on the queue in
    #     seconds.
    #
    #   * `LastModifiedTimestamp` – Returns the time when the queue was last
    #     changed in seconds ([epoch time][1]).
    #
    #   * `MaximumMessageSize` – Returns the limit of how many bytes a
    #     message can contain before Amazon SQS rejects it.
    #
    #   * `MessageRetentionPeriod` – Returns the length of time, in seconds,
    #     for which Amazon SQS retains a message. When you change a queue's
    #     attributes, the change can take up to 60 seconds for most of the
    #     attributes to propagate throughout the Amazon SQS system. Changes
    #     made to the `MessageRetentionPeriod` attribute can take up to 15
    #     minutes and will impact existing messages in the queue potentially
    #     causing them to be expired and deleted if the
    #     `MessageRetentionPeriod` is reduced below the age of existing
    #     messages.
    #
    #   * `Policy` – Returns the policy of the queue.
    #
    #   * `QueueArn` – Returns the Amazon resource name (ARN) of the queue.
    #
    #   * `ReceiveMessageWaitTimeSeconds` – Returns the length of time, in
    #     seconds, for which the `ReceiveMessage` action waits for a message
    #     to arrive.
    #
    #   * `VisibilityTimeout` – Returns the visibility timeout for the
    #     queue. For more information about the visibility timeout, see
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
    #     * `maxReceiveCount` – The number of times a message is delivered
    #       to the source queue before being moved to the dead-letter queue.
    #       Default: 10. When the `ReceiveCount` for a message exceeds the
    #       `maxReceiveCount` for a queue, Amazon SQS moves the message to
    #       the dead-letter-queue.
    #   * `RedriveAllowPolicy` – The string that includes the parameters for
    #     the permissions for the dead-letter queue redrive permission and
    #     which source queues can specify dead-letter queues as a JSON
    #     object. The parameters are as follows:
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
    #     * `sourceQueueArns` – The Amazon Resource Names (ARN)s of the
    #       source queues that can specify this queue as the dead-letter
    #       queue and redrive messages. You can specify this parameter only
    #       when the `redrivePermission` parameter is set to `byQueue`. You
    #       can specify up to 10 source queue ARNs. To allow more than 10
    #       source queues to specify dead-letter queues, set the
    #       `redrivePermission` parameter to `allowAll`.
    #
    #   <note markdown="1"> The dead-letter queue of a FIFO queue must also be a FIFO queue.
    #   Similarly, the dead-letter queue of a standard queue must also be a
    #   standard queue.
    #
    #    </note>
    #
    #   The following attributes apply only to [server-side-encryption][4]:
    #
    #   * `KmsMasterKeyId` – Returns the ID of an Amazon Web Services
    #     managed customer master key (CMK) for Amazon SQS or a custom CMK.
    #     For more information, see [Key Terms][5].
    #
    #   * `KmsDataKeyReusePeriodSeconds` – Returns the length of time, in
    #     seconds, for which Amazon SQS can reuse a data key to encrypt or
    #     decrypt messages before calling KMS again. For more information,
    #     see [How Does the Data Key Reuse Period Work?][6].
    #
    #   * `SqsManagedSseEnabled` – Returns information about whether the
    #     queue is using SSE-SQS encryption using SQS owned encryption keys.
    #     Only one server-side encryption option is supported per queue (for
    #     example, [SSE-KMS][7] or [SSE-SQS][8]).
    #
    #   The following attributes apply only to [FIFO (first-in-first-out)
    #   queues][9]:
    #
    #   * `FifoQueue` – Returns information about whether the queue is FIFO.
    #     For more information, see [FIFO queue logic][10] in the *Amazon
    #     SQS Developer Guide*.
    #
    #     <note markdown="1"> To determine whether a queue is [FIFO][9], you can check whether
    #     `QueueName` ends with the `.fifo` suffix.
    #
    #      </note>
    #
    #   * `ContentBasedDeduplication` – Returns whether content-based
    #     deduplication is enabled for the queue. For more information, see
    #     [Exactly-once processing][11] in the *Amazon SQS Developer Guide*.
    #
    #   The following attributes apply only to [high throughput for FIFO
    #   queues][12]:
    #
    #   * `DeduplicationScope` – Specifies whether message deduplication
    #     occurs at the message group or queue level. Valid values are
    #     `messageGroup` and `queue`.
    #
    #   * `FifoThroughputLimit` – Specifies whether the FIFO queue
    #     throughput quota applies to the entire queue or per message group.
    #     Valid values are `perQueue` and `perMessageGroupId`. The
    #     `perMessageGroupId` value is allowed only when the value for
    #     `DeduplicationScope` is `messageGroup`.
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
    #   messages][13] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Unix_time
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [3]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
    #   [4]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html
    #   [5]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms
    #   [6]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work
    #   [7]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html
    #   [8]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html
    #   [9]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html
    #   [10]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-understanding-logic.html
    #   [11]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues-exactly-once-processing.html
    #   [12]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/high-throughput-fifo.html
    #   [13]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/quotas-messages.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/GetQueueAttributesRequest AWS API Documentation
    #
    class GetQueueAttributesRequest < Struct.new(
      :queue_url,
      :attribute_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of returned queue attributes.
    #
    # @!attribute [rw] attributes
    #   A map of attributes to their respective values.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/GetQueueAttributesResult AWS API Documentation
    #
    class GetQueueAttributesResult < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves the URL of an existing queue based on its name and,
    # optionally, the Amazon Web Services account ID.
    #
    # @!attribute [rw] queue_name
    #   (Required) The name of the queue for which you want to fetch the
    #   URL. The name can be up to 80 characters long and can include
    #   alphanumeric characters, hyphens (-), and underscores (\_). Queue
    #   URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] queue_owner_aws_account_id
    #   (Optional) The Amazon Web Services account ID of the account that
    #   created the queue. This is only required when you are attempting to
    #   access a queue owned by another Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/GetQueueUrlRequest AWS API Documentation
    #
    class GetQueueUrlRequest < Struct.new(
      :queue_name,
      :queue_owner_aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # For more information, see [Interpreting Responses][1] in the *Amazon
    # SQS Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-api-responses.html
    #
    # @!attribute [rw] queue_url
    #   The URL of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/GetQueueUrlResult AWS API Documentation
    #
    class GetQueueUrlResult < Struct.new(
      :queue_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified ID is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/InvalidAddress AWS API Documentation
    #
    class InvalidAddress < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified attribute doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/InvalidAttributeName AWS API Documentation
    #
    class InvalidAttributeName < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A queue attribute value is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/InvalidAttributeValue AWS API Documentation
    #
    class InvalidAttributeValue < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `Id` of a batch entry in a batch request doesn't abide by the
    # specification.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/InvalidBatchEntryId AWS API Documentation
    #
    class InvalidBatchEntryId < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified receipt handle isn't valid for the current version.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/InvalidIdFormat AWS API Documentation
    #
    class InvalidIdFormat < Aws::EmptyStructure; end

    # The message contains characters outside the allowed set.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/InvalidMessageContents AWS API Documentation
    #
    class InvalidMessageContents < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was not made over HTTPS or did not use SigV4 for signing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/InvalidSecurity AWS API Documentation
    #
    class InvalidSecurity < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller doesn't have the required KMS access.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/KmsAccessDenied AWS API Documentation
    #
    class KmsAccessDenied < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/KmsDisabled AWS API Documentation
    #
    class KmsDisabled < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected for one of the following reasons:
    #
    # * The KeyUsage value of the KMS key is incompatible with the API
    #   operation.
    #
    # * The encryption algorithm or signing algorithm specified for the
    #   operation is incompatible with the type of key material in the KMS
    #   key (KeySpec).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/KmsInvalidKeyUsage AWS API Documentation
    #
    class KmsInvalidKeyUsage < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the state of the specified resource
    # is not valid for this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/KmsInvalidState AWS API Documentation
    #
    class KmsInvalidState < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified entity or resource
    # could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/KmsNotFound AWS API Documentation
    #
    class KmsNotFound < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified key policy isn't
    # syntactically or semantically correct.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/KmsOptInRequired AWS API Documentation
    #
    class KmsOptInRequired < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Web Services KMS throttles requests for the following
    # conditions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/KmsThrottled AWS API Documentation
    #
    class KmsThrottled < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of a dead-letter queue.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. Value range is
    #   1 to 1000. You must set `MaxResults` to receive a value for
    #   `NextToken` in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListDeadLetterSourceQueuesRequest AWS API Documentation
    #
    class ListDeadLetterSourceQueuesRequest < Struct.new(
      :queue_url,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of your dead letter source queues.
    #
    # @!attribute [rw] queue_urls
    #   A list of source queue URLs that have the `RedrivePolicy` queue
    #   attribute configured with a dead-letter queue.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to include in the next request. Token value is
    #   `null` if there are no additional results to request, or if you did
    #   not set `MaxResults` in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListDeadLetterSourceQueuesResult AWS API Documentation
    #
    class ListDeadLetterSourceQueuesResult < Struct.new(
      :queue_urls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_arn
    #   The ARN of the queue whose message movement tasks are to be listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. The
    #   default is 1, which provides the most recent message movement task.
    #   The upper limit is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListMessageMoveTasksRequest AWS API Documentation
    #
    class ListMessageMoveTasksRequest < Struct.new(
      :source_arn,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   A list of message movement tasks and their attributes.
    #   @return [Array<Types::ListMessageMoveTasksResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListMessageMoveTasksResult AWS API Documentation
    #
    class ListMessageMoveTasksResult < Struct.new(
      :results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of a message movement task.
    #
    # @!attribute [rw] task_handle
    #   An identifier associated with a message movement task. When this
    #   field is returned in the response of the `ListMessageMoveTasks`
    #   action, it is only populated for tasks that are in RUNNING status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the message movement task. Possible values are:
    #   RUNNING, COMPLETED, CANCELLING, CANCELLED, and FAILED.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the queue that contains the messages to be moved to
    #   another queue.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the destination queue if it has been specified in the
    #   `StartMessageMoveTask` request. If a `DestinationArn` has not been
    #   specified in the `StartMessageMoveTask` request, this field value
    #   will be NULL.
    #   @return [String]
    #
    # @!attribute [rw] max_number_of_messages_per_second
    #   The number of messages to be moved per second (the message movement
    #   rate), if it has been specified in the `StartMessageMoveTask`
    #   request. If a `MaxNumberOfMessagesPerSecond` has not been specified
    #   in the `StartMessageMoveTask` request, this field value will be
    #   NULL.
    #   @return [Integer]
    #
    # @!attribute [rw] approximate_number_of_messages_moved
    #   The approximate number of messages already moved to the destination
    #   queue.
    #   @return [Integer]
    #
    # @!attribute [rw] approximate_number_of_messages_to_move
    #   The number of messages to be moved from the source queue. This
    #   number is obtained at the time of starting the message movement task
    #   and is only included after the message movement task is selected to
    #   start.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_reason
    #   The task failure reason (only included if the task status is
    #   FAILED).
    #   @return [String]
    #
    # @!attribute [rw] started_timestamp
    #   The timestamp of starting the message movement task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListMessageMoveTasksResultEntry AWS API Documentation
    #
    class ListMessageMoveTasksResultEntry < Struct.new(
      :task_handle,
      :status,
      :source_arn,
      :destination_arn,
      :max_number_of_messages_per_second,
      :approximate_number_of_messages_moved,
      :approximate_number_of_messages_to_move,
      :failure_reason,
      :started_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListQueueTagsRequest AWS API Documentation
    #
    class ListQueueTagsRequest < Struct.new(
      :queue_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of all tags added to the specified queue.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListQueueTagsResult AWS API Documentation
    #
    class ListQueueTagsResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_name_prefix
    #   A string to use for filtering the list results. Only those queues
    #   whose name begins with the specified string are returned.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to include in the response. Value range is
    #   1 to 1000. You must set `MaxResults` to receive a value for
    #   `NextToken` in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListQueuesRequest AWS API Documentation
    #
    class ListQueuesRequest < Struct.new(
      :queue_name_prefix,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of your queues.
    #
    # @!attribute [rw] queue_urls
    #   A list of queue URLs, up to 1,000 entries, or the value of
    #   `MaxResults` that you sent in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to include in the next request. Token value is
    #   `null` if there are no additional results to request, or if you did
    #   not set `MaxResults` in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ListQueuesResult AWS API Documentation
    #
    class ListQueuesResult < Struct.new(
      :queue_urls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon SQS message.
    #
    # @!attribute [rw] message_id
    #   A unique identifier for the message. A `MessageId`is considered
    #   unique across all Amazon Web Services accounts for an extended
    #   period of time.
    #   @return [String]
    #
    # @!attribute [rw] receipt_handle
    #   An identifier associated with the act of receiving the message. A
    #   new receipt handle is returned every time you receive a message.
    #   When deleting a message, you provide the last received receipt
    #   handle to delete the message.
    #   @return [String]
    #
    # @!attribute [rw] md5_of_body
    #   An MD5 digest of the non-URL-encoded message body string.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The message's contents (not URL-encoded).
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A map of the attributes requested in ` ReceiveMessage ` to their
    #   respective values. Supported attributes:
    #
    #   * `ApproximateReceiveCount`
    #
    #   * `ApproximateFirstReceiveTimestamp`
    #
    #   * `MessageDeduplicationId`
    #
    #   * `MessageGroupId`
    #
    #   * `SenderId`
    #
    #   * `SentTimestamp`
    #
    #   * `SequenceNumber`
    #
    #   `ApproximateFirstReceiveTimestamp` and `SentTimestamp` are each
    #   returned as an integer representing the [epoch time][1] in
    #   milliseconds.
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/Unix_time
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] md5_of_message_attributes
    #   An MD5 digest of the non-URL-encoded message attribute string. You
    #   can use this attribute to verify that Amazon SQS received the
    #   message correctly. Amazon SQS URL-decodes the message before
    #   creating the MD5 digest. For information about MD5, see
    #   [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] message_attributes
    #   Each message attribute consists of a `Name`, `Type`, and `Value`.
    #   For more information, see [Amazon SQS message attributes][1] in the
    #   *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/Message AWS API Documentation
    #
    class Message < Struct.new(
      :message_id,
      :receipt_handle,
      :md5_of_body,
      :body,
      :attributes,
      :md5_of_message_attributes,
      :message_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user-specified message attribute value. For string data types, the
    # `Value` attribute has the same restrictions on the content as the
    # message body. For more information, see ` SendMessage.`
    #
    # `Name`, `type`, `value` and the message body must not be empty or
    # null. All parts of the message attribute, including `Name`, `Type`,
    # and `Value`, are part of the message size restriction (256 KiB or
    # 262,144 bytes).
    #
    # @!attribute [rw] string_value
    #   Strings are Unicode with UTF-8 binary encoding. For a list of code
    #   values, see [ASCII Printable Characters][1].
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
    #   @return [String]
    #
    # @!attribute [rw] binary_value
    #   Binary type attributes can store any binary data, such as compressed
    #   data, encrypted data, or images.
    #   @return [String]
    #
    # @!attribute [rw] string_list_values
    #   Not implemented. Reserved for future use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] binary_list_values
    #   Not implemented. Reserved for future use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_type
    #   Amazon SQS supports the following logical data types: `String`,
    #   `Number`, and `Binary`. For the `Number` data type, you must use
    #   `StringValue`.
    #
    #   You can also append custom labels. For more information, see [Amazon
    #   SQS Message Attributes][1] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/MessageAttributeValue AWS API Documentation
    #
    class MessageAttributeValue < Struct.new(
      :string_value,
      :binary_value,
      :string_list_values,
      :binary_list_values,
      :data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified message isn't in flight.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/MessageNotInflight AWS API Documentation
    #
    class MessageNotInflight < Aws::EmptyStructure; end

    # The user-specified message system attribute value. For string data
    # types, the `Value` attribute has the same restrictions on the content
    # as the message body. For more information, see ` SendMessage.`
    #
    # `Name`, `type`, `value` and the message body must not be empty or
    # null.
    #
    # @!attribute [rw] string_value
    #   Strings are Unicode with UTF-8 binary encoding. For a list of code
    #   values, see [ASCII Printable Characters][1].
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
    #   @return [String]
    #
    # @!attribute [rw] binary_value
    #   Binary type attributes can store any binary data, such as compressed
    #   data, encrypted data, or images.
    #   @return [String]
    #
    # @!attribute [rw] string_list_values
    #   Not implemented. Reserved for future use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] binary_list_values
    #   Not implemented. Reserved for future use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_type
    #   Amazon SQS supports the following logical data types: `String`,
    #   `Number`, and `Binary`. For the `Number` data type, you must use
    #   `StringValue`.
    #
    #   You can also append custom labels. For more information, see [Amazon
    #   SQS Message Attributes][1] in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/MessageSystemAttributeValue AWS API Documentation
    #
    class MessageSystemAttributeValue < Struct.new(
      :string_value,
      :binary_value,
      :string_list_values,
      :binary_list_values,
      :data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified action violates a limit. For example, `ReceiveMessage`
    # returns this error if the maximum number of in flight messages is
    # reached and `AddPermission` returns this error if the maximum number
    # of permissions for the queue is reached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/OverLimit AWS API Documentation
    #
    class OverLimit < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the specified queue previously received a `PurgeQueue`
    # request within the last 60 seconds (the time it can take to delete the
    # messages in the queue).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/PurgeQueueInProgress AWS API Documentation
    #
    class PurgeQueueInProgress < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the queue from which the `PurgeQueue` action deletes
    #   messages.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/PurgeQueueRequest AWS API Documentation
    #
    class PurgeQueueRequest < Struct.new(
      :queue_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # You must wait 60 seconds after deleting a queue before you can create
    # another queue with the same name.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/QueueDeletedRecently AWS API Documentation
    #
    class QueueDeletedRecently < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ensure that the `QueueUrl` is correct and that the queue has not been
    # deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/QueueDoesNotExist AWS API Documentation
    #
    class QueueDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A queue with this name already exists. Amazon SQS returns this error
    # only if the request includes attributes whose values differ from those
    # of the existing queue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/QueueNameExists AWS API Documentation
    #
    class QueueNameExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified receipt handle isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ReceiptHandleIsInvalid AWS API Documentation
    #
    class ReceiptHandleIsInvalid < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves one or more messages from a specified queue.
    #
    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue from which messages are received.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   This parameter has been discontinued but will be supported for
    #   backward compatibility. To provide attribute names, you are
    #   encouraged to use `MessageSystemAttributeNames`.
    #
    #   A list of attributes that need to be returned along with each
    #   message. These attributes include:
    #
    #   * `All` – Returns all values.
    #
    #   * `ApproximateFirstReceiveTimestamp` – Returns the time the message
    #     was first received from the queue ([epoch time][1] in
    #     milliseconds).
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
    #   * `SentTimestamp` – Returns the time the message was sent to the
    #     queue ([epoch time][1] in milliseconds).
    #
    #   * `SqsManagedSseEnabled` – Enables server-side queue encryption
    #     using SQS owned encryption keys. Only one server-side encryption
    #     option is supported per queue (for example, [SSE-KMS][2] or
    #     [SSE-SQS][3]).
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] message_system_attribute_names
    #   A list of attributes that need to be returned along with each
    #   message. These attributes include:
    #
    #   * `All` – Returns all values.
    #
    #   * `ApproximateFirstReceiveTimestamp` – Returns the time the message
    #     was first received from the queue ([epoch time][1] in
    #     milliseconds).
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
    #   * `SentTimestamp` – Returns the time the message was sent to the
    #     queue ([epoch time][1] in milliseconds).
    #
    #   * `SqsManagedSseEnabled` – Enables server-side queue encryption
    #     using SQS owned encryption keys. Only one server-side encryption
    #     option is supported per queue (for example, [SSE-KMS][2] or
    #     [SSE-SQS][3]).
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
    #   @return [Array<String>]
    #
    # @!attribute [rw] message_attribute_names
    #   The name of the message attribute, where *N* is the index.
    #
    #   * The name can contain alphanumeric characters and the underscore
    #     (`_`), hyphen (`-`), and period (`.`).
    #
    #   * The name is case-sensitive and must be unique among all attribute
    #     names for the message.
    #
    #   * The name must not start with AWS-reserved prefixes such as `AWS.`
    #     or `Amazon.` (or any casing variants).
    #
    #   * The name must not start or end with a period (`.`), and it should
    #     not have periods in succession (`..`).
    #
    #   * The name can be up to 256 characters long.
    #
    #   When using `ReceiveMessage`, you can send a list of attribute names
    #   to receive, or you can return all of the attributes by specifying
    #   `All` or `.*` in your request. You can also use all message
    #   attributes starting with a prefix, for example `bar.*`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_number_of_messages
    #   The maximum number of messages to return. Amazon SQS never returns
    #   more messages than this value (however, fewer messages might be
    #   returned). Valid values: 1 to 10. Default: 1.
    #   @return [Integer]
    #
    # @!attribute [rw] visibility_timeout
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
    #     delays the reprocessing of messages if the initial processing
    #     fails.
    #
    #   * You can adjust the visibility timeout using the
    #     `--visibility-timeout` parameter in the `receive-message` command
    #     to match the processing time required by your application.
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
    #   @return [Integer]
    #
    # @!attribute [rw] wait_time_seconds
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
    #   parameter. For example, with the Java SDK, you can set HTTP
    #   transport settings using the [ NettyNioAsyncHttpClient][1] for
    #   asynchronous clients, or the [ ApacheHttpClient][2] for synchronous
    #   clients.
    #
    #
    #
    #   [1]: https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/nio/netty/NettyNioAsyncHttpClient.html
    #   [2]: https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/apache/ApacheHttpClient.html
    #   @return [Integer]
    #
    # @!attribute [rw] receive_request_attempt_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of `ReceiveMessage` calls. If a
    #   networking issue occurs after a `ReceiveMessage` action, and instead
    #   of a response you receive a generic error, it is possible to retry
    #   the same action with an identical `ReceiveRequestAttemptId` to
    #   retrieve the same set of messages, even if their visibility timeout
    #   has not yet expired.
    #
    #   * You can use `ReceiveRequestAttemptId` only for 5 minutes after a
    #     `ReceiveMessage` action.
    #
    #   * When you set `FifoQueue`, a caller of the `ReceiveMessage` action
    #     can provide a `ReceiveRequestAttemptId` explicitly.
    #
    #   * It is possible to retry the `ReceiveMessage` action with the same
    #     `ReceiveRequestAttemptId` if none of the messages have been
    #     modified (deleted or had their visibility changes).
    #
    #   * During a visibility timeout, subsequent calls with the same
    #     `ReceiveRequestAttemptId` return the same messages and receipt
    #     handles. If a retry occurs within the deduplication interval, it
    #     resets the visibility timeout. For more information, see
    #     [Visibility Timeout][1] in the *Amazon SQS Developer Guide*.
    #
    #     If a caller of the `ReceiveMessage` action still processes
    #     messages when the visibility timeout expires and messages become
    #     visible, another worker consuming from the same queue can receive
    #     the same messages and therefore process duplicates. Also, if a
    #     consumer whose message processing time is longer than the
    #     visibility timeout tries to delete the processed messages, the
    #     action fails with an error.
    #
    #      To mitigate this effect, ensure that your application observes a
    #     safe threshold before the visibility timeout expires and extend
    #     the visibility timeout as necessary.
    #
    #   * While messages with a particular `MessageGroupId` are invisible,
    #     no more messages belonging to the same `MessageGroupId` are
    #     returned until the visibility timeout expires. You can still
    #     receive messages with another `MessageGroupId` from your FIFO
    #     queue as long as they are visible.
    #
    #   * If a caller of `ReceiveMessage` can't track the
    #     `ReceiveRequestAttemptId`, no retries work until the original
    #     visibility timeout expires. As a result, delays might occur but
    #     the messages in the queue remain in a strict order.
    #
    #   The maximum length of `ReceiveRequestAttemptId` is 128 characters.
    #   `ReceiveRequestAttemptId` can contain alphanumeric characters
    #   (`a-z`, `A-Z`, `0-9`) and punctuation (``
    #   !"#$%&'()*+,-./:;<=>?@[\]^_`{|}~ ``).
    #
    #   For best practices of using `ReceiveRequestAttemptId`, see [Using
    #   the ReceiveRequestAttemptId Request Parameter][2] in the *Amazon SQS
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
    #   [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-receiverequestattemptid-request-parameter.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ReceiveMessageRequest AWS API Documentation
    #
    class ReceiveMessageRequest < Struct.new(
      :queue_url,
      :attribute_names,
      :message_system_attribute_names,
      :message_attribute_names,
      :max_number_of_messages,
      :visibility_timeout,
      :wait_time_seconds,
      :receive_request_attempt_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of received messages.
    #
    # @!attribute [rw] messages
    #   A list of messages.
    #   @return [Array<Types::Message>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ReceiveMessageResult AWS API Documentation
    #
    class ReceiveMessageResult < Struct.new(
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue from which permissions are removed.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The identification of the permission to remove. This is the label
    #   added using the ` AddPermission ` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/RemovePermissionRequest AWS API Documentation
    #
    class RemovePermissionRequest < Struct.new(
      :queue_url,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # * Exceeds the permitted request rate for the queue or for the
    #   recipient of the request.
    #
    # * Ensure that the request rate is within the Amazon SQS limits for
    #   sending messages. For more information, see [Amazon SQS quotas][1]
    #   in the *Amazon SQS Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-quotas.html#quotas-requests
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/RequestThrottled AWS API Documentation
    #
    class RequestThrottled < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more specified resources don't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to which batched messages are sent.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] entries
    #   A list of ` SendMessageBatchRequestEntry ` items.
    #   @return [Array<Types::SendMessageBatchRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessageBatchRequest AWS API Documentation
    #
    class SendMessageBatchRequest < Struct.new(
      :queue_url,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of a single Amazon SQS message along with an
    # `Id`.
    #
    # @!attribute [rw] id
    #   An identifier for a message in this batch used to communicate the
    #   result.
    #
    #   <note markdown="1"> The `Id`s of a batch request need to be unique within a request.
    #
    #    This identifier can have up to 80 characters. The following
    #   characters are accepted: alphanumeric characters, hyphens(-), and
    #   underscores (\_).
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] message_body
    #   The body of the message.
    #   @return [String]
    #
    # @!attribute [rw] delay_seconds
    #   The length of time, in seconds, for which a specific message is
    #   delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with
    #   a positive `DelaySeconds` value become available for processing
    #   after the delay period is finished. If you don't specify a value,
    #   the default value for the queue is applied.
    #
    #   <note markdown="1"> When you set `FifoQueue`, you can't set `DelaySeconds` per message.
    #   You can set this parameter only on a queue level.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] message_attributes
    #   Each message attribute consists of a `Name`, `Type`, and `Value`.
    #   For more information, see [Amazon SQS message attributes][1] in the
    #   *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @!attribute [rw] message_system_attributes
    #   The message system attribute to send Each message system attribute
    #   consists of a `Name`, `Type`, and `Value`.
    #
    #   * Currently, the only supported message system attribute is
    #     `AWSTraceHeader`. Its type must be `String` and its value must be
    #     a correctly formatted X-Ray trace header string.
    #
    #   * The size of a message system attribute doesn't count towards the
    #     total size of a message.
    #   @return [Hash<String,Types::MessageSystemAttributeValue>]
    #
    # @!attribute [rw] message_deduplication_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of messages within a 5-minute
    #   minimum deduplication interval. If a message with a particular
    #   `MessageDeduplicationId` is sent successfully, subsequent messages
    #   with the same `MessageDeduplicationId` are accepted successfully but
    #   aren't delivered. For more information, see [ Exactly-once
    #   processing][1] in the *Amazon SQS Developer Guide*.
    #
    #   * Every message must have a unique `MessageDeduplicationId`,
    #
    #     * You may provide a `MessageDeduplicationId` explicitly.
    #
    #     * If you aren't able to provide a `MessageDeduplicationId` and
    #       you enable `ContentBasedDeduplication` for your queue, Amazon
    #       SQS uses a SHA-256 hash to generate the `MessageDeduplicationId`
    #       using the body of the message (but not the attributes of the
    #       message).
    #
    #     * If you don't provide a `MessageDeduplicationId` and the queue
    #       doesn't have `ContentBasedDeduplication` set, the action fails
    #       with an error.
    #
    #     * If the queue has `ContentBasedDeduplication` set, your
    #       `MessageDeduplicationId` overrides the generated one.
    #   * When `ContentBasedDeduplication` is in effect, messages with
    #     identical content sent within the deduplication interval are
    #     treated as duplicates and only one copy of the message is
    #     delivered.
    #
    #   * If you send one message with `ContentBasedDeduplication` enabled
    #     and then another message with a `MessageDeduplicationId` that is
    #     the same as the one generated for the first
    #     `MessageDeduplicationId`, the two messages are treated as
    #     duplicates and only one copy of the message is delivered.
    #
    #   <note markdown="1"> The `MessageDeduplicationId` is available to the consumer of the
    #   message (this can be useful for troubleshooting delivery issues).
    #
    #    If a message is sent successfully but the acknowledgement is lost
    #   and the message is resent with the same `MessageDeduplicationId`
    #   after the deduplication interval, Amazon SQS can't detect duplicate
    #   messages.
    #
    #    Amazon SQS continues to keep track of the message deduplication ID
    #   even after the message is received and deleted.
    #
    #    </note>
    #
    #   The length of `MessageDeduplicationId` is 128 characters.
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
    #   @return [String]
    #
    # @!attribute [rw] message_group_id
    #   `MessageGroupId` is an attribute used in Amazon SQS FIFO
    #   (First-In-First-Out) and standard queues. In FIFO queues,
    #   `MessageGroupId` organizes messages into distinct groups. Messages
    #   within the same message group are always processed one at a time, in
    #   strict order, ensuring that no two messages from the same group are
    #   processed simultaneously. In standard queues, using `MessageGroupId`
    #   enables fair queues. It is used to identify the tenant a message
    #   belongs to, helping maintain consistent message dwell time across
    #   all tenants during noisy neighbor events. Unlike FIFO queues,
    #   messages with the same `MessageGroupId` can be processed in
    #   parallel, maintaining the high throughput of standard queues.
    #
    #   * **FIFO queues:** `MessageGroupId` acts as the tag that specifies
    #     that a message belongs to a specific message group. Messages that
    #     belong to the same message group are processed in a FIFO manner
    #     (however, messages in different message groups might be processed
    #     out of order). To interleave multiple ordered streams within a
    #     single queue, use `MessageGroupId` values (for example, session
    #     data for multiple users). In this scenario, multiple consumers can
    #     process the queue, but the session data of each user is processed
    #     in a FIFO fashion.
    #
    #     If you do not provide a `MessageGroupId` when sending a message to
    #     a FIFO queue, the action fails.
    #
    #     `ReceiveMessage` might return messages with multiple
    #     `MessageGroupId` values. For each `MessageGroupId`, the messages
    #     are sorted by time sent.
    #
    #   * **Standard queues:**Use `MessageGroupId` in standard queues to
    #     enable fair queues. The `MessageGroupId` identifies the tenant a
    #     message belongs to. A tenant can be any entity that shares a queue
    #     with others, such as your customer, a client application, or a
    #     request type. When one tenant sends a disproportionately large
    #     volume of messages or has messages that require longer processing
    #     time, fair queues ensure other tenants' messages maintain low
    #     dwell time. This preserves quality of service for all tenants
    #     while maintaining the scalability and throughput of standard
    #     queues. We recommend that you include a `MessageGroupId` in all
    #     messages when using fair queues.
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessageBatchRequestEntry AWS API Documentation
    #
    class SendMessageBatchRequestEntry < Struct.new(
      :id,
      :message_body,
      :delay_seconds,
      :message_attributes,
      :message_system_attributes,
      :message_deduplication_id,
      :message_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # For each message in the batch, the response contains a `
    # SendMessageBatchResultEntry ` tag if the message succeeds or a `
    # BatchResultErrorEntry ` tag if the message fails.
    #
    # @!attribute [rw] successful
    #   A list of ` SendMessageBatchResultEntry ` items.
    #   @return [Array<Types::SendMessageBatchResultEntry>]
    #
    # @!attribute [rw] failed
    #   A list of ` BatchResultErrorEntry ` items with error details about
    #   each message that can't be enqueued.
    #   @return [Array<Types::BatchResultErrorEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessageBatchResult AWS API Documentation
    #
    class SendMessageBatchResult < Struct.new(
      :successful,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encloses a `MessageId` for a successfully-enqueued message in a `
    # SendMessageBatch.`
    #
    # @!attribute [rw] id
    #   An identifier for the message in this batch.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   An identifier for the message.
    #   @return [String]
    #
    # @!attribute [rw] md5_of_message_body
    #   An MD5 digest of the non-URL-encoded message body string. You can
    #   use this attribute to verify that Amazon SQS received the message
    #   correctly. Amazon SQS URL-decodes the message before creating the
    #   MD5 digest. For information about MD5, see [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] md5_of_message_attributes
    #   An MD5 digest of the non-URL-encoded message attribute string. You
    #   can use this attribute to verify that Amazon SQS received the
    #   message correctly. Amazon SQS URL-decodes the message before
    #   creating the MD5 digest. For information about MD5, see
    #   [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] md5_of_message_system_attributes
    #   An MD5 digest of the non-URL-encoded message system attribute
    #   string. You can use this attribute to verify that Amazon SQS
    #   received the message correctly. Amazon SQS URL-decodes the message
    #   before creating the MD5 digest. For information about MD5, see
    #   [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The large, non-consecutive number that Amazon SQS assigns to each
    #   message.
    #
    #   The length of `SequenceNumber` is 128 bits. As `SequenceNumber`
    #   continues to increase for a particular `MessageGroupId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessageBatchResultEntry AWS API Documentation
    #
    class SendMessageBatchResultEntry < Struct.new(
      :id,
      :message_id,
      :md5_of_message_body,
      :md5_of_message_attributes,
      :md5_of_message_system_attributes,
      :sequence_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue to which a message is sent.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] message_body
    #   The message to send. The minimum size is one character. The maximum
    #   size is 256 KiB.
    #
    #   A message can include only XML, JSON, and unformatted text. The
    #   following Unicode characters are allowed. For more information, see
    #   the [W3C specification for characters][1].
    #
    #    `#x9` \| `#xA` \| `#xD` \| `#x20` to `#xD7FF` \| `#xE000` to
    #   `#xFFFD` \| `#x10000` to `#x10FFFF`
    #
    #    Amazon SQS does not throw an exception or completely reject the
    #   message if it contains invalid characters. Instead, it replaces
    #   those invalid characters with U+FFFD before storing the message in
    #   the queue, as long as the message body contains at least one valid
    #   character.
    #
    #
    #
    #   [1]: http://www.w3.org/TR/REC-xml/#charsets
    #   @return [String]
    #
    # @!attribute [rw] delay_seconds
    #   The length of time, in seconds, for which to delay a specific
    #   message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with
    #   a positive `DelaySeconds` value become available for processing
    #   after the delay period is finished. If you don't specify a value,
    #   the default value for the queue applies.
    #
    #   <note markdown="1"> When you set `FifoQueue`, you can't set `DelaySeconds` per message.
    #   You can set this parameter only on a queue level.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] message_attributes
    #   Each message attribute consists of a `Name`, `Type`, and `Value`.
    #   For more information, see [Amazon SQS message attributes][1] in the
    #   *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-metadata.html#sqs-message-attributes
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    # @!attribute [rw] message_system_attributes
    #   The message system attribute to send. Each message system attribute
    #   consists of a `Name`, `Type`, and `Value`.
    #
    #   * Currently, the only supported message system attribute is
    #     `AWSTraceHeader`. Its type must be `String` and its value must be
    #     a correctly formatted X-Ray trace header string.
    #
    #   * The size of a message system attribute doesn't count towards the
    #     total size of a message.
    #   @return [Hash<String,Types::MessageSystemAttributeValue>]
    #
    # @!attribute [rw] message_deduplication_id
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The token used for deduplication of sent messages. If a message with
    #   a particular `MessageDeduplicationId` is sent successfully, any
    #   messages sent with the same `MessageDeduplicationId` are accepted
    #   successfully but aren't delivered during the 5-minute deduplication
    #   interval. For more information, see [ Exactly-once processing][1] in
    #   the *Amazon SQS Developer Guide*.
    #
    #   * Every message must have a unique `MessageDeduplicationId`,
    #
    #     * You may provide a `MessageDeduplicationId` explicitly.
    #
    #     * If you aren't able to provide a `MessageDeduplicationId` and
    #       you enable `ContentBasedDeduplication` for your queue, Amazon
    #       SQS uses a SHA-256 hash to generate the `MessageDeduplicationId`
    #       using the body of the message (but not the attributes of the
    #       message).
    #
    #     * If you don't provide a `MessageDeduplicationId` and the queue
    #       doesn't have `ContentBasedDeduplication` set, the action fails
    #       with an error.
    #
    #     * If the queue has `ContentBasedDeduplication` set, your
    #       `MessageDeduplicationId` overrides the generated one.
    #   * When `ContentBasedDeduplication` is in effect, messages with
    #     identical content sent within the deduplication interval are
    #     treated as duplicates and only one copy of the message is
    #     delivered.
    #
    #   * If you send one message with `ContentBasedDeduplication` enabled
    #     and then another message with a `MessageDeduplicationId` that is
    #     the same as the one generated for the first
    #     `MessageDeduplicationId`, the two messages are treated as
    #     duplicates and only one copy of the message is delivered.
    #
    #   <note markdown="1"> The `MessageDeduplicationId` is available to the consumer of the
    #   message (this can be useful for troubleshooting delivery issues).
    #
    #    If a message is sent successfully but the acknowledgement is lost
    #   and the message is resent with the same `MessageDeduplicationId`
    #   after the deduplication interval, Amazon SQS can't detect duplicate
    #   messages.
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
    #   @return [String]
    #
    # @!attribute [rw] message_group_id
    #   `MessageGroupId` is an attribute used in Amazon SQS FIFO
    #   (First-In-First-Out) and standard queues. In FIFO queues,
    #   `MessageGroupId` organizes messages into distinct groups. Messages
    #   within the same message group are always processed one at a time, in
    #   strict order, ensuring that no two messages from the same group are
    #   processed simultaneously. In standard queues, using `MessageGroupId`
    #   enables fair queues. It is used to identify the tenant a message
    #   belongs to, helping maintain consistent message dwell time across
    #   all tenants during noisy neighbor events. Unlike FIFO queues,
    #   messages with the same `MessageGroupId` can be processed in
    #   parallel, maintaining the high throughput of standard queues.
    #
    #   * **FIFO queues:** `MessageGroupId` acts as the tag that specifies
    #     that a message belongs to a specific message group. Messages that
    #     belong to the same message group are processed in a FIFO manner
    #     (however, messages in different message groups might be processed
    #     out of order). To interleave multiple ordered streams within a
    #     single queue, use `MessageGroupId` values (for example, session
    #     data for multiple users). In this scenario, multiple consumers can
    #     process the queue, but the session data of each user is processed
    #     in a FIFO fashion.
    #
    #     If you do not provide a `MessageGroupId` when sending a message to
    #     a FIFO queue, the action fails.
    #
    #     `ReceiveMessage` might return messages with multiple
    #     `MessageGroupId` values. For each `MessageGroupId`, the messages
    #     are sorted by time sent.
    #
    #   * **Standard queues:**Use `MessageGroupId` in standard queues to
    #     enable fair queues. The `MessageGroupId` identifies the tenant a
    #     message belongs to. A tenant can be any entity that shares a queue
    #     with others, such as your customer, a client application, or a
    #     request type. When one tenant sends a disproportionately large
    #     volume of messages or has messages that require longer processing
    #     time, fair queues ensure other tenants' messages maintain low
    #     dwell time. This preserves quality of service for all tenants
    #     while maintaining the scalability and throughput of standard
    #     queues. We recommend that you include a `MessageGroupId` in all
    #     messages when using fair queues.
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessageRequest AWS API Documentation
    #
    class SendMessageRequest < Struct.new(
      :queue_url,
      :message_body,
      :delay_seconds,
      :message_attributes,
      :message_system_attributes,
      :message_deduplication_id,
      :message_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `MD5OfMessageBody` and `MessageId` elements.
    #
    # @!attribute [rw] md5_of_message_body
    #   An MD5 digest of the non-URL-encoded message body string. You can
    #   use this attribute to verify that Amazon SQS received the message
    #   correctly. Amazon SQS URL-decodes the message before creating the
    #   MD5 digest. For information about MD5, see [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] md5_of_message_attributes
    #   An MD5 digest of the non-URL-encoded message attribute string. You
    #   can use this attribute to verify that Amazon SQS received the
    #   message correctly. Amazon SQS URL-decodes the message before
    #   creating the MD5 digest. For information about MD5, see
    #   [RFC1321][1].
    #
    #
    #
    #   [1]: https://www.ietf.org/rfc/rfc1321.txt
    #   @return [String]
    #
    # @!attribute [rw] md5_of_message_system_attributes
    #   An MD5 digest of the non-URL-encoded message system attribute
    #   string. You can use this attribute to verify that Amazon SQS
    #   received the message correctly. Amazon SQS URL-decodes the message
    #   before creating the MD5 digest.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   An attribute containing the `MessageId` of the message sent to the
    #   queue. For more information, see [Queue and Message Identifiers][1]
    #   in the *Amazon SQS Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   This parameter applies only to FIFO (first-in-first-out) queues.
    #
    #   The large, non-consecutive number that Amazon SQS assigns to each
    #   message.
    #
    #   The length of `SequenceNumber` is 128 bits. `SequenceNumber`
    #   continues to increase for a particular `MessageGroupId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SendMessageResult AWS API Documentation
    #
    class SendMessageResult < Struct.new(
      :md5_of_message_body,
      :md5_of_message_attributes,
      :md5_of_message_system_attributes,
      :message_id,
      :sequence_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the Amazon SQS queue whose attributes are set.
    #
    #   Queue URLs and names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A map of attributes to set.
    #
    #   The following lists the names, descriptions, and values of the
    #   special request parameters that the `SetQueueAttributes` action
    #   uses:
    #
    #   * `DelaySeconds` – The length of time, in seconds, for which the
    #     delivery of all messages in the queue is delayed. Valid values: An
    #     integer from 0 to 900 (15 minutes). Default: 0.
    #
    #   * `MaximumMessageSize` – The limit of how many bytes a message can
    #     contain before Amazon SQS rejects it. Valid values: An integer
    #     from 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). Default:
    #     262,144 (256 KiB).
    #
    #   * `MessageRetentionPeriod` – The length of time, in seconds, for
    #     which Amazon SQS retains a message. Valid values: An integer
    #     representing seconds, from 60 (1 minute) to 1,209,600 (14 days).
    #     Default: 345,600 (4 days). When you change a queue's attributes,
    #     the change can take up to 60 seconds for most of the attributes to
    #     propagate throughout the Amazon SQS system. Changes made to the
    #     `MessageRetentionPeriod` attribute can take up to 15 minutes and
    #     will impact existing messages in the queue potentially causing
    #     them to be expired and deleted if the `MessageRetentionPeriod` is
    #     reduced below the age of existing messages.
    #
    #   * `Policy` – The queue's policy. A valid Amazon Web Services
    #     policy. For more information about policy structure, see [Overview
    #     of Amazon Web Services IAM Policies][1] in the *Identity and
    #     Access Management User Guide*.
    #
    #   * `ReceiveMessageWaitTimeSeconds` – The length of time, in seconds,
    #     for which a ` ReceiveMessage ` action waits for a message to
    #     arrive. Valid values: An integer from 0 to 20 (seconds). Default:
    #     0.
    #
    #   * `VisibilityTimeout` – The visibility timeout for the queue, in
    #     seconds. Valid values: An integer from 0 to 43,200 (12 hours).
    #     Default: 30. For more information about the visibility timeout,
    #     see [Visibility Timeout][2] in the *Amazon SQS Developer Guide*.
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
    #     * `maxReceiveCount` – The number of times a message is delivered
    #       to the source queue before being moved to the dead-letter queue.
    #       Default: 10. When the `ReceiveCount` for a message exceeds the
    #       `maxReceiveCount` for a queue, Amazon SQS moves the message to
    #       the dead-letter-queue.
    #   * `RedriveAllowPolicy` – The string that includes the parameters for
    #     the permissions for the dead-letter queue redrive permission and
    #     which source queues can specify dead-letter queues as a JSON
    #     object. The parameters are as follows:
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
    #     * `sourceQueueArns` – The Amazon Resource Names (ARN)s of the
    #       source queues that can specify this queue as the dead-letter
    #       queue and redrive messages. You can specify this parameter only
    #       when the `redrivePermission` parameter is set to `byQueue`. You
    #       can specify up to 10 source queue ARNs. To allow more than 10
    #       source queues to specify dead-letter queues, set the
    #       `redrivePermission` parameter to `allowAll`.
    #
    #   <note markdown="1"> The dead-letter queue of a FIFO queue must also be a FIFO queue.
    #   Similarly, the dead-letter queue of a standard queue must also be a
    #   standard queue.
    #
    #    </note>
    #
    #   The following attributes apply only to [server-side-encryption][4]:
    #
    #   * `KmsMasterKeyId` – The ID of an Amazon Web Services managed
    #     customer master key (CMK) for Amazon SQS or a custom CMK. For more
    #     information, see [Key Terms][5]. While the alias of the
    #     AWS-managed CMK for Amazon SQS is always `alias/aws/sqs`, the
    #     alias of a custom CMK can, for example, be `alias/MyAlias `. For
    #     more examples, see [KeyId][6] in the *Key Management Service API
    #     Reference*.
    #
    #   * `KmsDataKeyReusePeriodSeconds` – The length of time, in seconds,
    #     for which Amazon SQS can reuse a [data key][7] to encrypt or
    #     decrypt messages before calling KMS again. An integer representing
    #     seconds, between 60 seconds (1 minute) and 86,400 seconds (24
    #     hours). Default: 300 (5 minutes). A shorter time period provides
    #     better security but results in more calls to KMS which might incur
    #     charges after Free Tier. For more information, see [How Does the
    #     Data Key Reuse Period Work?][8].
    #
    #   * `SqsManagedSseEnabled` – Enables server-side queue encryption
    #     using SQS owned encryption keys. Only one server-side encryption
    #     option is supported per queue (for example, [SSE-KMS][9] or
    #     [SSE-SQS][10]).
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
    #         SQS uses a SHA-256 hash to generate the
    #         `MessageDeduplicationId` using the body of the message (but
    #         not the attributes of the message).
    #
    #       * If you don't provide a `MessageDeduplicationId` and the queue
    #         doesn't have `ContentBasedDeduplication` set, the action
    #         fails with an error.
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
    #   * `FifoThroughputLimit` – Specifies whether the FIFO queue
    #     throughput quota applies to the entire queue or per message group.
    #     Valid values are `perQueue` and `perMessageGroupId`. The
    #     `perMessageGroupId` value is allowed only when the value for
    #     `DeduplicationScope` is `messageGroup`.
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
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/SetQueueAttributesRequest AWS API Documentation
    #
    class SetQueueAttributesRequest < Struct.new(
      :queue_url,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_arn
    #   The ARN of the queue that contains the messages to be moved to
    #   another queue. Currently, only ARNs of dead-letter queues (DLQs)
    #   whose sources are other Amazon SQS queues are accepted. DLQs whose
    #   sources are non-SQS queues, such as Lambda or Amazon SNS topics, are
    #   not currently supported.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the queue that receives the moved messages. You can use
    #   this field to specify the destination queue where you would like to
    #   redrive messages. If this field is left blank, the messages will be
    #   redriven back to their respective original source queues.
    #   @return [String]
    #
    # @!attribute [rw] max_number_of_messages_per_second
    #   The number of messages to be moved per second (the message movement
    #   rate). You can use this field to define a fixed message movement
    #   rate. The maximum value for messages per second is 500. If this
    #   field is left blank, the system will optimize the rate based on the
    #   queue message backlog size, which may vary throughout the duration
    #   of the message movement task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/StartMessageMoveTaskRequest AWS API Documentation
    #
    class StartMessageMoveTaskRequest < Struct.new(
      :source_arn,
      :destination_arn,
      :max_number_of_messages_per_second)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_handle
    #   An identifier associated with a message movement task. You can use
    #   this identifier to cancel a specified message movement task using
    #   the `CancelMessageMoveTask` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/StartMessageMoveTaskResult AWS API Documentation
    #
    class StartMessageMoveTaskResult < Struct.new(
      :task_handle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the queue.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags to be added to the specified queue.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/TagQueueRequest AWS API Documentation
    #
    class TagQueueRequest < Struct.new(
      :queue_url,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The batch request contains more entries than permissible. For Amazon
    # SQS, the maximum number of entries you can include in a single
    # [SendMessageBatch][1], [DeleteMessageBatch][2], or
    # [ChangeMessageVisibilityBatch][3] request is 10.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_SendMessageBatch.html
    # [2]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_DeleteMessageBatch.html
    # [3]: https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_ChangeMessageVisibilityBatch.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/TooManyEntriesInBatchRequest AWS API Documentation
    #
    class TooManyEntriesInBatchRequest < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error code 400. Unsupported operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/UnsupportedOperation AWS API Documentation
    #
    class UnsupportedOperation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_url
    #   The URL of the queue.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tags to be removed from the specified queue.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sqs-2012-11-05/UntagQueueRequest AWS API Documentation
    #
    class UntagQueueRequest < Struct.new(
      :queue_url,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

