require 'rsa'
require 'base64'
require_relative 'utils/helper'

params = read_args(args: ARGV)

puts "path_keys => #{params.path_keys}"
puts "path_name_file_input => #{params.path_name_file_input}"
puts "path_name_file_output => #{params.path_name_file_output}"

class Files
    attr_accessor :name, :path
    
    def initialize(path)
        @path = path
    end

    def read
        file = File.open(@path)
        file.read
    end
  
    def write(text)
        file = File.open(@path, "w")
        file.puts text
        file.close
    end  
end

file_keys = Files.new(params.path_keys)
file_output = Files.new(params.path_name_file_input)
file_input = Files.new(params.path_name_file_output)

# puts file_input.read
# puts file_output.read.map(&:to_i)
# decode = RSA.decode(file_output.read)
# puts decode
# string_encode_64 = Base64.encode64(file_input.read)
# puts string_encode_64

# encode = RSA.decode(file_input)
# puts encode
# file_input.write(encode)
# def rep_bin(string)
#     string.unpack("C*").map{ |s| s.to_s 2 }.join(' ')
# end

# def rep_num(string)
#     string.split.map{ |s| s.to_i(2) }.pack('C*').force_encoding('UTF-8')
# end
    
# # Repetidamente selecione uma parte da string e converta-a em um inteiro longo, que é basicamente a representação binária dessa parte da string. 
# start_slice=0
# end_slice=10

# loop do
#     text_chunk = string_encode_64[start_slice..end_slice]
#     break unless text_chunk
    
#     # puts "text_chunk => #{text_chunk}" 
#     # puts "text_chunk binari represente => #{rep_bin text_chunk}" 

#     string_encode_64_interger.concat(rep_bin(text_chunk))
#     puts "string_encode_64_interger => #{string_encode_64_interger}"
    
#     start_slice = end_slice + 1
#     end_slice = end_slice*2 + 1

#     sleep(2)
# end

# puts string_encode_64_interger 


# # # puts "[FILE INPUT] => #{params.path_name_file_input}"
# # puts encode

# archive_output = Files.new(params.path_name_file_output)
# # # s = archive_output.read
# # decode_text = RSA.decode(encode)
# # # puts "[FILE OUYPUT] => #{params.path_name_file_output}"
# # puts decode_text
# # # # puts decode decode_text