class AddDateToInterviewEvents < ActiveRecord::Migration
  def change
    add_column :interview_events, :date, :string
  end
end
