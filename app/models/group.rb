class Group < ApplicationRecord
  has_many :events
  has_many :users
end
