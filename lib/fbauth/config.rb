# frozen_string_literal: true

module Fbauth
  class Config
    HOST = "https://identitytoolkit.googleapis.com/v1/accounts:"
    attr_reader :host
    attr_accessor :api_key, :return_secure_token

    def initialize
      @api_key = ""
      @host = HOST
      @return_secure_token = true
    end
  end
end
