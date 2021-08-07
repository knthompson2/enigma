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
    expect(shift.offset_number("080621")).to eq("5641")
  end

  it "can generate a random 4 digit number and put a 0 at the beginning" do
    shift = Shift.new
    expect(shift.key_number.length).to eq(5)
    expect(shift.key_number.class).to eq(String)
  end
end
