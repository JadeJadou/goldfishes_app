class Owner::DashboardsController < ApplicationController
  def show
    @user_bookings = current_user.bookings.where(status: 'pending')
    @validate_bookings = current_user.bookings.where(status: 'accepted')
    @incoming_bookings = Booking.includes(:shark).where(shark: { owner: current_user }).where(status: 'pending')
    @sharks = current_user.sharks
  end
end
