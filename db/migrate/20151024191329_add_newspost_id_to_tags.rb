class AddLocationIdToTags < ActiveRecord::Migration
  def change
  	add_column :tags, :newspost_id, :integer
  end
end
