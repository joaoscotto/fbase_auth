# frozen_string_literal: true

module FbaseAuth::Helper
  def self.camelize str
    str.split("_").map(&:capitalize).join
  end

  def self.action_classes
    Dir
      .entries("./lib/fbase_auth/action/")
      .map { |file| file.gsub(".rb", "") if file.include?(".rb") }
      .tap { |file| file.delete("base") }
      .compact
  end
end
