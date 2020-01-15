require('minitest/autorun')
require('minitest/reporters')
require_relative('../drinks')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestDrinks < MiniTest::Test

  def setup
    @drink1 = Drink.new('beer', 5)
    @drink2 = Drink.new('vodka', 8)
    @drink3 = Drink.new('gin', 7)
  end

  def test_drink_name
    assert_equal('beer', @drink1.return_drink_name)
  end

  def test_drink_price
    assert_equal(8, @drink2.return_drink_price)
  end

end
