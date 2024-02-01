class AddHazardLevelToClearrecords < ActiveRecord::Migration[7.0]
  def change
    add_column :clearrecords, :hazard_level, :integer, default: 0
  end
end
