class CreateEventBadges < ActiveRecord::Migration
  def change
    create_table :event_badges do |t|
      t.references :event, index: true
      t.references :badge, index: true

      t.timestamps
    end
  end
end
