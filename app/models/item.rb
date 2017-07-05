class Item < ApplicationRecord
  validates :description, :price, :store_id, :presence => true

  has_many :items_users
  has_many :users, :through => :items_users

  belongs_to :store
end
