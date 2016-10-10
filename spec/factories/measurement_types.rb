FactoryGirl.define do
  factory :measurement_type do
    name "Measure Test"
  end

  trait :complete do
    label "ph"
    tank_type "Fail"
    maximum 8.5
    minimum 7.5
  end

  trait :failed_min do
    label "Fa"
    tank_type "Fail"
    minimum "lk"
    maximum 8.5
  end

  trait :failed_max do
    label "Fa"
    tank_type "Fail"
    minimum 7.5
  end

  trait :failed_name do
    label "Na"
    tank_type "Fail"
    minimum 8.5
    maximum 7.5
  end

  trait :failed_levels do
    label "Na"
    tank_type "Fail"
    minimum 8.5
    maximum 8.5
  end

  trait :failed_tank_type do
    label "Na"
    minimum 8.5
    maximum 8.5
  end

end
