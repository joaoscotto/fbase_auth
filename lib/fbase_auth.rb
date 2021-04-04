# frozen_string_literal: true

require "http"
require "fbase_auth/version"
require "fbase_auth/config"
require "fbase_auth/client"
require "fbase_auth/client_decorator"
require "fbase_auth/helper"
require "fbase_auth/request"
Dir["#{File.dirname(__FILE__)}/fbase_auth/action/*.rb"].sort.each { |file| require file }

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
