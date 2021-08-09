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



  it "can create shifts " do
    shift = Shift.new
    expect(shift.final_shifts(shift.key("02715"),shift.offset("040895"))).to eq([3,27,73,20])
  end

end
