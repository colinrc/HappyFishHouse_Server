FactoryGirl.define do
  factory :measure_level do
    name "Measure Test"
  end

  trait :complete do
    label "ph"
    tank_type "Fail"
    maximum_allowable 8.5
    minimum_allowable 7.5
  end




end
