require './spec/spec_helper'
require 'date'
require './lib/enigma'
require './lib/shift'


RSpec.describe "Enigma" do
  it "exists and" do
    enigma = Enigma.new

    expect(enigma).to be_a(Enigma)
  end

  it "can determine today's date as integer DDMMYY" do
    enigma = Enigma.new
    expect(enigma.todays_date).to eq("060821")
  end

  it "can encrypt a string given a key and date" do
    enigma = Enigma.new
    expected = {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895"
  }
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

end
