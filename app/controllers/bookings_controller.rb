class BookingsController < ApplicationController
  def create
    @shark = Shark.find(params[:booking][:shark_id])
    @booking = Booking.new(booking_params)
    @booking.shark = @shark
    @booking.renter = current_user
    if @booking.save
      redirect_to owner_dashboards_path
    else
      render "sharks/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :shark_id)
  end
end
