require './lib/enigma'

handle = File.open(ARGV[0], "r")
message = handle.read
enigma = Enigma.new
decrypted = enigma.decrypt(message)
writer = File.new(ARGV[1], "w")
writer.write(decrypted[:decryption])
handle.close
writer.close
puts "Created '#{ARGV[1]}' with the key #{decrypted[:key]} and date #{decrypted[:date]}"
