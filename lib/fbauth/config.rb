# frozen_string_literal: true

module Fbauth
  class Config
    HOST = "https://identitytoolkit.googleapis.com/v1/accounts:"
    attr_reader :host
    attr_accessor :api_key

    def initialize
      @api_key = ""
      @host = HOST
    end
  end
end
