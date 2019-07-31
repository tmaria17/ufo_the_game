gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/codeword'
require 'pry'

class CodewordTest < Minitest::Test
  def setup
    @code = Codeword.new
  end

  def test_it_exists
    assert_instance_of Codeword, @code
  end

  def test_it_creates_dictionary_of_nouns
    assert_equal 0, @code.words.length
    @code.create_dictionary
    assert_equal 4300, @code.words.length
    assert_equal "aardvark", @code.words[0]
  end

  def test_it_picks_a_random_word
    @code.create_dictionary
    word = @code.random_selection
    assert @code.words.include?(word)
  end
end
