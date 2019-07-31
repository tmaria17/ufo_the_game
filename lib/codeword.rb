class Codeword
  attr_reader :words
  def initialize
    @words = [ ]
  end

  def create_dictionary
    File.open('./data/dictionary.txt',"r").each do |line|
      line.chomp!
      @words << line
    end
  end
end
