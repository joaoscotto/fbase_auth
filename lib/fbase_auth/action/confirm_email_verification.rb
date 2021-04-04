# frozen_string_literal: true

module FbaseAuth::Action
  class ConfirmEmailVerification < Base
    PATH = "update"

    def initialize oob_code:
      @oob_code = oob_code
    end

    private

    def payload
      { oobCode: @oob_code }
    end
  end
end
