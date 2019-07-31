require_relative "codeword"
require_relative "art"

class Game
  attr_reader :correct_guess_arr, :codeword
  def initialize
    @art_array = [ ]
    @incorrect_guess_arr = [ ]
    @correct_guess_arr = [ ]
    @incorrect_guess_counter = 0
    @codeword = ''
  end
end
