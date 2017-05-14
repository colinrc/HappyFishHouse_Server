require 'rails_helper'


describe Acidity, type: :model do
  # subject { Acidity.new }

  before do
    @measure = Acidity.new
  end

  it "should return the name" do
    expect( @measure.name ).to eq "pH"
  end

  it "should return a compound" do
    expect( @measure.compound ).to eq ""
  end

  it "should return an unit label" do
    expect( @measure.unit ).to eq ""
  end
end
