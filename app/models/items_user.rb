class ItemsUser < ApplicationRecord
  validates :price, :presence => true
  
  belongs_to :user
  belongs_to :item
end
