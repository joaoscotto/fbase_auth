# frozen_string_literal: true

module Fbauth::ClientDecorator
  def self.apply
    action_classes.each do |klass|
      klass_name = camelize klass

      Fbauth::Client.define_singleton_method klass do |*args|
        Object
          .const_get("Fbauth::Action::#{klass_name}")
          .new(*args)
          .call
      end
    end
  end

  class << self
    private

    def camelize str
      str.split("_").map(&:capitalize).join
    end

    def action_classes
      Dir
        .entries("./lib/fbauth/action/")
        .map { |file| file.gsub(".rb", "") if file.include?(".rb") }
        .compact
    end
  end
end
