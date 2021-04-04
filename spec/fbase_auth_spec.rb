# frozen_string_literal: true

RSpec.describe FbaseAuth do
  describe "#configure" do
    before do
      @host = "https://identitytoolkit.googleapis.com/v1/accounts:"
      FbaseAuth.configure { |config| config.api_key = "test" }
    end

    subject { FbaseAuth.config }

    it "the api_key value is test" do
      expect(subject.api_key).to eq "test"
    end

    it "the return_secure_token value is true" do
      expect(subject.return_secure_token).to eq true
    end

    it "the host value is #{@host}" do
      expect(subject.host).to eq @host
    end
  end

  describe "#Fbauth::VERSION" do
    subject { FbaseAuth::VERSION }

    it "has a version number" do
      expect(subject).not_to be nil
    end
  end
end
