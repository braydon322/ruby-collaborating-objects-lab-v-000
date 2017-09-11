class Artist

  attr_accessor :name

  @@artist = []
  @@songs = []

  def initialize(name)
    @name = name

  end

  def add_song(song)
  end

  def songs
    @@songs
  end

  def save
  end

  def self.all
  end


end
