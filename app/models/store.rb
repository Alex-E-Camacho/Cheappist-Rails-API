class Store < ApplicationRecord
  validates :name, :address1, :city, :state, :postal_code, :presence => true

  has_many :items
end
