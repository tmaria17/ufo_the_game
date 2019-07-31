gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/art'
require 'pry'

class ArtTest < Minitest::Test
  def setup
    @art= Art.new
  end

  def test_it_exists
    assert_instance_of Art, @art
  end

  def test_it_has_an_art_array
    assert_equal 7, @art.art_array.length
  end
end
