class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    @groups = Group.all
    @events = Event.all
    if @user.save
      payload = { user_id: @user.id }
      render json: { user: @user, jwt: issue_token(payload), groups: @groups, events: @events, success: "Welcome to SHCC, #{@user.username}", notice: Notice.last }
    else
      render json: { failure: @user.errors }
    end
  end

  def me
    @groups = Group.all
    @events = Event.all
    render json: { user: current_user, groups: @groups, events: @events, notice: Notice.last }
  end

  def admin
    @user = User.find(params[:user][:id])
    @user.update_attribute(:admin, !@user.admin)
    @users = User.all
    render json: @users
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email, :admin)
  end
end
