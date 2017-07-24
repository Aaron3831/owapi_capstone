require 'overwatch'

class HomeController < ApplicationController

  class LoadUp
    include Overwatch
  end

  def index
    puts(Overwatch.fetch_profile('pc', 'us', 'RaTskhi-1729')["name"])
  end
end
