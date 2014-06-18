class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :genre
      t.text :description
      t.string :season
      t.integer :skill_id
      t.integer :badge_id

      t.timestamps
    end
  end
end
