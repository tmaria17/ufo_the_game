require_relative "codeword"
require_relative "art"

class Game
  attr_reader :correct_guess_arr, :codeword, :art_array
  def initialize
    @art_array = [ ]
    @incorrect_guess_arr = [ ]
    @correct_guess_arr = [ ]
    @incorrect_guess_counter = 0
    @codeword = ''
  end

  def play
    game_codeword
    create_art_array
    puts @codeword
    #This is here for testing purpose remove later
    puts "Welcome Earthling to UFO: The Game. "
    puts "Instructions: save us from alien abduction by guessing letters in the codeword."
    puts @art_array[0]
    puts "Codeword: #{dash_length} "

  end

  def dash_length
      @codeword.chars.map do |x|
        "_ "
      end.join("")
  end

  def game_codeword
    word = Codeword.new
    word.create_dictionary
    @codeword = word.random_selection
  end

  def create_art_array
    art_service = Art.new
    @art_array = art_service.art_array
  end
end
