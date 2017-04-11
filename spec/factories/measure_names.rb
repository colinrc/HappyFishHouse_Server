FactoryGirl.define do
  factory :MeasureNameTest do
    name "Chemical Name"
    unit "Chemical Unit"
    compound "Chemical Compound"
  end

  factory :Acidity do
    name "pH"
    unit ""
    compound ""
  end

  factory :Nitrate do
    name "Nitrate"
    unit "mg/L (ppm)"
    compound "NO3"
  end

  factory :Ammonia do
    name "Ammonia"
    unit "mg/L (ppm)"
    compound "NH3"
  end

  factory :Phosphate do
    name "Phosphate"
    unit "mg/L (ppm)"
    compound "PO4"
  end

  factory :Nitrite do
    name "Nitrite"
    unit "mg/L (ppm)"
    compound "NO2"
  end

  factory :Calcium do
    name "Calcium"
    unit "mg/L (ppm)"
    compound "Ca2"
  end

  factory :Magnesium do
    name "Magnesium"
    unit "ppm"
    compound "mg"
  end

end
