require('minitest/autorun')
require('minitest/reporters')
require_relative('../bear')
require_relative('../river')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test

  def setup
    @bear1 = Bear.new('Gentle Ben' , 'Brown Bear')
    @river1 = River.new('Danube')
  end

  def test_number_of_fish_in_stomach___empty
    assert_equal(0, @bear1.number_of_fish_in_stomach)
  end

  def test_add_fish_to_stomach
    assert_equal(1, @bear1.add_fish_to_stomach('Marlin'))
  end

  def test_catch_fish__success
    river = @river1
    river.add_fish_to_river('Cod')
    @bear1.catch_fish(river, 'Cod')
    assert_equal(0, river.fish_stock.count)
    assert_equal(1, @bear1.stomach.count)
  end

end
