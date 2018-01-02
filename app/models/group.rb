class Group < ApplicationRecord
  validates :name, uniqueness: true

  has_many :events
  has_many :members
  has_many :users, through: :members


  def admins
    self.members.select{|member| member.group_admin}
  end
end
