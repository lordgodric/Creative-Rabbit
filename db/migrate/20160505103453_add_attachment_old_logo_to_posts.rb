class AddAttachmentOldLogoToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :old_logo
    end
  end

  def self.down
    remove_attachment :posts, :old_logo
  end
end
