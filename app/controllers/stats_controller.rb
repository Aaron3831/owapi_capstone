class StatsController < ApplicationController

  def index
  end

  def show
    stat_object = Stat.new()
    @all_stat = stat_object.get_all()
    puts(@all_stat)
  end
end
