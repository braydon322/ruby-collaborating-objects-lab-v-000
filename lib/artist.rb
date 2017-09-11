class Artist

  attr_accessor :name

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song
  end

  def songs
    @songs
  end

  def save
    @@artists << self
    self
  end

  def self.find_or_create_by_name(name)
     self.all.detect {|artist| artist.name == name} || Artist.new(name).save
  end

  def self.all
    @@artists
  end

  def print_songs
    @@songs
  end


end
