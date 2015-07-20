class Applicant < ActiveRecord::Base
  attr_accessible :email, :name, :img_avatar, :file_avatar


  has_attached_file :img_avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :file_avatar, :default_url => "/files/:style/missing.doc"

  validates_attachment :file_avatar, content_type: { content_type: "application/pdf" }


  has_many :applications


  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,	:presence => true,
  					:length => { :maximum => 50 }

  validates :email, :presence => true,
  					:format => { :with => email_regex },
  					:uniqueness => true

end
