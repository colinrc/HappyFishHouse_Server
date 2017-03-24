class RenameMeasurementTypesToMeasureLevels < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :measurement_types, :measure_levels
  end

  def self.down
    rename_table :measure_levels, :measurement_types
  end
end
