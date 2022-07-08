require 'rsa'
require 'base64'
require_relative 'utils/helper'
require_relative 'files'

params = read_args(args: ARGV)

puts "path_keys => #{params.path_keys}"
puts "path_name_file_input => #{params.path_name_file_input}"
puts "path_name_file_output => #{params.path_name_file_output}"

file_keys = Files.new(params.path_keys)
file_input = Files.new(params.path_name_file_input)
file_output = Files.new(params.path_name_file_output)

puts file_keys.read

string_encode_64 = Base64.encode64(file_input.read)
puts string_encode_64

encode = RSA.encode(string_encode_64)
puts encode
file_output.write(encode)