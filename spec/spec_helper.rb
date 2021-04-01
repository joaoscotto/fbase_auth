# frozen_string_literal: true

require "fbauth"
require "webmock/rspec"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before :all, :mock_api_host do
    @url = "#{Fbauth.config.host}#{described_class::PATH}?key=#{Fbauth.config.api_key}"
    stub_request(:post, @url).to_return body: { 'message': "ok" }.to_json
  end
end
