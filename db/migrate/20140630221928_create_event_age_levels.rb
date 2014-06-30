class CreateEventAgeLevels < ActiveRecord::Migration
  def change
    create_table :event_age_levels do |t|
      t.references :event, index: true
      t.references :age_level, index: true

      t.timestamps
    end
  end
end
