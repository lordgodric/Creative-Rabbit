class AddAttachmentNewLogoToLogos < ActiveRecord::Migration
  def self.up
    change_table :logos do |t|
      t.attachment :new_logo
    end
  end

  def self.down
    remove_attachment :logos, :new_logo
  end
end
