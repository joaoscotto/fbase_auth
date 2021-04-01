# frozen_string_literal: true

RSpec.describe Fbauth::Action::SendEmailVerification do
  it "path is sendOobCode" do
    expect(described_class::PATH).to eq "sendOobCode"
  end

  describe "#call", :mock_api_host do
    let(:id_token) { "test" }
    let(:payload) { { idToken: id_token, requestType: "VERIFY_EMAIL" }.to_json }

    subject { described_class.new(id_token: id_token).call }

    it "send request with all data in the payload" do
      subject
      assert_requested(:post, @url) { |req| req.body == payload }
    end
  end
end
