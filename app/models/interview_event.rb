class InterviewEvent < ActiveRecord::Base
	belongs_to :application
  attr_accessible :application_id, :interview_type_id, :score, :date

end
