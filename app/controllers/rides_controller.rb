class RidesController < ApplicationController
  def create
    ride = Ride.create(ride_params)
    @user = params[:user_id]
    redirect_to user_path(@user)
  end

  private
  def ride_params
    params.require(:ride).permit(:user_id, :attraction_id)
  end
end
