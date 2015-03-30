class Participant < ActiveRecord::Base

	validates :name,  presence: true, length: { maximum: 30 }
	validates :college, presence: true
	validates :interested_event, presence: true
	validates :year_of_engg, presence: true, length: { :maximum => 12}
end