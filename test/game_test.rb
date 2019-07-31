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
end
