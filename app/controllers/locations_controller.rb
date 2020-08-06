class LocationsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show]
  # before_action :set_location, only: [:show, :edit, :update]

  def index
    @locations = Location.all
  end

  # def show
  # end

  # def edit
  # end

  # def update
  # end

  # def new
  # end

  # def create
  # end

  # private

  # def location_params
  #   params.require(:location).permit(
  #     :name, :price, :address, :description, :extra_id, :space, :capacity, :category_id,
  #     available_weekdays: [], photos: []
  #   )
  # end

  # def set_location
  #   @location = Location.find(params[:id])
  # end

end
