require 'pry'

class Song

  @@songs = []

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_string = filename.split(" - ")
    song_name = song_string[1]
    song_artist = song_string[0]

    exists = nil

    @@songs.each do |song|
      if song = song_name
        exists = true
      else
        exists = false
      end
    end

      if !exists
        new_song = Song.new(song_name)
        new_song.artist = song_artist
        @@songs << self
      end
      
  end

end
