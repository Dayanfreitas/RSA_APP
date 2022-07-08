def menu
  puts "1) Gerar chaves"
  puts "2) Codificar/Decodificar"
  puts "3) Sair"
end


class Params
  attr_reader :path_keys, :path_name_file_input, :path_name_file_output 
  
  def initialize(path_keys:, path_name_file_input:, path_name_file_output:)
    @path_keys = path_keys 
    @path_name_file_input = path_name_file_input 
    @path_name_file_output = path_name_file_output 
  end
end

def read_args(args:)
  path_keys             = args[0]
  path_name_file_input  = args[1]
  path_name_file_output = args[2]
  
  Params.new(
    path_keys: path_keys,
    path_name_file_input: path_name_file_input,
    path_name_file_output: path_name_file_output
  )
end