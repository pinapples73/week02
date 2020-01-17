require("minitest/autorun")
require("minitest/reporters")
require('pry')
require_relative("../guest")
require_relative("../song")
require_relative("../karaoke")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestGuest < MiniTest::Test

  def setup
    @andy = Guest.new('Andy', "Rio" , 10)
    @karaoke_club = Karaoke.new()
  end


  def test_guest_name
    assert_equal('Andy', @andy.name)
  end

  def test_guest_favourite_song
    assert_equal('Rio', @andy.fav_song)
  end

  def test_remove_cash_from_guest
    amount = @karaoke_club.ticket_price
    @andy.remove_cash_from_user(amount)
    assert_equal(0, @andy.cash)
  end


end
