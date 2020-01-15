require('minitest/autorun')
require('minitest/reporters')
require_relative('../pub')
require_relative('../drinks')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestPub < MiniTest::Test

  def setup
    drink1 = Drink.new('beer', 5)
    drink2 = Drink.new('vodka', 8)
    drink3 = Drink.new('gin', 7)

    @pub = Pub.new('Slaughterd Lamb' , 0, [])

    @pub.stock_drinks(drink1)
    @pub.stock_drinks(drink2)
    @pub.stock_drinks(drink3)
  end

  def test_pub_name
    assert_equal('Slaughterd Lamb', @pub.check_pub_name)
  end

  def test_till_amount__is_empty
    assert_equal(0, @pub.return_till_amount)
  end

  def test_drinks_stock
    assert_equal(3, @pub.return_drinks_stock.length)
  end

  def test_stocking_pub
    assert_equal(3, @pub.drinks.count)
  end

  def test_is_drink_in_stock
    assert_equal(5, @pub.check_if_drink_is_in_stock('beer'))
  end

  def test_add_money_to_till
    result = @pub.add_money_to_till(10)
    assert_equal(10, result)
  end

end
