require 'rails_helper'

RSpec.describe MeasureName, type: :model do

  let( :fullname ) { build(:measure_name, :complete_measure_name ) }

  it "is invalid without a name" do
    expect( build(:measure_name, :complete_measure_name, name: nil ).isValid? ).to eq false
  end

  it "should return a name" do
    expect( fullname.respond_to?( :name, include_all=true ))
  end

  it "should return a compound" do
    expect( fullname.respond_to?( :compound, include_all=true ))
  end

  it "should return an unit label" do
    expect( fullname.respond_to?( :unit, include_all=true ))
  end

  it "is valid with all parameters" do
    expect ( fullname.isValid? )
  end
end
