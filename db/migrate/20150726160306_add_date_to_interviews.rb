class AddDateToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :date, :date
  end
end
