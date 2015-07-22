class AddCvAvatarToApplicantions < ActiveRecord::Migration
  def self.up
    change_table :applications do |t|
      t.attachment :CV
    end
  end

  def self.down
    remove_attachment :applications, :CV
  end
end
