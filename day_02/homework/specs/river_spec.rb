require('minitest/autorun')
require('minitest/reporters')
require_relative('../river')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

  def setup
    @river1 = River.new('Clyde')
  end

  #test1 has river got fish
  def test_number_of_fish_in_river__is_empty()
    river = @river1
    assert_equal(0, river.number_of_fish)
  end

  def test_add_fish_to_river
    river = @river1
    assert_equal(1, river.add_fish_to_river('Cod'))
  end

  def test_number_of_fish_in_river__has_three()
    river = @river1
    river.add_fish_to_river('Cod')
    river.add_fish_to_river('Salmon')
    river.add_fish_to_river('Pyke')
    assert_equal(3, river.number_of_fish)
  end

  def test_remove_fish_from_river()
    river = @river1
    river.add_fish_to_river('Cod')
    river.add_fish_to_river('Salmon')
    river.add_fish_to_river('Pyke')
    assert_equal(2, river.remove_fish_from_river('Cod'))
  end




end
