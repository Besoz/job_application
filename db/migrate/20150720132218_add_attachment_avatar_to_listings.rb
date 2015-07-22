class AddAttachmentAvatarToListings < ActiveRecord::Migration
  def self.up
    change_table :applicants do |t|
      t.attachment :file_avatar
    end
  end

  def self.down
    remove_attachment :applicants, :file_avatar
  end
end
