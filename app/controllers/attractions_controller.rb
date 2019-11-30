class AttractionsController < ApplicationController

  def index
    @user = current_user
    @attractions = Attraction.all
  end

  def show
    @attraction = Attraction.find(params[:id])
    @ride = @attraction.rides.build(user_id: current_user.id)
  end

  def new
    @attraction = Attraction.new
  end

  def create
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :nausea_rating,
    :happiness_rating, :tickets)
  end
end
