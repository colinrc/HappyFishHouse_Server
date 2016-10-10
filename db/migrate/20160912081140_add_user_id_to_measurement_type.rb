class AddUserIdToMeasurementType < ActiveRecord::Migration[5.0]
  def change
    add_reference :measurement_types, :user, foreign_key: true
  end
end
