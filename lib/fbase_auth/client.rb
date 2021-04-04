# frozen_string_literal: true

require "fbase_auth/request"
Dir["#{File.dirname(__FILE__)}/action/*.rb"].sort.each { |file| require file }

module FbaseAuth::Client; end
