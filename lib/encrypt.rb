
require 'date'
require './lib/enigma'
require './lib/command_line'

data = ARGV

new_cli = CommandLine.new(data)
puts new_cli.encrypt_message
