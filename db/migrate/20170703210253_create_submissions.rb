class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.string :brand
      t.string :model_number
      t.string :description, null: false
      t.string :price, null: false
      t.string :per
      t.datetime :date_purchased, null: false
      t.references :store, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
