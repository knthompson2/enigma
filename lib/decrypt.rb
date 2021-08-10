require './lib/enigma'
require './lib/key'
require './lib/offset'

handle = File.open(ARGV[0], "r")
message = handle.read
enigma = Enigma.new
key = ARGV[2]
date = ARGV[3]
decrypted = enigma.decrypt(message, key, date)
writer = File.new(ARGV[1], "w")
writer.write(decrypted[:decryption])
handle.close
writer.close
puts "Created '#{ARGV[1]}' with the key #{decrypted[:key]} and date #{decrypted[:date]}"
