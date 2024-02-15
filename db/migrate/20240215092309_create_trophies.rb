class CreateTrophies < ActiveRecord::Migration[7.0]
  def change
    create_table :trophies do |t|
      t.integer :stage_id
      t.integer :weapon_id
      t.integer :color_id
      t.integer :hazard_level, default: 0

      t.timestamps
    end
    add_index :trophies, [:stage_id, :weapon_id, :color_id]
  end
end
