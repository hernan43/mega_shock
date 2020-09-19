class UsersController < ApplicationController
  def edit
  end

  def profile
  end

  def update
    current_user.update!(person_params)
    redirect_to user_profile_path
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name)
    end
end
