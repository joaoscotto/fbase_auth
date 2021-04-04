# frozen_string_literal: true

RSpec.describe FbaseAuth::Action::ConfirmPasswordReset do
  it "path is resetPassword" do
    expect(described_class::PATH).to eq "resetPassword"
  end

  describe "#call", :mock_api_host do
    let(:oob_code) { "test" }
    let(:new_password) { "test123" }
    let(:payload) { { oobCode: oob_code, newPassword: new_password }.to_json }

    subject do
      described_class.new(oob_code: oob_code, new_password: new_password).call
    end

    it "send request with all data in the payload" do
      subject
      assert_requested(:post, @url) { |req| req.body == payload }
    end
  end
end
