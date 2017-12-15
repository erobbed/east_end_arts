class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: {user: user, jwt: token, groups: Group.all}
      # a user exists and I can authenticate a user so successs
    else
    end
  end
end
