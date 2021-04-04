# frozen_string_literal: true

RSpec.describe Fbauth::Action::DeleteAccount do
  it "path is delete" do
    expect(described_class::PATH).to eq "delete"
  end

  describe "#call", :mock_api_host do
    let(:id_token) { "test" }
    let(:payload) { { idToken: id_token }.to_json }

    subject { described_class.new(id_token: id_token).call }

    it "send request with all data in the payload" do
      subject
      assert_requested(:post, @url) { |req| req.body == payload }
    end
  end
end
