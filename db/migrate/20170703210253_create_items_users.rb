class CreateItemsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :items_users do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.string :price, null: false
      t.string :per

      t.timestamps(null: false)
    end
  end
end
