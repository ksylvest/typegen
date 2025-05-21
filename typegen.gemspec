# frozen_string_literal: true

require_relative "lib/typegen/version"

Gem::Specification.new do |spec|
  spec.name = "typegen"
  spec.version = Typegen::VERSION
  spec.authors = ["Kevin Sylvestre"]
  spec.email = ["kevin@ksylvest.com"]

  spec.summary = "Generate RBS types from YARD comments."
  spec.description = "Automattically generate RBS types from YARD comments in your Ruby codebase."
  spec.homepage = "https://github.com/ksylvest/typegen"
  spec.license = "MIT"

  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/releases"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md Gemfile]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }

  spec.require_paths = ["lib"]

  spec.add_dependency "zeitwerk"
end
