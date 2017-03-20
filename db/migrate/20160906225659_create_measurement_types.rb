class CreateMeasurementTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :measurement_types do |t|
      t.string :name
      t.string :label
      t.float :maximum_allowable
      t.float :minimum_allowable

      t.timestamps
    end
  end
end
