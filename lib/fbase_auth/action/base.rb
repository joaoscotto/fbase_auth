# frozen_string_literal: true

module FbaseAuth::Action
  class Base
    def initialize
      raise NotImplementedError
    end

    def call
      FbaseAuth::Request.post self.class::PATH, payload
    end
  end
end
