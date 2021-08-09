require './spec/spec_helper'
require 'date'
require './lib/shift'
require './lib/key'
require './lib/offset'

RSpec.describe "Shift" do
  it "exists" do
    key = Key.new("02715")
    offset = Offset.new("040895")
    shift = Shift.new(key, offset)
    expect(shift).to be_a(Shift)
  end

  it "can create shifts " do
    key = Key.new("02715")
    offset = Offset.new("040895")
    shift = Shift.new(key, offset)
    expect(shift.final_shifts).to eq([3,27,73,20])
  end

end
