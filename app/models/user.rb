class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :password, presence: true, confirmation: true
  validates :email, uniqueness: true

  has_many :members
  has_many :groups, through: :members
end
