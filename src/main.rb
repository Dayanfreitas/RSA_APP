require 'rsa'
require_relative 'utils/helper'

require 'base64'

# Ambos os devem ler os nomes dos arquivos a serem utilizados como parâmetros de entrada (linha de comando). Os argumentos devem ser, em ordem:
# O nome do arquivo contendo as chaves
# O nome do arquivo de entrada
# O nome do arquivo de saída

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

puts string_text
puts encode(string_text)

encode = RSA.encode(encode(string_text))
decode_text = RSA.decode(encode)

puts encode
puts decode decode_text

