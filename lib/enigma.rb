class Enigma
  attr_reader :character_set, :shift

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def todays_date
    Time.now.strftime("%d%m%y")
  end

  def message_by_char(string)
    message = string.downcase
    message.split("").map do |character|
      character
    end
  end

  def encrypt_string(string, shift)
    message_by_char(string).map.with_index do |letter, index|
      if @character_set.index(letter).nil?
        letter
      else
        index_letter = @character_set.index(letter)
        rotate_letters = @character_set.rotate(shift[index % 4])
        rotate_letters[index_letter]
      end
    end.join
  end

  def encrypt(string, key = shift.key_string, date = todays_date)
    shift = Shift.new
    final_key = shift.key(key)
    final_offset = shift.offset(date)
    shifts = shift.final_shifts(final_key, final_offset)
    encryped_message = encrypt_string(string, shifts)
    {
      :encryption => encryped_message,
      :key => key,
      :date => date
    }
  end

  def decrypt_string(string, shift)
    message_by_char(string).map.with_index do |letter, index|
      if @character_set.index(letter).nil?
        letter
      else
        index_letter = @character_set.index(letter)
        rotate_letters = @character_set.rotate(-(shift[index % 4]))
        rotate_letters[index_letter]
      end
    end.join
  end

  def decrypt(string, key, date = Offset.create)
    if key.class != Key
      key = Key.new(key)
    end
    if date.class != Offset
      date = Offset.new(date)
    end
    shift = Shift.new(key, date)
    shifts = shift.final_shifts
    decrypted_message = decrypt_string(string, shifts)
    {
      :decryption => decrypted_message,
      :key => key,
      :date => date
    }
  end

  # def encrypt
end
