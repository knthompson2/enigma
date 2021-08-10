class Key
<<<<<<< Updated upstream

  def key_string
    string = ''
    string << "0"
=======
  attr_reader :key

  def initialize(key)
    @key = key
  end

  def self.create
    string = '0'
>>>>>>> Stashed changes
    4.times do
      string << rand(9).to_s
    end
    string
  end

<<<<<<< Updated upstream
  def keys(key_string)
=======
  def final_keys
>>>>>>> Stashed changes
    keys = []
    key_div = key_string.chars
    4.times do |index|
      keys << (key_div[index] + key_div[index + 1]).to_i
    end
    keys
  end

end
