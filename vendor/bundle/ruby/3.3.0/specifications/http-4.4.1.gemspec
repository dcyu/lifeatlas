# -*- encoding: utf-8 -*-
# stub: http 4.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "http".freeze
  s.version = "4.4.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/httprb/http/issues", "changelog_uri" => "https://github.com/httprb/http/blob/v4.4.1/CHANGES.md", "source_code_uri" => "https://github.com/httprb/http", "wiki_uri" => "https://github.com/httprb/http/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tony Arcieri".freeze, "Erik Michaels-Ober".freeze, "Alexey V. Zapparov".freeze, "Zachary Anker".freeze]
  s.date = "2020-03-29"
  s.description = "An easy-to-use client library for making requests from Ruby. It uses a simple method chaining system for building requests, similar to Python's Requests.".freeze
  s.email = ["bascule@gmail.com".freeze]
  s.homepage = "https://github.com/httprb/http".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "HTTP should be easy".freeze

  s.installed_by_version = "3.6.3".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<addressable>.freeze, ["~> 2.3".freeze])
  s.add_runtime_dependency(%q<http-cookie>.freeze, ["~> 1.0".freeze])
  s.add_runtime_dependency(%q<http-form_data>.freeze, ["~> 2.2".freeze])
  s.add_runtime_dependency(%q<http-parser>.freeze, ["~> 1.2.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 2.0".freeze])
end
