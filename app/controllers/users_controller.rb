class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user.as_json
    else
      render json: { message: "User creation failed", errors: @user.errors.full_messages }
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :first_name, :last_name)
  end
end