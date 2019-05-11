class Api::V1::LocationsController < ApplicationController

  # GET all locations
  def index
    # binding.pry
    @locations = Location.all
    render json: @locations
  end

  # GET location by id
  def show
    @location = Location.find(params[:id])
    render json: @locationProut
  end

end
