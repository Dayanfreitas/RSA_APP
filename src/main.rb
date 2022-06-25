require 'rsa'
require_relative 'utils/helper'

def process_option(option:)
  if option == "1"
    RSA.generated
  end

  if option == "2"
    puts "Digite sua menssage:"
    menssage = gets

    RSA.generated unless File.exists?("private.txt") && File.exists?("public.txt")

    encode = RSA.encode(menssage.chomp)
    decode = RSA.decode(encode)

    p "menssage_encode => #{encode}"
    p "decoded => #{decode}"
  end

  if option == "3"
    exit
  end
end

def start
  loop do
    menu
    option = gets.chomp
    process_option(option: option)
  end
end

start