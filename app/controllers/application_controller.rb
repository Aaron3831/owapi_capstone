class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :ptag
  helper_method :platform
  helper_method :region

  def ptag(player_tag)
    @player_tag = player_tag
  end

  def platform(platform)
    @platform = platform
  end

  def region(region)
    @region = region
  end
end
