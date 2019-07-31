gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/codeword'
require 'pry'

class CodewordTest < Minitest::Test
  def test_it_exists
    word = Codeword.new
    assert_instance_of Codeword, word
  end
end
