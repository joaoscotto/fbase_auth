# frozen_string_literal: true

module Fbauth::Action
  class SignInWithPassword
    PATH = "signInWithPassword"

    def initialize email:, password:
      @email = email
      @password = password
    end

    def call
      Fbauth::Request.post(
        PATH,
        {
          email: @email,
          password: @password
        }
      )
    end
  end
end
