class User < ApplicationRecord
  validates :username, :presence => true, :unique => true

  has_secure_password
end
