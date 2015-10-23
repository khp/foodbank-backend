class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.datetime :start
      t.datetime :end
      t.string :type

      t.timestamps null: false
    end
  end
end
