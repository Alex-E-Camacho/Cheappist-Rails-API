class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.string :phone_number
      t.string :address1, null: false
      t.string :address2
      t.string :address3
      t.string :city, null: false
      t.string :state, null: false
      t.string :postal_code, null: false

      t.timestamps(null: false)
    end
  end
end
