require 'rails_helper'



RSpec.describe MeasurementType, type: :model do
  let(:measurement1){ FactoryGirl.create(:measurement_type, :complete ) }

  it "has a valid factory" do
    expect(create(:measurement_type, :complete)).to be_valid
  end
  it "stores an optional chemical label"

  describe "Measurement Range",MeasurementType, type: :model do


    it "stores a numberic minimum measure" do
      should validate_numericality_of(:minimum_allowable)
    end

    it "is invalid without a numeric maximum measure" do
      expect(build(:measurement_type, :complete, maximum_allowable: nil)).to_not be_valid
    end
  end

  it "is invalid without a minimum lower than maximum" do
    expect( build(:measurement_type, :complete, maximum_allowable: 8.0, minimum_allowable: 9.0 )).to_not be_valid
  end

  it "is invalid without a tank type" do
    expect( build(:measurement_type, :complete, tank_type: nil)).to_not be_valid
  end
  it "returns the tank type as a string"

  it { should belong_to(:user) }
end



#RSpec.describe Person.new("Jim", 32) do
#  it { is_expected.to have_attributes(:name => "Jim") }
# expect(person).to have_attributes(:name => "Jim", :age => 32)
#it { is_expected.not_to have_attributes(:age => (a_value < 30) ) }