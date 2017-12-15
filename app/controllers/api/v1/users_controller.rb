class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      payload = { user_id: @user.id}
      render json: {user: @user, jwt: issue_token(payload), groups: Group.all}
      ## send some message for success
    else
      ## send some error message
    end
  end


  def me
    render json: {user: current_user, groups: Group.all}
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :admin)
  end

end
