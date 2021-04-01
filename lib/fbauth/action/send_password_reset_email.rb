# frozen_string_literal: true

module Fbauth::Action
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
