class User < ApplicationRecord
  has_secure_password

  has_many :groups, through: :members
end
