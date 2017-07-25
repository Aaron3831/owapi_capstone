require 'overwatch'
require 'pry'

class Stat < ApplicationRecord

  def ptag(player_tag)
    @player_tag = player_tag
  end

  def platform(platform)
    @platform = platform
  end

  def region(region)
    @region = region
  end

  def get_all
    response = Overwatch.fetch_profile(@platform, @region, @player_tag)
    response["name"]
    puts(response["name"])

  end
end
