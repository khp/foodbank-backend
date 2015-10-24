class AddAvatarToNewspost < ActiveRecord::Migration
  def change
  	add_column :newsposts, :avatar, :string
  end
end
