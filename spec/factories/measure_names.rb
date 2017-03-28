FactoryGirl.define do
  factory :measure_name do
    name "Measure Name"
  end

  trait :complete_measure_name do
    name "Ammonia"
    unit ""
    compound "NH3"
  end
end
