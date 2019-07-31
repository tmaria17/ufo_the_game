require_relative "codeword"
require_relative "art"

class Game
  attr_reader :correct_guess_arr, :codeword, :art_array, :incorrect_guess_arr, :incorrect_guess_counter
  def initialize
    @art_array = [ ]
    @incorrect_guess_arr = [ ]
    @correct_guess_arr = [ ]
    @incorrect_guess_counter = 0
    @codeword = ''
  end

  def play
    @incorrect_guess_arr = [ ]
    @correct_guess_arr = [ ]
    @incorrect_guess_counter = 0
    game_codeword
    create_art_array
    puts "Welcome Earthling to UFO: The Game. "
    puts "Instructions: save us from alien abduction by guessing letters in the codeword."
    puts @art_array[0]
    puts "Codeword: #{dash_length} "
    until check_for_lose == true||check_for_win == true
      game_setup
    end
    if check_for_win == true
      puts "**;* You win for now **;* .....for now"
    else check_for_lose == true
      puts "\u{1F47D} You failed to save your fellow human. \u{1F47D}"
    end
    play_again
  end

  def game_setup
    puts "Please enter your guess: "
    guess = gets.chomp.downcase
    until check_if_guess_is_valid(guess) == true
      guess = gets.chomp.downcase
    end
    puts evaluate_guess(guess)
    display_state_of_abduction(@incorrect_guess_counter)
    puts "Codeword: #{dash_length(guess)} "
    puts "Incorrect Guesses: #{@incorrect_guess_arr.uniq.join(",")}"
  end

  def play_again
    puts "Would you like to play again (Y/N)?"
    user_choice = gets.chomp.upcase
    if user_choice == "Y"
      play
    elsif user_choice == "N"
      puts "Goodbye!"
    end
  end

  def check_for_win
    @correct_guess_arr.uniq.sort == @codeword.chars.uniq.sort
  end

  def check_for_lose
    @incorrect_guess_counter == 6
  end

  def check_if_guess_is_valid(guess)
    if guess.length > 1
      puts "Sorry you may only enter one letter at a time."
    elsif @incorrect_guess_arr.include?(guess) || @correct_guess_arr.include?(guess)
      puts "Sorry Earthling, you may not guess the same letter twice"
    else
      true
    end
  end

  def display_state_of_abduction(number_wrong)
    puts @art_array[number_wrong]
  end

  def evaluate_guess(guess=nil)
    if @codeword.chars.include?(guess)
      @correct_guess_arr.push(guess)
      "Correct! You're closer to cracking the codeword."
    elsif
      @incorrect_guess_arr.push(guess)
      @incorrect_guess_counter += 1
      "Incorrect! The tractor beam pulls the person in further."
    end
  end

  def populate_blank_with_correct_guesses
  @codeword.chars.map do |letter|
   if @codeword.chars.any? {|l| @correct_guess_arr.include?(letter)}
      letter
    else
      "_"
    end
  end.join(" ")
end

  def dash_length(guess=nil)
    if guess == nil
      @codeword.chars.map do |x|
        "_ "
      end.join("")
      else
        populate_blank_with_correct_guesses
    end
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
