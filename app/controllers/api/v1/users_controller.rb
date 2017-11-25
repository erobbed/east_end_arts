class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:me]
  def index
    @users = User.all
    render json: @users
  end

  def create
    byebug
    @user = User.new(user_params)
    if @user.save
      payload = { user_id: @user.id}
      render json: {user: @user, jwt: issue_token(payload)}
      ## send some message for success
    else
      ## send some error message
    end
  end


  def me
    render json: current_user
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :admin)
  end

end
