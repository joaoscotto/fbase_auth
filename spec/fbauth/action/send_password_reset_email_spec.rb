# frozen_string_literal: true

RSpec.describe Fbauth::Action::SendPasswordResetEmail do
  it "path is sendOobCode" do
    expect(described_class::PATH).to eq "sendOobCode"
  end

  describe "#call", :mock_api_host do
    let(:params) { { email: "jhon@example.com" } }
    let(:payload) { params.merge(requestType: "PASSWORD_RESET").to_json }

    subject { described_class.new(params).call }

    it "send request with all data in the payload" do
      subject
      assert_requested(:post, @url) { |req| req.body == payload }
    end
  end
end
