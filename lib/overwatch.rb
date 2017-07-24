require "overwatch/version"
require "httparty"
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require 'rubygems'
require 'json'

module Overwatch
  include HTTParty
  base_uri 'https://ow-api.com/v1/stats/'

  def self.fetch_profile(platform, region, battle_tag)
    response = get("/#{platform}/#{region}/#{battle_tag}/profile")
    json = JSON.parse(response.body)
    # get("https://ow-api.com/v1/stats/pc/us/RaTskhi-1729/profile").parsed_response
  end
end
