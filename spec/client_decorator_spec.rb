# frozen_string_literal: true

RSpec.describe FbaseAuth::ClientDecorator do
  describe "#apply" do
    subject do
      described_class.apply
      FbaseAuth::Client.methods
    end

    it "the decorated FbaseAuth::Client has the send_email_verification method" do
      expect(subject).to include :send_email_verification
    end

    it "the decorated FbaseAuth::Client has the send_password_reset_email method" do
      expect(subject).to include :send_password_reset_email
    end

    it "the decorated FbaseAuth::Client has the sign_in_with_password method" do
      expect(subject).to include :sign_in_with_password
    end

    it "the decorated FbaseAuth::Client has the sign_up method" do
      expect(subject).to include :sign_up
    end
  end
end
