
class Shift
  attr_reader :key, :offset
  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def final_shifts
    shifts = []
    4.times do |index|
      shifts << (@key.final_keys[index] + @offset.offsets[index])
    end
    shifts
  end
end
