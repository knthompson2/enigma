class CommandLine
  attr_reader :input, :output, :message, :key, :date

  def initialize(argv)
    @input = argv[0]
    @output = File.new(argv[1], "w" )
    @message = File.read(input).chomp

    @enigma = Enigma.new
  end

  def encrypt_message
    encrypted_message = @enigma.encrypt(@message)
    File.syswrite(@output, encrypted_message[:encryption])
    "Created '#{@output}' with the key #{encrypted_message[:key]} and date #{encrypted_message[:date]}"
  end
end
