class BikesController < ApplicationController

  before_action :set_bike, only: [ :show, :edit, :update, :destroy ]

  def index
    @bikes = Bike.all
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    bike = Bike.new(bike_parameters)
    bike.user = current_user
    bike.save
    redirect_to bikes_path
  end

  def edit

  end

  def update
    @bike.update(bike_parameters)
    redirect_to bike_path(@bike)
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_parameters
    params.require(:bike).permit(:size, :gender, :category, :gears, :picture_url, :condition, :price)
  end

end
