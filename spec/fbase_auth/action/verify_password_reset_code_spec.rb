# frozen_string_literal: true

RSpec.describe FbaseAuth::Action::VerifyPasswordResetCode do
  it "path is resetPassword" do
    expect(described_class::PATH).to eq "resetPassword"
  end

  describe "#call", :mock_api_host do
    let(:oob_code) { "test" }
    let(:payload) { { oobCode: oob_code }.to_json }

    subject { described_class.new(oob_code: oob_code).call }

    it "send request with all data in the payload" do
      subject
      assert_requested(:post, @url) { |req| req.body == payload }
    end
  end
end
