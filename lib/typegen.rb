# frozen_string_literal: true

require "logger"
require "yard"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect "cli" => "CLI"
loader.setup

module Typegen
  class Error < StandardError; end
end
