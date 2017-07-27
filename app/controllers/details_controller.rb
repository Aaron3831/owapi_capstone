require 'overwatchcomplete'

class DetailsController < ApplicationController
  def show

  end

  def create
    @platform = params[:get][:platform]
    @region = params[:get][:region]
    @battle_tag = params[:get][:battle_tag]
    @replacement = @battle_tag.gsub('#', '-')
    # call_complete = "/#{@platform}/#{@region}/#{@replacement}/complete"
    @results_complete = Overwatchcomplete.fetch_complete(@platform, @region, @replacement)
  end
end
