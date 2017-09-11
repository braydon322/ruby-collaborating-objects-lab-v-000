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

  def self.all
  end


end
