class CreateClearrecords < ActiveRecord::Migration[7.0]
  def change
    create_table :clearrecords do |t|
      t.integer :stage_id
      t.integer :weapon_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :clearrecords, [:user_id, :stage_id, :weapon_id]
  end
end
