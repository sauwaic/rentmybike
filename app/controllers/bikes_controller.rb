class BikesController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_bike, only: [ :show, :edit, :update, :destroy ]

  def index
    @bikes = Bike.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@bikes) do |bike, marker|
      marker.lat bike.latitude
      marker.lng bike.longitude
      # marker.infowindow render_to_string(partial: "/bikes/map_box", locals: { bike: bike })
    end
  end

  def show
    @bike = Bike.find(params[:id])
    @alert_message = "You are viewing #{@bike.gender}"
  end

  def new
    @bike = Bike.new
  end

   def create
    bike = Bike.new(bike_parameters)
    bike.user = current_user
    bike.save
    redirect_to bike_path(bike)
  end

  def edit

  end

  def update
    @bike.update(bike_params)
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

  def bike_params
    params.require(:bike).permit(:size, :gender, :category, :gears, :condition, :price, :address, :photo)
  end

end
