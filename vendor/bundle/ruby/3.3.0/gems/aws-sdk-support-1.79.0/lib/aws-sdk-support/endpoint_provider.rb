# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Support
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
          raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(parameters.region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://support.us-east-1.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-east-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-cn") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://support.cn-north-1.amazonaws.com.cn", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "cn-north-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://support.us-gov-west-1.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-gov-west-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-us-gov") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://support.us-gov-west-1.amazonaws.com", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-gov-west-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://support.us-iso-east-1.c2s.ic.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-iso-east-1"}]})
          end
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws-iso-b") && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, false) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, false)
            return Aws::Endpoints::Endpoint.new(url: "https://support.us-isob-east-1.sc2s.sgov.gov", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "support", "signingRegion" => "us-isob-east-1"}]})
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true) && Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS")) && Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://support-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
              return Aws::Endpoints::Endpoint.new(url: "https://support-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_dual_stack, true)
            if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
              return Aws::Endpoints::Endpoint.new(url: "https://support.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
          end
          return Aws::Endpoints::Endpoint.new(url: "https://support.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
