require 'overwatch'

class SearchesController < ApplicationController
  def show
    if search_params = params[:search] && params[:search][:platform][:region][:battle_tag]
      @search = Search.new(platform: region: battle_tag: search_params)
      @search.perform if @search.valid?
    else
      @search = Search.new
    end
  end
end
