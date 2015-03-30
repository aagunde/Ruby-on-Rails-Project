class User < ActiveRecord::Base
	before_save { self.email_id = email_id.downcase }
	validates :name,  presence: true, length: { maximum: 30 }
	validates :age, presence: true, :length => { :maximum => 2}		 
	validates :gender, presence: true
	validates :date_of_birth, presence: true
	validates :home_address, presence: true
	validates :contact_no, presence: true, length: { :maximum => 10}
	validates :institute_name, presence: true
	validates :institute_address, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email_id, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	has_secure_password
	  validates :password, length: { minimum: 6 }
end