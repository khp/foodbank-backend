class CreateNewsposts < ActiveRecord::Migration
  def change
    create_table :newsposts do |t|
      t.text :content
      t.datetime :date_posted
      t.string :poster

      t.timestamps null: false
    end
  end
end
