# frozen_string_literal: true

RSpec.describe Fbauth::Helper do
  describe "#camelize" do
    subject { described_class.camelize "snake_case" }

    context "when is snake_case string" do
      it "convert string to camel case" do
        expect(subject).to eq "SnakeCase"
      end
    end
  end

  describe "#action_classes" do
    subject { described_class.action_classes }

    it "list does not have base" do
      expect(subject).to_not include "base"
    end

    it "list has the sign_in_with_password class" do
      expect(subject).to include "sign_in_with_password"
    end

    it "list has the sign_up class" do
      expect(subject).to include "sign_up"
    end

    it "list has the send_password_reset_email class" do
      expect(subject).to include "send_password_reset_email"
    end

    it "list has the send_email_verification class" do
      expect(subject).to include "send_email_verification"
    end
  end
end
