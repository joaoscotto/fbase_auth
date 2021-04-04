# frozen_string_literal: true

module Fbauth::Action
  class ConfirmPasswordReset < Base
    PATH = "resetPassword"

    def initialize oob_code:, new_password:
      @oob_code = oob_code
      @new_password = new_password
    end

    private

    def payload
      {
        oobCode: @oob_code,
        newPassword: @new_password
      }
    end
  end
end
