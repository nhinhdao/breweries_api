class LocationsController < ApplicationController

  # GET all locations
  def index
    @locations = Location.all

    render json: @locations
  end

  # GET location by id
  def show
    @location = Location.find(params[:id])
    render json: @location
  end

end
