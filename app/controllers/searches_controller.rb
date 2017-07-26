require 'overwatch'

class SearchesController < ApplicationController
  def index
      @search = Overwatch.fetch_profile(:platform, :region, :battle_tag)["name"]
      #
      # @search.perform if @search.valid?
  end
  def show

  end
  # def perform
  #   @results = Overwatch.fetch_profile(@platform, @region, @battle_tag)["name"]
  # end
  def create
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    call = "/#{@platform}/#{@region}/#{@battle_tag}/profile"
    # call = "/pc/us/RaTskhi-1729/profile"
    puts call
    @results = Overwatch.fetch_profile(call)
  end
end
