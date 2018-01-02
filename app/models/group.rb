class Group < ApplicationRecord
  has_many :events
  has_many :members
  has_many :users, through: :members, as: :group_members


  def admins
    self.members.select{|member| member.group_admin}
  end
end
