# frozen_string_literal: true

require "http"
require "fbauth/version"
require "fbauth/config"
require "fbauth/client"
require "fbauth/client_decorator"

module Fbauth
  class << self
    attr_writer :config
  end

  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield config
    Fbauth::ClientDecorator.apply
  end
end
