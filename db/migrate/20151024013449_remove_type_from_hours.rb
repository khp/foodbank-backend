class RemoveTypeFromHours < ActiveRecord::Migration
  def change
  	remove_column :hours, :type
  	add_column :hours, :crowd, :string
  end
end
