class AddAttachmentCoverImageToBlogEntries < ActiveRecord::Migration
  def self.up
    change_table :blog_entries do |t|
      t.attachment :cover_image
    end
  end

  def self.down
    drop_attached_file :blog_entries, :cover_image
  end
end
