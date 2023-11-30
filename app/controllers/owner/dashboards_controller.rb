class Owner::DashboardsController < ApplicationController
  def show
    @user_bookings = current_user.bookings
  end
end
