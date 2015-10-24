class RemoveStartTimeAndEndTimeFromHours < ActiveRecord::Migration
  def change
    remove_column :hours, :start, :datetime
    remove_column :hours, :end, :datetime
  end
end
