# frozen_string_literal: true

module FbaseAuth::Action
  class VerifyPasswordResetCode < Base
    PATH = "resetPassword"

    def initialize oob_code:
      @oob_code = oob_code
    end

    private

    def payload
      { oobCode: @oob_code }
    end
  end
end
