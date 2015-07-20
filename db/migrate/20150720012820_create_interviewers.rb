class CreateInterviewers < ActiveRecord::Migration
  def change
    create_table :interviewers do |t|
      t.string :name
      t.string :email
      t.string :position
      t.string :encrypted_password

      t.timestamps
    end
  end
end
