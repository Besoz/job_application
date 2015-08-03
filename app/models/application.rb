class Application < ActiveRecord::Base
	belongs_to :applicant
	belongs_to :interviewer
	has_many :interview_events
	belongs_to :vacant_job
  	attr_accessible :applicant_id, :application_status, :cv, :linkedin, 
  	:military_status, :priority, :vacant_job_id,:CV

  	has_attached_file :CV, :default_url => "/files/:style/missing.doc"

  	validates_attachment :CV, content_type: { content_type: "application/pdf" }

end
