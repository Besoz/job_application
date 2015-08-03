class Interview < ActiveRecord::Base
	belongs_to :application
  attr_accessible :application_id, :score, :interview_type_id, :date
end
