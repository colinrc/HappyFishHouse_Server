# Provides the name and label details for each parameter to be measured
class MeasureName < ApplicationRecord
  validates :name, presence: true
end
