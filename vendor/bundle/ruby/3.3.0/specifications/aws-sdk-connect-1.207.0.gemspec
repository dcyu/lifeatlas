# -*- encoding: utf-8 -*-
# stub: aws-sdk-connect 1.207.0 ruby lib

Gem::Specification.new do |s|
  s.name = "aws-sdk-connect".freeze
  s.version = "1.207.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-connect/CHANGELOG.md", "source_code_uri" => "https://github.com/aws/aws-sdk-ruby/tree/version-3/gems/aws-sdk-connect" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Amazon Web Services".freeze]
  s.date = "1980-01-02"
  s.description = "Official AWS Ruby gem for Amazon Connect Service (Amazon Connect). This gem is part of the AWS SDK for Ruby.".freeze
  s.email = ["aws-dr-rubygems@amazon.com".freeze]
  s.homepage = "https://github.com/aws/aws-sdk-ruby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.rubygems_version = "3.6.7".freeze
  s.summary = "AWS SDK for Ruby - Amazon Connect".freeze

  s.installed_by_version = "3.6.3".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<aws-sdk-core>.freeze, ["~> 3".freeze, ">= 3.227.0".freeze])
  s.add_runtime_dependency(%q<aws-sigv4>.freeze, ["~> 1.5".freeze])
end
