# frozen_string_literal: true

module Fbauth::Action
  class SignInWithPassword < Base
    PATH = "signInWithPassword"

    def initialize email:, password:
      @email = email
      @password = password
    end

    private

    def payload
      {
        email: @email,
        password: @password,
        return_secure_token: true
      }
    end
  end
end
