# frozen_string_literal: true

RSpec.describe FbaseAuth::Config do
  context "when the object is initialized" do
    subject { described_class.new.api_key }

    it "attribute api_key is empty" do
      expect(subject).to eq ""
    end
  end
end
