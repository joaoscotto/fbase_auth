# frozen_string_literal: true

require "http"
require "fbase_auth/version"
require "fbase_auth/config"
require "fbase_auth/client"
require "fbase_auth/client_decorator"

module FbaseAuth
  class << self
    attr_writer :config
  end

  def self.config
    @config ||= Config.new
  end

  def self.configure
    yield config
    FbaseAuth::ClientDecorator.apply
  end
end
