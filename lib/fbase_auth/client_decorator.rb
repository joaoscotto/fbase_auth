# frozen_string_literal: true

module FbaseAuth::ClientDecorator
  def self.apply
    FbaseAuth::Helper.action_classes.each do |klass|
      klass_name = FbaseAuth::Helper.camelize klass

      FbaseAuth::Client.define_singleton_method klass do |*args|
        Object
          .const_get("FbaseAuth::Action::#{klass_name}")
          .new(*args)
          .call
      end
    end
  end
end
