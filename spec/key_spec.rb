require './spec/spec_helper'
require 'date'
require './lib/key'

RSpec.describe "Key" do
  it "can generate a key of 4 random numbers and put a 0 at the beginning" do
    key = Key.create
    expect(key.key.length).to eq(5)
    expect(key.key.class).to eq(String)
  end

  it "can generate 4 pairings of numbers as keys" do
    key = Key.new("02715")
    expect(key.keys).to eq([2,27,71,15])
  end
end
