class User < ApplicationRecord
  validates :username, :presence => true, :uniqueness => true

  has_many :items_users
  has_many :items, :through => :items_users

  has_secure_password
end
