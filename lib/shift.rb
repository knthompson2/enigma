class Shift

  def initialize
  end

  def offset(date)
    offset = (date.to_i ** 2).to_s[-4..-1]
    offset_div = offset.chars
    offset_div.map do |number|
      number.to_i
    end
  end

  def key_string
    string = ''
    string << "0"
    4.times do
      string << rand(9).to_s
    end
    string
  end

  def key(key_string)
    keys = []
    key_div = key_string.chars
    4.times do |index|
      keys << (key_div[index] + key_div[index + 1]).to_i
    end
    keys
  end

  def final_shifts(key, offset)
    shifts = []
    4.times do |index|
      shifts << (key[index] + offset[index])
    end
    shifts
  end


  # def shifts(offset_number, key_number)

end
