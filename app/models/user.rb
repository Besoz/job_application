class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body

  has_one :admin
  has_one :interviewer
  has_one :applicant


  @@ADMIN = 0;
  @@INTERVIEWER = 1;
  APPLICANT = 2;

  after_save :create_appllicant

  def self.INTERVIEWER
  	@@INTERVIEWER
  end

  def interviewer?	
	  self.role == User.INTERVIEWER 
	end

  def applicant?
	  !!:role == APPLICANT 
	end

  def admin?
	  !!:role == ADMIN 
	end

  private 

	  def create_inteviewer

	  end

	  def create_appllicant

	  end

	  def create_admin

	  end

	  def upgrade_to_interviewer

	  end 

	  def upgrade_to_admin

	 	end
	 
end
