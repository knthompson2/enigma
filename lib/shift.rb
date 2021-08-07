class Shift

  def initialize
  end

  def offset_number(date)
    date_squared = date.to_i ** 2
    date_squared.to_s[-4..-1]
  end

  def key_number
    string = ''
    string << "0"
    4.times do
      string << rand(9).to_s
    end
    string
  end
end
