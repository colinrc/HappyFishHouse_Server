# Provides the name and label details for each parameter to be measured
class MeasureName
  attr_accessor :name,:compound,:unit

  def isValid?
    :name.empty?
  end
end
