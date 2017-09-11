class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #Splits File Into Array
    songs = filename.split(" - ")
    #Michael Jackson - Thriller - mp3

    song_artist = songs[0]
    #Michael Jackson
    
    song_name = songs[1]
    #Thriller

    song = self.new(song_name)
    binding.pry
    artist = Artist.find_or_create_by_name(song_artist)
    artist.add_song(song)
  end
end
