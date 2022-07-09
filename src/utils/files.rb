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