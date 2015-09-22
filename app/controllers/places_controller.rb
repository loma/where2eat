class PlacesController < ApplicationController
  def index
    @places = Array.new
  end

  def new
    @place = Place.new
  end
end
