class Artist

  attr_accessor :name

  @@artists = []
  @@songs = []

  def initialize(name)
    @name = name

  end

  def add_song(song)
    @@songs << song
  end

  def songs
    @@songs
  end

  def save
    @@artists << self
  end

  def self.find_or_create_by_name(name)
  end

  def self.all
    @@artists
  end

  def print_songs
    @@songs.each do |song|
      puts song.name
    end
  end


end
