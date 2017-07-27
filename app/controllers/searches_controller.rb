require 'overwatch'
require 'overwatch_complete'
require 'overwatch_hero'

class SearchesController < ApplicationController
  def index
      @search = Overwatch.fetch_profile(:platform, :region, :battle_tag)["name"]
      #
      # @search.perform if @search.valid?
  end
  def show

  end
  def complete
    @hero = params[:get][:hero]
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    @replacement = @battle_tag.gsub('#', '-')
    call_complete = "/#{@platform}/#{@region}/#{@replacement}/complete"
    @results_complete = OverwatchComplete.fetch_complete(call_complete)

  end
  def hero
    @hero = params[:get][:hero]
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    @replacement = @battle_tag.gsub('#', '-')
    call_hero = "/#{@platform}/#{@region}/#{@replacement}/heroes/#{@hero}"
    @results_hero = OverwatchHero.fetch_complete(call_hero)
  end
  # def perform
  #   @results = Overwatch.fetch_profile(@platform, @region, @battle_tag)["name"]
  # end
  def create
    @hero = params[:get][:hero]
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    @replacement = @battle_tag.gsub('#', '-')
    call_profile = "/#{@platform}/#{@region}/#{@replacement}/profile"
    # call = "/pc/us/RaTskhi-1729/profile"
    # call_complete = "/#{@platform}/#{@region}/#{@replacement}/complete"
    # call_hero = "/#{@platform}/#{@region}/#{@replacement}/heroes/#{@hero}"
    @results_profile = Overwatch.fetch_profile(call_profile)
    # @results_complete = OverwatchComplete.fetch_complete(call_complete)
    # @results_hero = OverwatchHero.fetch_complete(call_hero)
  end
end
