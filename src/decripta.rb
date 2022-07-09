require 'rsa'
require 'base64'
require_relative 'utils/helper'
require_relative 'utils/files'

params = read_args(args: ARGV)

file_keys = Files.new(params.path_keys)
file_output = Files.new(params.path_name_file_input)
file_input = Files.new(params.path_name_file_output)

array_string = file_output.read.split.map(&:to_i)

string_decode_64 = Base64.decode64(RSA.decode(array_string))
puts string_decode_64

file_input.write(string_decode_64)