# frozen_string_literal: true

module Fbauth
  class Config
    attr_accessor :api_key

    def initialize
      @api_key = ""
    end
  end
end
