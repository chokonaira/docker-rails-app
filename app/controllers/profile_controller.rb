class ProfileController < ApplicationController

  def user_profile
      user_profile = User.find_by(:id => params[:id])
    if user_profile.present?
      render json: { message: "User details fetched succesfully", user: user_profile}, status: 200
    else
      render json: user_profile.errors.details, status: 401
    end
  end
end