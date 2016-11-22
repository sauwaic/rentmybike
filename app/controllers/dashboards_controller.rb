class DashboardsController < ApplicationController

  def my_profile
  end

  def my_bookings
    @bookings = current_user.bookings
  end

  def my_bikes
    @bikes = current_user.bikes
  end

end
