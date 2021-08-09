require 'date'

class Offset
  attr_reader :date
  def initialize(date)
    @date = date
  end

  def self.create
    date = Time.now.strftime("%d%m%y")
    Offset.new(date)
  end

  def offsets
    offset = (date.to_i ** 2).to_s[-4..-1]
    offset_div = offset.chars
    offset_div.map do |number|
      number.to_i
    end
  end
end
