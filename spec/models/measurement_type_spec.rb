require 'rails_helper'

let(:measurement1){ FactoryGirl.create(:measurement_type, :complete ) }

RSpec.describe MeasurementType, type: :model do

  it "has a valid factory" do
    expect(create(:measurement_type, :complete)).to be_valid
  end
  it "stores an optional chemical label"

  describe "Measurement Range" do
    it "stores a decimal minimum measure" do
      expect (MeasurementType).to have_attributes(measurement1 => minimum)
    end

    it "stores a numberic minimum measure" do
      expect (MeasurementType).validate_numeric (minimum)
    end

    it "is invalid without a numeric minimum measure" do
      expect(build(:measurement_type, :failed_min)).to_not be_valid
    end
    it "is invalid without a numeric maximum measure" do
      expect(build(:measurement_type, :failed_max)).to_not be_valid
    end
  end

  it "is invalid without a minimum lower than maximum" do
    expect( build(:measurement_type, :failed_levels)).to_not be_valid
  end

  it "is invalid without a tank type" do
    expect( build(:measurement_type, :failed_tank_type)).to_not be_valid
  end
  it "returns the tank type as a string"

  it { should belong_to(:user) }
end



#RSpec.describe Person.new("Jim", 32) do
#  it { is_expected.to have_attributes(:name => "Jim") }
# expect(person).to have_attributes(:name => "Jim", :age => 32)
#it { is_expected.not_to have_attributes(:age => (a_value < 30) ) }