class RemoveDatePostedFromNewspost < ActiveRecord::Migration
  def change
    remove_column :newsposts, :date_posted, :datetime
  end
end
