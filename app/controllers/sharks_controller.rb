class SharksController < ApplicationController
  def index
    @sharks = Shark.all
  end

  def show
  end
end
