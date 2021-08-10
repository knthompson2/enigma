require './lib/enigma'

handle = File.open(ARGV[0], "r")
message = handle.read
enigma = Enigma.new
encrypted = enigma.encrypt(message)
writer = File.new(ARGV[1], "w")
writer.write(encrypted[:encryption])
handle.close
writer.close
puts "Created '#{ARGV[1]}' with the key #{encrypted[:key]} and date #{encrypted[:date]}"
