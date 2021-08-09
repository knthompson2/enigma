require "./lib/key"

class Shift

  def initialize(key, offset)
    @key = key
    @offset = offset
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
