require './spec/spec_helper'
require 'date'
require './lib/shift'

RSpec.describe "Shift" do
  it "exists" do
    shift = Shift.new
    expect(shift).to be_a(Shift)
  end

  it "determines the offset" do
    shift = Shift.new
    expect(shift.offset("080621")).to eq([5,6,4,1])
  end

  it "can generate a key of 4 random numbers and put a 0 at the beginning" do
    shift = Shift.new
    expect(shift.key_number.length).to eq(5)
    expect(shift.key_string.class).to eq(String)
  end

  it "can generate 4 pairings of numbers as keys" do
    shift = Shift.new
    expect(shift.key("04568")).to eq([04,45,56,68])
  end

  it "can create shifts " do
    shift = Shift.new
    expect(shift.final_shifts(shift.key("04568"),shift.offset("080621"))).to eq([9,51,60,69])
  end

end
