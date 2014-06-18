class CreateActivityBadges < ActiveRecord::Migration
  def change
    create_table :activity_badges do |t|
      t.references :badge, index: true
      t.references :activity, index: true

      t.timestamps
    end
  end
end
