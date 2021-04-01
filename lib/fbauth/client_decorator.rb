# frozen_string_literal: true

require "fbauth/helper"

module Fbauth::ClientDecorator
  def self.apply
    Fbauth::Helper.action_classes.each do |klass|
      klass_name = Fbauth::Helper.camelize klass

      Fbauth::Client.define_singleton_method klass do |*args|
        Object
          .const_get("Fbauth::Action::#{klass_name}")
          .new(*args)
          .call
      end
    end
  end
end
