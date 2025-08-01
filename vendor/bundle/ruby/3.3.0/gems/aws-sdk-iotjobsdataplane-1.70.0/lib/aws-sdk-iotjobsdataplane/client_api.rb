# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoTJobsDataPlane
  # @api private
  module ClientApi

    include Seahorse::Model

    ApproximateSecondsBeforeTimedOut = Shapes::IntegerShape.new(name: 'ApproximateSecondsBeforeTimedOut')
    BinaryBlob = Shapes::BlobShape.new(name: 'BinaryBlob')
    BinaryParameterValue = Shapes::BlobShape.new(name: 'BinaryParameterValue')
    BooleanParameterValue = Shapes::BooleanShape.new(name: 'BooleanParameterValue')
    CertificateValidationException = Shapes::StructureShape.new(name: 'CertificateValidationException')
    ClientRequestTokenV2 = Shapes::StringShape.new(name: 'ClientRequestTokenV2')
    CommandArn = Shapes::StringShape.new(name: 'CommandArn')
    CommandExecutionId = Shapes::StringShape.new(name: 'CommandExecutionId')
    CommandExecutionParameterMap = Shapes::MapShape.new(name: 'CommandExecutionParameterMap')
    CommandExecutionTimeoutInSeconds = Shapes::IntegerShape.new(name: 'CommandExecutionTimeoutInSeconds')
    CommandParameterName = Shapes::StringShape.new(name: 'CommandParameterName')
    CommandParameterValue = Shapes::StructureShape.new(name: 'CommandParameterValue')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DescribeJobExecutionJobId = Shapes::StringShape.new(name: 'DescribeJobExecutionJobId')
    DescribeJobExecutionRequest = Shapes::StructureShape.new(name: 'DescribeJobExecutionRequest')
    DescribeJobExecutionResponse = Shapes::StructureShape.new(name: 'DescribeJobExecutionResponse')
    DetailsKey = Shapes::StringShape.new(name: 'DetailsKey')
    DetailsMap = Shapes::MapShape.new(name: 'DetailsMap')
    DetailsValue = Shapes::StringShape.new(name: 'DetailsValue')
    DoubleParameterValue = Shapes::FloatShape.new(name: 'DoubleParameterValue')
    ExecutionNumber = Shapes::IntegerShape.new(name: 'ExecutionNumber')
    ExpectedVersion = Shapes::IntegerShape.new(name: 'ExpectedVersion')
    GetPendingJobExecutionsRequest = Shapes::StructureShape.new(name: 'GetPendingJobExecutionsRequest')
    GetPendingJobExecutionsResponse = Shapes::StructureShape.new(name: 'GetPendingJobExecutionsResponse')
    IncludeExecutionState = Shapes::BooleanShape.new(name: 'IncludeExecutionState')
    IncludeJobDocument = Shapes::BooleanShape.new(name: 'IncludeJobDocument')
    IntegerParameterValue = Shapes::IntegerShape.new(name: 'IntegerParameterValue')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidStateTransitionException = Shapes::StructureShape.new(name: 'InvalidStateTransitionException')
    JobDocument = Shapes::StringShape.new(name: 'JobDocument')
    JobExecution = Shapes::StructureShape.new(name: 'JobExecution')
    JobExecutionState = Shapes::StructureShape.new(name: 'JobExecutionState')
    JobExecutionStatus = Shapes::StringShape.new(name: 'JobExecutionStatus')
    JobExecutionSummary = Shapes::StructureShape.new(name: 'JobExecutionSummary')
    JobExecutionSummaryList = Shapes::ListShape.new(name: 'JobExecutionSummaryList')
    JobId = Shapes::StringShape.new(name: 'JobId')
    LastUpdatedAt = Shapes::IntegerShape.new(name: 'LastUpdatedAt')
    LongParameterValue = Shapes::IntegerShape.new(name: 'LongParameterValue')
    QueuedAt = Shapes::IntegerShape.new(name: 'QueuedAt')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartCommandExecutionRequest = Shapes::StructureShape.new(name: 'StartCommandExecutionRequest')
    StartCommandExecutionResponse = Shapes::StructureShape.new(name: 'StartCommandExecutionResponse')
    StartNextPendingJobExecutionRequest = Shapes::StructureShape.new(name: 'StartNextPendingJobExecutionRequest')
    StartNextPendingJobExecutionResponse = Shapes::StructureShape.new(name: 'StartNextPendingJobExecutionResponse')
    StartedAt = Shapes::IntegerShape.new(name: 'StartedAt')
    StepTimeoutInMinutes = Shapes::IntegerShape.new(name: 'StepTimeoutInMinutes')
    StringParameterValue = Shapes::StringShape.new(name: 'StringParameterValue')
    TargetArn = Shapes::StringShape.new(name: 'TargetArn')
    TerminalStateException = Shapes::StructureShape.new(name: 'TerminalStateException')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UnsignedLongParameterValue = Shapes::StringShape.new(name: 'UnsignedLongParameterValue')
    UpdateJobExecutionRequest = Shapes::StructureShape.new(name: 'UpdateJobExecutionRequest')
    UpdateJobExecutionResponse = Shapes::StructureShape.new(name: 'UpdateJobExecutionResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VersionNumber = Shapes::IntegerShape.new(name: 'VersionNumber')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    resourceId = Shapes::StringShape.new(name: 'resourceId')

    CertificateValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    CertificateValidationException.struct_class = Types::CertificateValidationException

    CommandExecutionParameterMap.key = Shapes::ShapeRef.new(shape: CommandParameterName)
    CommandExecutionParameterMap.value = Shapes::ShapeRef.new(shape: CommandParameterValue)

    CommandParameterValue.add_member(:s, Shapes::ShapeRef.new(shape: StringParameterValue, location_name: "S"))
    CommandParameterValue.add_member(:b, Shapes::ShapeRef.new(shape: BooleanParameterValue, location_name: "B"))
    CommandParameterValue.add_member(:i, Shapes::ShapeRef.new(shape: IntegerParameterValue, location_name: "I"))
    CommandParameterValue.add_member(:l, Shapes::ShapeRef.new(shape: LongParameterValue, location_name: "L"))
    CommandParameterValue.add_member(:d, Shapes::ShapeRef.new(shape: DoubleParameterValue, location_name: "D"))
    CommandParameterValue.add_member(:bin, Shapes::ShapeRef.new(shape: BinaryParameterValue, location_name: "BIN"))
    CommandParameterValue.add_member(:ul, Shapes::ShapeRef.new(shape: UnsignedLongParameterValue, location_name: "UL"))
    CommandParameterValue.struct_class = Types::CommandParameterValue

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: resourceId, location_name: "resourceId"))
    ConflictException.struct_class = Types::ConflictException

    DescribeJobExecutionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: DescribeJobExecutionJobId, required: true, location: "uri", location_name: "jobId"))
    DescribeJobExecutionRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    DescribeJobExecutionRequest.add_member(:include_job_document, Shapes::ShapeRef.new(shape: IncludeJobDocument, location: "querystring", location_name: "includeJobDocument"))
    DescribeJobExecutionRequest.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, location: "querystring", location_name: "executionNumber"))
    DescribeJobExecutionRequest.struct_class = Types::DescribeJobExecutionRequest

    DescribeJobExecutionResponse.add_member(:execution, Shapes::ShapeRef.new(shape: JobExecution, location_name: "execution"))
    DescribeJobExecutionResponse.struct_class = Types::DescribeJobExecutionResponse

    DetailsMap.key = Shapes::ShapeRef.new(shape: DetailsKey)
    DetailsMap.value = Shapes::ShapeRef.new(shape: DetailsValue)

    GetPendingJobExecutionsRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    GetPendingJobExecutionsRequest.struct_class = Types::GetPendingJobExecutionsRequest

    GetPendingJobExecutionsResponse.add_member(:in_progress_jobs, Shapes::ShapeRef.new(shape: JobExecutionSummaryList, location_name: "inProgressJobs"))
    GetPendingJobExecutionsResponse.add_member(:queued_jobs, Shapes::ShapeRef.new(shape: JobExecutionSummaryList, location_name: "queuedJobs"))
    GetPendingJobExecutionsResponse.struct_class = Types::GetPendingJobExecutionsResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidStateTransitionException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidStateTransitionException.struct_class = Types::InvalidStateTransitionException

    JobExecution.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    JobExecution.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    JobExecution.add_member(:status, Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: "status"))
    JobExecution.add_member(:status_details, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "statusDetails"))
    JobExecution.add_member(:queued_at, Shapes::ShapeRef.new(shape: QueuedAt, location_name: "queuedAt"))
    JobExecution.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    JobExecution.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    JobExecution.add_member(:approximate_seconds_before_timed_out, Shapes::ShapeRef.new(shape: ApproximateSecondsBeforeTimedOut, location_name: "approximateSecondsBeforeTimedOut"))
    JobExecution.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "versionNumber"))
    JobExecution.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: "executionNumber"))
    JobExecution.add_member(:job_document, Shapes::ShapeRef.new(shape: JobDocument, location_name: "jobDocument"))
    JobExecution.struct_class = Types::JobExecution

    JobExecutionState.add_member(:status, Shapes::ShapeRef.new(shape: JobExecutionStatus, location_name: "status"))
    JobExecutionState.add_member(:status_details, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "statusDetails"))
    JobExecutionState.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "versionNumber"))
    JobExecutionState.struct_class = Types::JobExecutionState

    JobExecutionSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    JobExecutionSummary.add_member(:queued_at, Shapes::ShapeRef.new(shape: QueuedAt, location_name: "queuedAt"))
    JobExecutionSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: StartedAt, location_name: "startedAt"))
    JobExecutionSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: LastUpdatedAt, location_name: "lastUpdatedAt"))
    JobExecutionSummary.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "versionNumber"))
    JobExecutionSummary.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: "executionNumber"))
    JobExecutionSummary.struct_class = Types::JobExecutionSummary

    JobExecutionSummaryList.member = Shapes::ShapeRef.new(shape: JobExecutionSummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartCommandExecutionRequest.add_member(:target_arn, Shapes::ShapeRef.new(shape: TargetArn, required: true, location_name: "targetArn"))
    StartCommandExecutionRequest.add_member(:command_arn, Shapes::ShapeRef.new(shape: CommandArn, required: true, location_name: "commandArn"))
    StartCommandExecutionRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: CommandExecutionParameterMap, location_name: "parameters"))
    StartCommandExecutionRequest.add_member(:execution_timeout_seconds, Shapes::ShapeRef.new(shape: CommandExecutionTimeoutInSeconds, location_name: "executionTimeoutSeconds"))
    StartCommandExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestTokenV2, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartCommandExecutionRequest.struct_class = Types::StartCommandExecutionRequest

    StartCommandExecutionResponse.add_member(:execution_id, Shapes::ShapeRef.new(shape: CommandExecutionId, location_name: "executionId"))
    StartCommandExecutionResponse.struct_class = Types::StartCommandExecutionResponse

    StartNextPendingJobExecutionRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    StartNextPendingJobExecutionRequest.add_member(:status_details, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "statusDetails"))
    StartNextPendingJobExecutionRequest.add_member(:step_timeout_in_minutes, Shapes::ShapeRef.new(shape: StepTimeoutInMinutes, location_name: "stepTimeoutInMinutes"))
    StartNextPendingJobExecutionRequest.struct_class = Types::StartNextPendingJobExecutionRequest

    StartNextPendingJobExecutionResponse.add_member(:execution, Shapes::ShapeRef.new(shape: JobExecution, location_name: "execution"))
    StartNextPendingJobExecutionResponse.struct_class = Types::StartNextPendingJobExecutionResponse

    TerminalStateException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    TerminalStateException.struct_class = Types::TerminalStateException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.add_member(:payload, Shapes::ShapeRef.new(shape: BinaryBlob, location_name: "payload"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateJobExecutionRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    UpdateJobExecutionRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location: "uri", location_name: "thingName"))
    UpdateJobExecutionRequest.add_member(:status, Shapes::ShapeRef.new(shape: JobExecutionStatus, required: true, location_name: "status"))
    UpdateJobExecutionRequest.add_member(:status_details, Shapes::ShapeRef.new(shape: DetailsMap, location_name: "statusDetails"))
    UpdateJobExecutionRequest.add_member(:step_timeout_in_minutes, Shapes::ShapeRef.new(shape: StepTimeoutInMinutes, location_name: "stepTimeoutInMinutes"))
    UpdateJobExecutionRequest.add_member(:expected_version, Shapes::ShapeRef.new(shape: ExpectedVersion, location_name: "expectedVersion"))
    UpdateJobExecutionRequest.add_member(:include_job_execution_state, Shapes::ShapeRef.new(shape: IncludeExecutionState, location_name: "includeJobExecutionState"))
    UpdateJobExecutionRequest.add_member(:include_job_document, Shapes::ShapeRef.new(shape: IncludeJobDocument, location_name: "includeJobDocument"))
    UpdateJobExecutionRequest.add_member(:execution_number, Shapes::ShapeRef.new(shape: ExecutionNumber, location_name: "executionNumber"))
    UpdateJobExecutionRequest.struct_class = Types::UpdateJobExecutionRequest

    UpdateJobExecutionResponse.add_member(:execution_state, Shapes::ShapeRef.new(shape: JobExecutionState, location_name: "executionState"))
    UpdateJobExecutionResponse.add_member(:job_document, Shapes::ShapeRef.new(shape: JobDocument, location_name: "jobDocument"))
    UpdateJobExecutionResponse.struct_class = Types::UpdateJobExecutionResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-29"

      api.metadata = {
        "apiVersion" => "2017-09-29",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "data.jobs.iot",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS IoT Jobs Data Plane",
        "serviceId" => "IoT Jobs Data Plane",
        "signatureVersion" => "v4",
        "signingName" => "iot-jobs-data",
        "uid" => "iot-jobs-data-2017-09-29",
      }

      api.add_operation(:describe_job_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeJobExecution"
        o.http_method = "GET"
        o.http_request_uri = "/things/{thingName}/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeJobExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeJobExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateValidationException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalStateException)
      end)

      api.add_operation(:get_pending_job_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPendingJobExecutions"
        o.http_method = "GET"
        o.http_request_uri = "/things/{thingName}/jobs"
        o.input = Shapes::ShapeRef.new(shape: GetPendingJobExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPendingJobExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateValidationException)
      end)

      api.add_operation(:start_command_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCommandExecution"
        o.http_method = "POST"
        o.http_request_uri = "/command-executions"
        o.input = Shapes::ShapeRef.new(shape: StartCommandExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCommandExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_next_pending_job_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartNextPendingJobExecution"
        o.http_method = "PUT"
        o.http_request_uri = "/things/{thingName}/jobs/$next"
        o.input = Shapes::ShapeRef.new(shape: StartNextPendingJobExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartNextPendingJobExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateValidationException)
      end)

      api.add_operation(:update_job_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateJobExecution"
        o.http_method = "POST"
        o.http_request_uri = "/things/{thingName}/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateJobExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateJobExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: CertificateValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateTransitionException)
      end)
    end

  end
end
