class Artist
  attr_accessor :name

  @@song_count = 0
  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def save
    @@artists << self
  end

  def self.all
    @@artists
  end

  def self.find(name)

    result = @@artists.detect do |artist|
        artist.name == name
    end

    if result
      result
    end


  end

  def self.create(name)
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end


  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@song_count +=1
  end

  def songs
    @songs
  end

  def self.song_count
    @@song_count
  end
end
