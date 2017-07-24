require 'spec_helper'
require 'rubygems'
require 'json'

describe Overwatch do
  it 'has a version number' do
    expect(Overwatch::VERSION).not_to be nil
  end

  describe '.fetch_profile' do
    it 'returns the user profile' do
      expect(Overwatch.fetch_profile('pc', 'us', 'RaTskhi-1729')["name"]).to eq("RaTskhi")
    end
  end
end
