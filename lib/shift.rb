class Shift

  def initialize
  end

  def offset(date)
    date_squared = date.to_i ** 2
    date_squared.to_s[-4..-1]
  end

  
end
