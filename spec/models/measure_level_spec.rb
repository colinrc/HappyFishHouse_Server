require 'rails_helper'



RSpec.describe MeasureLevel, type: :model do
  let(:measurement1){ FactoryGirl.create(:measure_level, :complete ) }

  it "has a valid factory" do
    expect(create(:measure_level, :complete)).to be_valid
  end
  it "stores an optional chemical label"

  it "must be associated to a measure_name object to describe it" do

  end

  describe "Measurement Range", MeasureLevel, type: :model do

    it "stores a numberic minimum measure" do
      should validate_numericality_of(:minimum_allowable)
    end

    it "is invalid without a numeric maximum measure" do
      expect(build(:measure_level, :complete, maximum_allowable: nil)).to_not be_valid
    end
  end

  it "is invalid without a minimum lower than maximum" do
    expect( build(:measure_level, :complete, maximum_allowable: 8.0, minimum_allowable: 9.0 )).to_not be_valid
  end

  it "is invalid without a tank type" do
    expect( build(:measure_level, :complete, tank_type: nil)).to_not be_valid
  end
  it "returns the tank type as a string"


  describe "Associations" do
    it { should belong_to(:user) }

    it {
      pending
      should have_one(:tank_details) }
  end
end



#RSpec.describe Person.new("Jim", 32) do
#  it { is_expected.to have_attributes(:name => "Jim") }
# expect(person).to have_attributes(:name => "Jim", :age => 32)
#it { is_expected.not_to have_attributes(:age => (a_value < 30) ) }