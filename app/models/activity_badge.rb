class ActivityBadge < ActiveRecord::Base
  belongs_to :badge
  belongs_to :activity
end
