class LocationsController < ApplicationController
  before_action :find_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.user_id = current_user.id
    if @location.save
      redirect_to locations_url
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update_attributes(location_params)
      redirect_to location_url(@location.id)
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end

  private

  def find_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:title, :description)
  end
end
