class Organiser < ActiveRecord::Base
	validates :name,  presence: true, length: { maximum: 30 }
	validates :college, presence: true
	validates :event_title, presence: true, uniqueness: true
	validates :event_type, presence: true
end
