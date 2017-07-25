require 'overwatch'

class SearchesController < ApplicationController
  def index
    search_params = params[:search] && params[:search][:platform][:region][:ptag]
    @search = Overwatch.fetch_profile(:platform, :region, :battle_tag)
    @search.perform if @search.valid?
  end
  def show
    if search_params = params[:search] && params[:search][:platform][:region][:battle_tag]
      @search = Search.new(:platform, :region, :battle_tag search_params)
      @search.perform if @search.valid?
    else
      @search = Search.new
    end
  end
end
