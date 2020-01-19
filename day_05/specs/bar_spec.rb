require("minitest/autorun")
require("minitest/reporters")
require_relative("../bar")
require_relative('../karaoke')

MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBar < MiniTest::Test

  def setup
    @bar = Bar.new()
    @karaoke_club = Karaoke.new()
  end

  def test_bar_tab__empty()
    assert_equal(0, @bar.bar_tab)
  end

  def test_add_to_bar_tab()
    amount = @karaoke_club.ticket_price
    @bar.add_to_bar_tab(amount)
    assert_equal(amount, @bar.bar_tab)
  end

  def test_drinks_list()
    drinks_list = @bar.drinks
    result = [{:name=>"vodka", :price=>5}, {:name=>"beer", :price=>4}, {:name=>"whiskey", :price=>6}]
    assert_equal(result, drinks_list)
  end

  def test_return_drink_price__vodka
    result = @bar.return_drinks_price('vodka')
    assert_equal(5, result)
  end

  def test_return_drink_price__beer
    result = @bar.return_drinks_price('beer')
    assert_equal(4, result)
  end

  def test_return_drink_price__whiskey
    result = @bar.return_drinks_price('whiskey')
    assert_equal(6, result)
  end

  def test_return_drink_price__gin
    result = @bar.return_drinks_price('gin')
    assert_nil(result)
  end




end
