require("minitest/autorun")
require("minitest/reporters")
require_relative("../room")
require_relative("../song")
require_relative('../guest')
require_relative('../karaoke')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRoom < MiniTest::Test

  def setup

    #create songs using Song class
    @song01 = Song.new("Baggy Trousers","Madness")
    @song02 = Song.new("Rio","Duran Duran")
    @song03 = Song.new("Kids in America","Kim Wilde")

    #create song lists by adding songs to an array
    @songs_list_80s = [@song01,@song02,@song03]

    #create rooms using Room class with a theme, capacity, song list
    @room01 = Room.new("80s", 3, @songs_list_80s)

    #create guests
    @andy = Guest.new('Andy', "Rio" , 10)
    @mandy = Guest.new('Mandy', "I Feel Love" , 20)
    @sandy = Guest.new('Sandy', "I Will Survive" , 25)
    @bob = Guest.new('Bob', "Back in Black" , 9)

    @karaoke_club = Karaoke.new()

  end

  def test_room_theme
    assert_equal('80s', @room01.theme)
  end

  def test_room_capacity
    assert_equal(3, @room01.capacity)
  end

  def test_room_song_list
    assert_equal(3, @room01.song_list.count)
  end

  def test_room_guest_list__empty
    assert_equal(0, @room01.guest_list.count)
  end

  def test_check_in_guest__enough_cash
    @room01.check_in_guest(@andy , @karaoke_club)
    assert_equal(1, @room01.guest_list.count)
    assert_equal(0, @andy.cash)
    assert_equal(10, @karaoke_club.till)
  end

  def test_check_in_guest__not_enough_cash
    @room01.check_in_guest(@bob , @karaoke_club)
    assert_equal(0, @room01.guest_list.count)
    assert_equal(9, @bob.cash)
    assert_equal(0, @karaoke_club.till)
  end

  def test_checkout_guest
    @room01.check_in_guest(@andy, @karaoke_club)
    @room01.check_in_guest(@mandy, @karaoke_club)
    @room01.checkout_guest(@mandy)
    assert_equal(1, @room01.guest_list.count)
  end

  def test_room_capacity_full_room
    @room01.check_in_guest(@andy, @karaoke_club)
    @room01.check_in_guest(@mandy, @karaoke_club)
    @room01.check_in_guest(@sandy, @karaoke_club)
    @room01.check_in_guest(@sandy, @karaoke_club)
    assert_equal(3, @room01.guest_list.count)
  end

end
