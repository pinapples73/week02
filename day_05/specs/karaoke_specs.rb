require('minitest/autorun')
require('minitest/reporters')
require_relative('../karaoke')
require_relative("../room")
require_relative("../song")
require_relative("../guest")



Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestKaraoke < MiniTest::Test

  def setup
    #create songs using Song class
    @song01 = Song.new("Baggy Trousers","Madness")
    @song02 = Song.new("Rio","Duran Duran")
    @song03 = Song.new("Kids in America","Kim Wilde")
    @song11 = Song.new("Jive Talking","Bee Gees")
    @song12 = Song.new("I Feel Love","Donna Summer")
    @song13 = Song.new("I Will Survive","Gloria Gaynor")
    @song21 = Song.new("I Want to Know Where Love is","Foreigner")
    @song22 = Song.new("In the Air Tonight","Phil Collins")
    @song23 = Song.new("Is This Love","Whitesnake")

    #create song lists by adding songs to an array
    @songs_list_80s = [@song01,@song2,@song3]
    @songs_list_disco = [@song11,@song12,@song13]
    @songs_list_ballads = [@song21,@song22,@song23]

    #create rooms using Room class with a theme, capacity, song list
    @room01 = Room.new("80s", 3, @songs_list_80s)
    @room02 = Room.new("Disco", 2, @songs_list_disco)
    @room03 = Room.new("Rock Ballads", 3, @songs_list_ballads)

    #create guests
    @andy = Guest.new('Andy', "Rio" , 10)
    @mandy = Guest.new('Mandy', "I Feel Love" , 20)
    @sandy = Guest.new('Sandy', "I Will Survive" , 25)
    @bob = Guest.new('Bob', "Back in Black" , 9)

    @karaoke_club = Karaoke.new()

  end

  def test_add_money_to_till
    @karaoke_club.add_money_to_till()
    assert_equal(10 , @karaoke_club.till)
  end

  def test_users_has_enough_money__true
    result = @karaoke_club.test_guest_cash(@andy)
    assert_equal(true, result)
  end

  def test_users_has_enough_money__false
    result = @karaoke_club.test_guest_cash(@bob)
    assert_equal(false, result)
  end



end
