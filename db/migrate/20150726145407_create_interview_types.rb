class CreateInterviewTypes < ActiveRecord::Migration
  def change
    create_table :interview_types do |t|
      t.string :name
      t.string :description
      t.integer :duration

      t.timestamps
    end
  end
end
