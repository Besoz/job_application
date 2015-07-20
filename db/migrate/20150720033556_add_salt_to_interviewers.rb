class AddSaltToInterviewers < ActiveRecord::Migration
  def self.up
    add_column :interviewers, :salt, :string
  end

  def self.down
    add_column :interviewers, :salt
  end
end
