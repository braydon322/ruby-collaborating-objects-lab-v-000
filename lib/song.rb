class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    songs = filename.split(" - ")
    song_artist = songs[0]
    song_name = songs[1]
    song = self.new(song_name)


    artist = Artist.find_or_create_by_name(artist)
    artist.add_song(song)
  end
end
