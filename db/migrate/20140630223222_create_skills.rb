class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.boolean :badge_related_skill
      t.string :category

      t.timestamps
    end
  end
end
