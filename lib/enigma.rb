class Enigma
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def todays_date
    Time.now.strftime("%d%m%y")
  end

  def encrypt(string, key = shift.key_string, date = todays_date)
    message = string.downcase
    message_by_char = message.split("").map do |character|
      character
    end

  end
end
