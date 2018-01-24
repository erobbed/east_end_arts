class Api::V1::GroupsController < ApplicationController

  def setGroup
    @group = Group.find(params[:group][:id])
    render json: @group
  end

  def create
    group = Group.new(group_params)
    if group.valid?
      user = User.find(params[:userId])
      group.save
      group.users << user
      group.members.last.update(group_admin: true)
      @groups = Group.all
      render json: {groups: @groups, success: "#{group.name} has been created"}
    else
      render json: {failure: group.errors}
    end
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end
end
