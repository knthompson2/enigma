require './spec/spec_helper'
require 'date'
require './lib/enigma'
require './lib/shift'


RSpec.describe "Enigma" do
  it "exists and" do
    enigma = Enigma.new

    expect(enigma).to be_a(Enigma)
  end



end
