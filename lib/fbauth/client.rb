# frozen_string_literal: true

require "fbauth/request"
Dir["./lib/fbauth/action/*.rb"].sort.each { |file| require file }

module Fbauth::Client; end
