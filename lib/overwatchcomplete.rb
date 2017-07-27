require "overwatch/version"
require "httparty"
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require 'rubygems'


module Overwatchcomplete
  include HTTParty
  base_uri 'https://ow-api.com/v1/stats/'

  def self.fetch_complete(platform, region, battle_tag)
    call = "/#{platform}/#{region}/#{battle_tag}/complete"
    response = get(call)
    json = JSON.parse(response.body)
  end
  # def self.fetch_profile(call)
  #   response = get(call)
  #   json = JSON.parse(response.body)
  # end
end
