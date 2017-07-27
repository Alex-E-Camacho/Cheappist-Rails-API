class Submission < ApplicationRecord
  validates :description, :price, :date_purchased, :store_id, :user_id, :presence => true

  belongs_to :user
  belongs_to :store

  include PgSearch

  pg_search_scope :search, :against => [:brand, :description, :model_number] 

  def self.description_search(query)
    if query.present?
      search(query)
    end
  end

end
