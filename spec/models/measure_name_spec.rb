require 'rails_helper'

RSpec.describe MeasureName, type: :model do

  it "is invalid without a name" do
    expect( build(:measure_name, :complete_measure_name, name: nil )).to_not be_valid
  end

  it "is valid with a blank compound" do
    expect( build(:measure_name, :complete_measure_name, compound: "" )).to be_valid
  end

  it "is valid with a blank unit" do
    expect( build(:measure_name, :complete_measure_name, unit: "" )).to be_valid
  end


  it "is valid with all parameters" do
    expect( build(:measure_name, :complete_measure_name )).to be_valid
  end
end
