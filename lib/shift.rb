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



  def final_shifts(key, offset)
    shifts = []
    final_keys = @key.final_keys
    4.times do |index|
      shifts << (final_keys[index] + @offset.offsets[index])
    end
    shifts
  end


  # def shifts(offset_number, key_number)

end
