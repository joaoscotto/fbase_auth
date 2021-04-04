# frozen_string_literal: true

require "fbase_auth/request"
Dir["./lib/fbase_auth/action/*.rb"].sort.each { |file| require file }

module FbaseAuth::Client; end
