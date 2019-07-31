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

  def play
    game_codeword
  end

  def game_codeword
    word = Codeword.new
    word.create_dictionary
    @codeword = word.random_selection
  end
end
