class BookingsController < ApplicationController

before_action :set_booking, only: [ :show, :edit, :update, :destroy ]
before_action :set_bike, only: [ :new, :create ]


  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.new(booking_parameters)
    booking.bike = @bike
    booking.user = current_user
    booking.save
    redirect_to bike_bookings_path(@bike)
  end

  def edit

  end

  def update
    @booking.update(booking_parameters)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_parameters
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_bike
    @bike = Bike.find(params[:bike_id])
  end

end


