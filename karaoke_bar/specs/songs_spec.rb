require('minitest/autorun')
require_relative('../songs.rb')

class SongsTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Anything", "King Witch")
    @song2 = Song.new("Anything", "Tupac Shakur")
    @song3 = Song.new("Anything", "2Pac")
    @song4 = Song.new("Anything", "2pac shakur")
    @song5 = Song.new("Anything", "Notorious B.I.G.")
    @song6 = Song.new("Anything", "Biggie Smalls")
    @song7 = Song.new("Anything", "Bruce Springsteen")
    @song8 = Song.new("Anything", "Sabaton")
  end

  def test_song_title
    assert_equal("Anything", @song1.title)
  end

  def test_song_artist
    assert_equal("King Witch", @song1.artist)
  end

  def test_song_artist_2
    assert_equal("tupac shakur", @song2.artist.downcase)
  end

end
