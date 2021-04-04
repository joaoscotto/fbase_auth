# frozen_string_literal: true

module FbaseAuth::Action
  class DeleteAccount < Base
    PATH = "delete"

    def initialize id_token:
      @id_token = id_token
    end

    private

    def payload
      { idToken: @id_token }
    end
  end
end
