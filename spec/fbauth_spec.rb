# frozen_string_literal: true

RSpec.describe Fbauth do
  describe "#configure" do
    before { Fbauth.configure { |config| config.api_key = "test" } }
    subject { Fbauth.config.api_key }

    it "the api_key value is test" do
      expect(subject).to eq "test"
    end
  end

  describe "#Fbauth::VERSION" do
    subject { Fbauth::VERSION }

    it "has a version number" do
      expect(subject).not_to be nil
    end
  end
end
