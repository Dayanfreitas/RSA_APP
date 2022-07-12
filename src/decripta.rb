require 'rsa'
require_relative './utils/helper'
require_relative './utils/file_key_private'

# ruby src/decripta.rb keys/private.txt assets/output.txt assets/input.txt
params = read_args(args: ARGV)
file_private = FileKeyPrivate.new(params.path_keys)
file_input = Files.new(params.path_name_file_input)
file_output = Files.new(params.path_name_file_output)

file_private_read = file_private.read
RSA::OPEN::Private.n = file_private_read[:key_n]
RSA::OPEN::Private.d = file_private_read[:key_d]

decode_str = RSA.decode(file_input.read.lines.map(&:to_i))
file_output.write(decode_str)