class Group < ApplicationRecord
  has_many :events
  has_many :members
  has_many :users, through: :members


  def admins
    self.members.select{|member| member.groupadmin}
  end
end
