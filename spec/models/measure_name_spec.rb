require 'rails_helper'

class MeasureNameTest
  include MeasureName
end

describe MeasureNameTest, type: :model do

  let( :fullname ) { build( :MeasureNameTest ) }

  it "is invalid without a name" do
    expect( build( :MeasureNameTest, name: nil ).isValid? ).to eq false
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
