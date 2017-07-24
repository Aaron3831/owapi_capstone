class StatsController < ApplicationController

include Overwatch

  def index
    puts(self.fetch_profile('pc', 'us', 'RaTskhi-1729'))
  end

end
