class SearchController < ApplicationController
  def show
    if search_params = params[:search] && params[:search][:platform][:region][:battle_tag]
      @search = Search.new(platform: search_params)
      @search.perform if @search.valid?
    else
      @search = Search.new
    end
  end
end
