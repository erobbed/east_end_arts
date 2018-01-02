class Api::V1::GroupsController < ApplicationController

  def setGroup
    @group = Group.find(params[:group][:id])
    render json: @group, include: [:events, :users]
  end

  def create
    group = Group.new(group_params)
    if group.valid?
      user = User.find(params[:userId])
      group.save
      group.users << user
      group.members.last.update(group_admin: true)

      render json: group
    end

  end

  private
  def group_params
    params.require(:group).permit(:name)
  end
end
