class CreateNewspostsTags < ActiveRecord::Migration
  def change
    create_table :newsposts_tags do |t|
    	t.belongs_to :newspost, index: true
      t.belongs_to :tag, index:true
    end
  end
end
