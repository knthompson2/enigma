class Key
  attr_reader :key

  def initialize(key)
    @key = key
  end

  def self.create
    string = '0'
    4.times do
      string << rand(9).to_s
    end
    Key.new(string)
  end

  def final_keys
    keys = []
    key_div = @key.chars
    4.times do |index|
      keys << (key_div[index] + key_div[index + 1]).to_i
    end
    keys
  end

end
