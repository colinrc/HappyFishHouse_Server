# Provides a particular users preferences for suitable test results of a particular chemical in their nominated tanks

class MeasureLevel < ApplicationRecord
  belongs_to :user
  validates :maximum_allowable, numericality: true
  validates :minimum_allowable, numericality: true
  validates :tank_type, presence: true

  validate :maximum_is_greater_than_minimum

# ...
# @todo Move tank to a model

#######
  private
#######

  def maximum_is_greater_than_minimum
    return if maximum_allowable.blank? || minimum_allowable.blank?

    if maximum_allowable <= minimum_allowable
      errors.add(:maximum_allowable, "must be grater than the minimum " )
    end
  end

end
