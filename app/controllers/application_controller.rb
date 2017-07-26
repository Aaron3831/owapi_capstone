class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_query

  def current_query
    if search_params = params[:search] && params[:search][:platform][:region][:ptag]
      @search = Search.new(platform: search_params)
      @search.perform if @search.valid?
    else
      @search = Search.new
    end
  end
end
