class EventBadges < ActiveRecord::Base
  belongs_to :event
  belongs_to :badge
end
