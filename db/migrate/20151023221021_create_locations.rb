class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
