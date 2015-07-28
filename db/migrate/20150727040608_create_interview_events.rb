class CreateInterviewEvents < ActiveRecord::Migration
  def change
    create_table :interview_events do |t|
      t.integer :score
      t.integer :application_id
      t.integer :interview_type_id

      t.timestamps
    end
  end
end
