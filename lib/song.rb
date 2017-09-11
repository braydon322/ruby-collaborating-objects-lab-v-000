require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_string = filename.split(" - ")
    song_name = song_string[1]
    song_artist = song_string[0]
    new_song = Song.new(song_name)
    new_song.artist = 
    binding.pry
  end

end
