require 'rails_helper'

RSpec.describe MeasurementType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  
  it "has a valid factory" do
    Factory.create(:measure_type).should be_valid
  end
  it "stores an optional chemical formula"
  it "stores the recommended minimum for the measure"
  it "stores the recommended maximum for the measure"
  it "is invalid without a tank type"
  it "returns the tank type as a string"
end

describe "Associations" do
  it { should have_one(:measurement_label) }
  it { should have_one(:user) }
end

#RSpec.describe Person.new("Jim", 32) do
#  it { is_expected.to have_attributes(:name => "Jim") }
# expect(person).to have_attributes(:name => "Jim", :age => 32)
#it { is_expected.not_to have_attributes(:age => (a_value < 30) ) }