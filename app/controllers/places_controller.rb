class PlacesController < ApplicationController
  def index
    @places = Array.new
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params[:place])

    @place.save
    redirect_to @place
  end
end
