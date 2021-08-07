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
    expect(shift.offset("040895")).to eq([1, 0, 2, 5])
  end

  it "can generate a key of 4 random numbers and put a 0 at the beginning" do
    shift = Shift.new
    expect(shift.key_string.length).to eq(5)
    expect(shift.key_string.class).to eq(String)
  end

  it "can generate 4 pairings of numbers as keys" do
    shift = Shift.new
    expect(shift.key("02715")).to eq([2,27,71,15])
  end

  it "can create shifts " do
    shift = Shift.new
    expect(shift.final_shifts(shift.key("02715"),shift.offset("040895"))).to eq([3,27,73,20])
  end

end
