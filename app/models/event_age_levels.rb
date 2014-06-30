class EventAgeLevels < ActiveRecord::Base
  belongs_to :event
  belongs_to :age_level
end
