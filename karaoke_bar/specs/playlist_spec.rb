require('minitest/autorun')
require_relative('../playlist.rb')
require_relative('../songs.rb')

class PlaylistTest < MiniTest::Test

  def setup()
    @playlist1 = Playlist.new([])
    @song1 = Song.new("Anything", "King Witch")
    @song2 = Song.new("Anything", "Tupac Shakur")
    @song3 = Song.new("Anything", "2Pac")
    @song4 = Song.new("Anything", "2pac shakur")
    @song5 = Song.new("Anything", "Notorious B.I.G.")
    @song6 = Song.new("Anything", "Biggie Smalls")
    @song7 = Song.new("Anything", "Bruce Springsteen")
    @song8 = Song.new("Anything", "Sabaton")
  end

  def test_playlist_empty
    assert_equal([], @playlist1.playlist)
  end

  def test_playlist_add_song
    @playlist1.add_song_to_playlist(@song1.title, @song1.artist)
    assert_equal(@song1, @playlist1)
  end

end
