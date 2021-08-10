require './lib/enigma'

handle = File.open(ARGV[0], "r")
message = handle.read
enigma = Enigma.new
key = ARGV[2]
date = ARGV[3]
if key && date
  decrypted = enigma.decrypt(message, key, date)
  writer = File.new(ARGV[1], "w")
  writer.write(decrypted[:decryption])
  handle.close
  writer.close
  puts "Created '#{ARGV[1]}' with the key #{decrypted[:key]} and date #{decrypted[:date]}"
else
  puts "Sorry, I need a key and date to decrypt this message."
end
