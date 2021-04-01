# frozen_string_literal: true

module Fbauth::Action
  class Base
    def initialize
      raise NotImplementedError
    end

    def call
      Fbauth::Request.post self.class::PATH, payload
    end
  end
end
