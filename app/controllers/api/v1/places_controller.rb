class Api::V1::PlacesController < ApplicationController

  # GET all places
  def index
    @places = Place.all
    render json: @places
  end

  # GET place by id
  def show
    @place = Place.find(params[:id])
    render json: @place
  end


end
