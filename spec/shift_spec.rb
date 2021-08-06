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
    expect(shift.offset("080621")).to eq("5641")
  end
end
