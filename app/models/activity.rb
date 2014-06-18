class Activity < ActiveRecord::Base
	has_many :activity_badges
	has_many :badges, through: :activity_badges
end
