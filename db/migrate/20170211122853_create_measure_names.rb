class CreateMeasureNames < ActiveRecord::Migration[5.0]
  def change
    create_table :measure_names do |t|
      t.string :name
      t.string :unit
      t.string :compound

      t.timestamps
    end
  end
end
