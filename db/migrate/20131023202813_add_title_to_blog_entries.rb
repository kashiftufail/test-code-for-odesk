class AddTitleToBlogEntries < ActiveRecord::Migration
  def change
    add_column :blog_entries, :title, :string
  end
end
