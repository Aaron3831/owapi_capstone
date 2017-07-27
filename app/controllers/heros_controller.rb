require 'overwatchhero'

class HerosController < ApplicationController

  def showhero
    @heroes = params[:get][:heroes]
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    @replacement = @battle_tag.gsub('#', '-')
    # call_hero = "/#{@platform}/#{@region}/#{@replacement}/heroes/#{@heroes}"
    @results_hero = Overwatchhero.fetch_complete(@platform, @region, @replacement, @heroes)

  end

  def show

  end

  def create
    @heroes = params[:get][:heroes]
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    @replacement = @battle_tag.gsub('#', '-')
    # call_hero = "/#{@platform}/#{@region}/#{@replacement}/heroes/#{@heroes}"
    @results_hero = Overwatchhero.fetch_hero(@platform, @region, @replacement, @heroes)

  end
end
