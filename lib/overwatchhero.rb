require "overwatch/version"
require "httparty"
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require 'rubygems'


module Overwatchhero
  include HTTParty
  base_uri 'https://ow-api.com/v1/stats/'

  def self.fetch_hero(platform, region, battle_tag, heroes)
    call = "/#{platform}/#{region}/#{battle_tag}/heroes/#{heroes}"
    response = get(call)
    json = JSON.parse(response.body)
  end
  # def self.fetch_profile(call)
  #   response = get(call)
  #   json = JSON.parse(response.body)
  # end
end
