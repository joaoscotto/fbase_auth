# frozen_string_literal: true

module Fbauth::Request
  def self.post path, payload
    url = "#{Fbauth.config.host}#{path}?key=#{Fbauth.config.api_key}"
    response = HTTP.post url, json: payload

    {
      code: response.code,
      body: JSON.parse(response.to_s)
    }
  end
end
