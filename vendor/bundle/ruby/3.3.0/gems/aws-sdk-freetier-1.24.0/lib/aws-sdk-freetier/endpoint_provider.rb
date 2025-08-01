# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FreeTier
  class EndpointProvider
    def resolve_endpoint(parameters)
      if Aws::Endpoints::Matchers.set?(parameters.endpoint)
        if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
          raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
        end
        return Aws::Endpoints::Endpoint.new(url: parameters.endpoint, headers: {}, properties: {})
      end
      if Aws::Endpoints::Matchers.set?(parameters.region)
        if (partition_result = Aws::Endpoints::Matchers.aws_partition(parameters.region))
          if Aws::Endpoints::Matchers.string_equals?(Aws::Endpoints::Matchers.attr(partition_result, "name"), "aws")
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
              if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
                return Aws::Endpoints::Endpoint.new(url: "https://freetier-fips.#{parameters.region}.api.aws", headers: {}, properties: {})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            return Aws::Endpoints::Endpoint.new(url: "https://freetier.us-east-1.api.aws", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "freetier", "signingRegion" => "us-east-1"}]})
          end
          if Aws::Endpoints::Matchers.boolean_equals?(true, Aws::Endpoints::Matchers.attr(partition_result, "supportsDualStack"))
            if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
              if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
                return Aws::Endpoints::Endpoint.new(url: "https://freetier-fips.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if Aws::Endpoints::Matchers.string_equals?(parameters.region, "aws-cn-global")
              return Aws::Endpoints::Endpoint.new(url: "https://freetier.cn-northwest-1.api.amazonwebservices.com.cn", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "freetier", "signingRegion" => "cn-northwest-1"}]})
            end
            return Aws::Endpoints::Endpoint.new(url: "https://freetier.#{parameters.region}.#{partition_result['dualStackDnsSuffix']}", headers: {}, properties: {})
          end
          if Aws::Endpoints::Matchers.boolean_equals?(parameters.use_fips, true)
            if Aws::Endpoints::Matchers.boolean_equals?(Aws::Endpoints::Matchers.attr(partition_result, "supportsFIPS"), true)
              return Aws::Endpoints::Endpoint.new(url: "https://freetier-fips.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
            end
            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
          end
          if Aws::Endpoints::Matchers.string_equals?(parameters.region, "aws-cn-global")
            return Aws::Endpoints::Endpoint.new(url: "https://freetier.cn-northwest-1.api.amazonwebservices.com.cn", headers: {}, properties: {"authSchemes" => [{"name" => "sigv4", "signingName" => "freetier", "signingRegion" => "cn-northwest-1"}]})
          end
          return Aws::Endpoints::Endpoint.new(url: "https://freetier.#{parameters.region}.#{partition_result['dnsSuffix']}", headers: {}, properties: {})
        end
      end
      raise ArgumentError, "Invalid Configuration: Missing Region"
      raise ArgumentError, 'No endpoint could be resolved'

    end
  end
end
