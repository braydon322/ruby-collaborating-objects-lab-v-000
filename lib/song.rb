class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song, file_type = filename.split(" - ")
    song = self.new(song)
    artist = Artist.find_or_create_by_name(artist)
    artist.add_song(song)
  end
end
