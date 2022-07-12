require 'rsa'
require_relative './utils/helper'
require_relative './utils/file_key_public'

# ruby src/encripta.rb keys/public.txt assets/input.txt assets/output.txt
params = read_args(args: ARGV)
file_public = FileKeyPublic.new(params.path_keys)
file_input = Files.new(params.path_name_file_input)
file_output = Files.new(params.path_name_file_output)

file_public_read = file_public.read
RSA::OPEN::Public.n=file_public_read[:key_n]
RSA::OPEN::Public.e=file_public_read[:key_e]

encrypted_arr = RSA.encode(file_input.read)
file_output.write(encrypted_arr)