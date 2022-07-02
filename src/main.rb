require 'rsa'
require_relative 'utils/helper'

require 'base64'

path = ARGV[0]
puts "PATH [#{path}]"    

def encode(string)
    Base64.encode64(string)
end

def decode(string)
    Base64.decode64(string)
end

def read_file(path:)
    file = File.open(path) 
    file.read
end

string_text = read_file(path: ARGV[0])


puts "TEXT FILE"
s = "SGVsbG8gV29ybGQgISEKSSBhbSB0ZXh0ICE="
