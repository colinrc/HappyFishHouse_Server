# Provides the name and label details for each parameter to be measured

module MeasureName
  mattr_accessor :name,:compound,:unit

  def isValid?
    :name.empty?
  end

end
