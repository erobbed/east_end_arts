class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: {user: user, jwt: token, groups: Group.all, events: Event.all, success: "Welcome to SHACC, #{user.username}", }
    else
      render json: {failure: 'password/username incorrect'}
    end
  end
end
