class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.text :html
      t.integer :author_id

      t.timestamps
    end
  end
end
