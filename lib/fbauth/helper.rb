# frozen_string_literal: true

module Fbauth::Helper
  def self.camelize str
    str.split("_").map(&:capitalize).join
  end

  def self.action_classes
    Dir
      .entries("./lib/fbauth/action/")
      .map { |file| file.gsub(".rb", "") if file.include?(".rb") }
      .tap { |file| file.delete("base") }
      .compact
  end
end
