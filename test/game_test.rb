gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/game'
require 'pry'

class GameTest < Minitest::Test
  def setup
    @game = Game.new
  end
  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_codeword_is_made
    assert_instance_of String, @game.game_codeword
  end

  def test_it_has_an_art_array
    @game.create_art_array
    assert_equal 7, @game.art_array.length
  end

  def test_dash_length
    @game.game_codeword
    length_of_dashes = @game.game_codeword.chars.length
    assert_equal "_", @game.dash_length.chars[0]
    assert_equal length_of_dashes, @game.dash_length.gsub(/\s+/, "").chars.length
  end

  def test_it_evaluates_guess
    @game.game_codeword
    guess = "h"
    inncorrect_message = "Incorrect! The tractor beam pulls the person in further."
    correct_message = "Correct! You're closer to cracking the codeword."
    assert_equal inncorrect_message ||correct_message, @game.evaluate_guess(guess)
  end

  def test_populate_blank_with_correct_guesses
    @game.game_codeword
    @game.correct_guess_arr.push("a")
    length_of_dashes = @game.game_codeword.chars.length
    assert_equal length_of_dashes, @game.populate_blank_with_correct_guesses.gsub(/\s+/, "").chars.length
  end
end
