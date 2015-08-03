class AddUserIdToInterviewers < ActiveRecord::Migration
  def change
    add_column :interviewers, :user_id, :integer
  end
end
