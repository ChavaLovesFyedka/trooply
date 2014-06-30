class Event < ActiveRecord::Base

  has_many :event_badges, dependent: :destroy
  has_many :badges, through: :event_badges, dependent: :destroy

  has_many :event_age_levels, dependent: :destroy
  has_many :age_levels, through: :event_age_levels, dependent: :destroy

end
