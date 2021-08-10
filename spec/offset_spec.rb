require './spec/spec_helper'
require 'date'
require './lib/offset'

RSpec.describe "Offset" do
  it "can determine today's date as integer DDMMYY" do
    offset = Offset.create
    expect(offset.date).to eq("100821")
  end

  it "determines the offset" do
    offset = Offset.new("040895")
    expect(offset.offsets).to eq([1, 0, 2, 5])
  end
end
