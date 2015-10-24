class ChangedEmailAndContentInFeedbacks < ActiveRecord::Migration
  def change
  	rename_column :feedbacks, :content, :message
  	rename_column :feedbacks, :email, :contact
  	add_column :feedbacks, :category, :string
  end
end
