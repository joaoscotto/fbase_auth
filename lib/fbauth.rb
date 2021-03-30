# frozen_string_literal: true

require_relative "fbauth/version"
require_relative "fbauth/config"

module Fbauth
  class << self
    attr_writer :config
  end

  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield config
  end
end
