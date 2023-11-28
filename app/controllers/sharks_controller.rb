class SharksController < ApplicationController
  def index
  end

  def show
    @shark = Shark.find(params[:id])
    @booking = Booking.new
  end

  private

  def shark_params
    params.require(:shark).permit(:name, :description, :price_per_day, :photos[])
  end
end
