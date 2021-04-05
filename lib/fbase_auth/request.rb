# frozen_string_literal: true

module FbaseAuth::Request
  def self.post path, payload
    url = "#{FbaseAuth.config.host}#{path}?key=#{FbaseAuth.config.api_key}"
    response = HTTP.post url, json: payload

    wrapper = {
      code: response.code,
      body: JSON.parse(response.to_s)
    }

    return wrapper if [200, 204].include? response.code.to_i

    raise ArgumentError, wrapper
  end
end
