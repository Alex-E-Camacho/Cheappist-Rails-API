class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :brand
      t.string :description, null: false
      t.string :model_number
      t.references :store, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
