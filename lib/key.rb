class Key

  def key_string
    string = ''
    string << "0"
    4.times do
      string << rand(9).to_s
    end
    string
  end

  def keys(key_string)
    keys = []
    key_div = key_string.chars
    4.times do |index|
      keys << (key_div[index] + key_div[index + 1]).to_i
    end
    keys
  end

end
