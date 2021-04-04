# frozen_string_literal: true

RSpec.describe FbaseAuth::Action::SignUp do
  it "path is signUp" do
    expect(described_class::PATH).to eq "signUp"
  end

  describe "#call", :mock_api_host do
    let(:params) { { email: "john@example.com", password: "test21" } }
    let(:payload) { params.merge(return_secure_token: true).to_json }

    subject { described_class.new(params).call }

    it "send request with all data in the payload" do
      subject
      assert_requested(:post, @url) { |req| req.body == payload }
    end
  end
end
