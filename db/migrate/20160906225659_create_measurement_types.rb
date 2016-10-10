class CreateMeasurementTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :measurement_types do |t|
      t.string :name
      t.string :label
      t.float :maximum
      t.float :minimum

      t.timestamps
    end
  end
end
