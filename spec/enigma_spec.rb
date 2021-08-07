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
    expect(enigma.todays_date).to eq("070821")
  end

  it "can split message into individual character strings" do
    enigma = Enigma.new
    expected = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    expect(enigma.message_by_char("hello world")).to eq(expected)
  end

  it "can encrypt a string given a shift value" do
    enigma = Enigma.new

    expect(enigma.encrypt_string("hello world", [3,27,73,20])).to eq("keder ohulw")
  end

  it "can encrypt a string and return a hash of encrypted message, key, value" do
    enigma = Enigma.new
    expected = {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895"
  }
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it "can decrypt a string given a shift value" do
    enigma = Enigma.new

    expect(enigma.decrypt_string("keder ohulw", [3,27,73,20])).to eq("hello world")
  end

  it "can decrypt a string and return a hash of decrypted message, key, value" do
    enigma = Enigma.new
    expected = {
    decryption: "hello world",
    key: "02715",
    date: "040895"
  }
    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end


end
