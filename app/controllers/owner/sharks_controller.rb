class Owner::SharksController < ApplicationController
  def new
    @shark = Shark.new
  end

  def create
    @shark = Shark.new(shark_params)
    @shark.owner = current_user

    if @shark.save
      redirect_to owner_dashboards_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def shark_params
    params.require(:shark).permit(:name, :description, :price_per_day, :address, :weight, :skills, photos: [])
  end
end
