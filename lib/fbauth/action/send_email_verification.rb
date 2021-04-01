# frozen_string_literal: true

module Fbauth::Action
  class SendEmailVerification < Base
    PATH = "sendOobCode"

    def initialize id_token:
      @id_token = id_token
    end

    private

    def payload
      {
        idToken: @id_token,
        requestType: "VERIFY_EMAIL"
      }
    end
  end
end
