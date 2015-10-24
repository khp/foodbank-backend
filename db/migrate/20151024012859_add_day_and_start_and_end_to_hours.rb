class AddDayAndStartAndEndToHours < ActiveRecord::Migration
  def change
    add_column :hours, :day, :string
    add_column :hours, :start, :time
    add_column :hours, :end, :time
  end
end
