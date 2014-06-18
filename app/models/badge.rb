class Badge < ActiveRecord::Base
	has_many :activity_badges
	has_many :activities, through: :activity_badges
end
