class Enigma
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def message_by_char(string)
    message = string.downcase
    message.split("").map do |character|
      character
    end
  end

  def encrypt_string(string, shifts)
    message_by_char(string).map.with_index do |letter, index|
      if @character_set.index(letter).nil?
        letter
      else
        index_letter = @character_set.index(letter)
        rotate_letters = @character_set.rotate(shifts[index % 4])
        rotate_letters[index_letter]
      end
    end.join
  end

  def encrypt(string, key = Key.create, date = Offset.create)
    if key.class != Key
      key = Key.new(key)
    end
    if date.class != Offset
      date = Offset.new(date)
    end
    shift = Shift.new(key, date)
    shifts = shift.final_shifts
    encryped_message = encrypt_string(string, shifts)
    {
      :encryption => encryped_message,
      :key => key.key,
      :date => date.date
    }
  end

  def decrypt_string(string, shifts)
    message_by_char(string).map.with_index do |letter, index|
      if @character_set.index(letter).nil?
        letter
      else
        index_letter = @character_set.index(letter)
        rotate_letters = @character_set.rotate(-(shifts[index % 4]))
        rotate_letters[index_letter]
      end
    end.join
  end

  def decrypt(string, key = Key.create, date = Offset.create)
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
      :key => key.key,
      :date => date.date
    }
  end
end
