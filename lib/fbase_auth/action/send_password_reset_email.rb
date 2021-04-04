# frozen_string_literal: true

module FbaseAuth::Action
  class SendPasswordResetEmail < Base
    PATH = "sendOobCode"

    def initialize email:
      @email = email
    end

    private

    def payload
      {
        email: @email,
        requestType: "PASSWORD_RESET"
      }
    end
  end
end
