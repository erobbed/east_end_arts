class Group < ApplicationRecord
  has_many :events
  has_many :members
  has_many :users, through: :members

end
