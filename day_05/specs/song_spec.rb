require("minitest/autorun")
require("minitest/reporters")
require_relative("../song")

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSong < MiniTest::Test

  def setup
    @song01 = Song.new("Baggy Trousers","Madness")
  end

  # test song name
  def test_song_name
    assert_equal("Baggy Trousers", @song01.name)
  end

  #test artist name
  def test_song_artist
    assert_equal("Madness", @song01.artist)
  end

end
