class SharksController < ApplicationController
  def index
    @sharks = Shark.all
    @markers = @sharks.geocoded.map do |shark|
      {
        lat: shark.latitude,
        lng: shark.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {shark: shark})
      }
    end
  end

  def show
    @shark = Shark.find(params[:id])
    @booking = Booking.new
    @marker = [{
      lat: @shark.latitude,
      lng: @shark.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: {shark: @shark})
    }]

  end

  private

  def shark_params
    params.require(:shark).permit(:name, :description, :price_per_day, :photos[])
  end
end
