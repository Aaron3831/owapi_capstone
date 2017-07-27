require 'overwatch'

class SearchesController < ApplicationController
  def index
      @search = Overwatch.fetch_profile(:platform, :region, :battle_tag)["name"]
      #
      # @search.perform if @search.valid?
  end
  def show

  end
  def complete
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    @replacement = @battle_tag.gsub('#', '-')
    call_complete = "/#{@platform}/#{@region}/#{@replacement}/complete"
    @results_complete = Overwatchcomplete.fetch_complete(call_complete)

  end
  def showhero
    # @heroes = params[:get][:heroes]
    # @platform = params[:get][:platform]
    # @region = params[:get][:region]
    # @battle_tag = params[:get][:battle_tag]
    # @replacement = @battle_tag.gsub('#', '-')
    # # call_hero = "/#{@platform}/#{@region}/#{@replacement}/heroes/#{@heroes}"
    # @results_hero = Overwatchhero.fetch_complete(@platform, @region, @replacement, @heroes)

  end
  # def perform
  #   @results = Overwatch.fetch_profile(@platform, @region, @battle_tag)["name"]
  # end
  def create
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    # @heroes = params[:get][:heroes]
    @replacement = @battle_tag.gsub('#', '-')
    # call = "/pc/us/RaTskhi-1729/profile"
    # call_complete = "/#{@platform}/#{@region}/#{@replacement}/complete"
    # call_hero = "/#{@platform}/#{@region}/#{@replacement}/heroes/#{@hero}"
    @results_profile = Overwatch.fetch_profile(@platform, @region, @replacement)
    # @results_complete = OverwatchComplete.fetch_complete(call_complete)
    # @results_hero = OverwatchHero.fetch_complete(call_hero)
    # @results_hero = Overwatchhero.fetch_hero(@platform, @region, @replacement, @heroes)
  end
end
