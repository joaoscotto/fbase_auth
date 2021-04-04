# frozen_string_literal: true

module FbaseAuth::Request
  def self.post path, payload
    url = "#{FbaseAuth.config.host}#{path}?key=#{FbaseAuth.config.api_key}"
    response = HTTP.post url, json: payload

    {
      code: response.code,
      body: JSON.parse(response.to_s)
    }
  end
end
