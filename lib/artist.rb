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

  def find_or_create_by_name
  end

  def save
    @@artists << self
  end

  def self.all
    @@artists
  end


end
