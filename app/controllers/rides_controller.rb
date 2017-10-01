class RidesController < ApplicationController

  def new
    @ride = Ride.new(ride_params)
    @user_message = @ride.take_ride

    flash[:notice] = @user_message
      redirect_to user_path(@ride.user, message: @user_message)
  end

  def ride_params
    params.permit(:user_id, :attraction_id)
  end

end
