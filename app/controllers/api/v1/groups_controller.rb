class Api::V1::GroupsController < ApplicationController

  def setGroup
    @group = Group.find(params[:group][:id])
    render json: @group, include: [:events, :users]
  end
end
