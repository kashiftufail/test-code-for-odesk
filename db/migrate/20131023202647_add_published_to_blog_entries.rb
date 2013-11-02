class AddPublishedToBlogEntries < ActiveRecord::Migration
  def change
    add_column :blog_entries, :published, :boolean
  end
end
