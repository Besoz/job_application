 class AddAvatarColumnsToUsers < ActiveRecord::Migration
    def self.up
     add_attachment :applicants, :img_avatar
     add_attachment :applicants, :file_avatar  
    end

   def self.down
     remove_attachment :applicants, :img_avatar
     remove_attachment :applicants, :file_avatar
   end
 end
