class MeasurementType < ApplicationRecord
  belongs_to :user
  validates :maximum, numericality: true
  validates :minimum, numericality: true
  validates :tank_type, presence: true

  validate :maximum_is_greater_than_minimum

# ...

#######
  private
#######

  def maximum_is_greater_than_minimum
    return if maximum.blank? || minimum.blank?

    if maximum <= minimum
      errors.add(:maximum, "cannot be lower than the minimum " )
    end
  end

end
