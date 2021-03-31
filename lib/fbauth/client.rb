# frozen_string_literal: true

module Fbauth
  module Client
    Dir["./lib/fbauth/action/*.rb"].sort.each { |file| require file }
  end
end
