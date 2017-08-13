class Playlist
  attr_accessor :playlist
  def initialize(playlist)
    @playlist = [ ]
  end

  def add_song_to_playlist(new_song_title, new_song_artist)
    playlist.push(new_song_title, new_song_artist)
  end

end
