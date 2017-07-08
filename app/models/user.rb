class User < ApplicationRecord
  validates :username, :email, :presence => true, :uniqueness => true

  has_many :submissions
  has_many :stores, :through => :submissions

  has_secure_password
end
