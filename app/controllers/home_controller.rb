require 'overwatch'

class HomeController < ApplicationController

  class LoadUp
    include Overwatch
  end

  def index
  end
end
