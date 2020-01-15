require('minitest/autorun')
require('minitest/reporters')
require_relative('../customers')
require_relative('../pub')
require_relative('../drinks')


Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestCustomer < MiniTest::Test

  def setup
    @customer = Customer.new('Bob', 100)

    drink1 = Drink.new('beer', 5)
    drink2 = Drink.new('vodka', 8)
    drink3 = Drink.new('gin', 7)

    @pub = Pub.new('Slaughterd Lamb' , 0, [])

    @pub.stock_drinks(drink1)
    @pub.stock_drinks(drink2)
    @pub.stock_drinks(drink3)
  end

  def test_customer_name
    assert_equal('Bob', @customer.return_customer_name)
  end

  def test_wallet_contents
    assert_equal(100, @customer.return_wallet_contents)
  end

  def test_customer_buys_drink
    @customer.customer_buys_drink('beer' , @pub)

    assert_equal(95, @customer.wallet)
    assert_equal(5, @pub.till)
  end

end
