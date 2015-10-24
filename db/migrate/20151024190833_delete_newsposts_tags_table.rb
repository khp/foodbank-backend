class DeleteNewspostsTagsTable < ActiveRecord::Migration
  def change
  	drop_table :newsposts_tags
  end
end
