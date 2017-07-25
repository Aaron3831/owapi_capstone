require 'overwatch'

class Search < ApplicationRecord
  include ActiveModel::Model
  attr_reader :results
  attr_accessor :platform, :region, :battle_tag
  validates :platform, :region, :battle_tag, presence: true

  def perform
    @results = Overwatch.fetch_profile(:platform, :region, :battle_tag)
  end
end
