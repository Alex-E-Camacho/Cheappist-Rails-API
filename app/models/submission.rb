class Submission < ApplicationRecord
  validates :description, :price, :date_purchased, :store_id, :user_id, :presence => true

  belongs_to :user
  belongs_to :store
end
