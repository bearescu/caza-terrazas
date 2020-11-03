class LocationsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_location, only: [:show, :edit, :update]

  def index
    @locations = Location.all
  end

  def show
    set_location
  end

  def edit
    set_location
  end

  def update
    set_location
    @location.update(location_params)
    redirect_to location_path(@location)
  end

  def new
    @location = Location.new 
  end

  def create  
    @location = Location.new(location_params)
    @location.save
    redirect_to location_path(@location)
  end

  private

  def location_params
    params.require(:location).permit(:name, :price, :address, :description, :extra_id, :space, :capacity, :category_id,
      available_weekdays: [], photos: [])
  end

  def set_location
    @location = Location.find(params[:id])
  end

end
