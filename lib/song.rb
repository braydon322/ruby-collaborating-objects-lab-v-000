require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end

  def self.new_by_filename(filename)
  new_array = filename.split(" - ")
  newer_array = []
  #
  # new_array[1]
  #
  # i = 0
  #
  # result = nil
  #
  # while i < Artist.all.length
  #   if Artist.all[i].name == new_array[1]
  #     result = true
  #   else
  #     result = false
  #   end
  #   i+=1
  # end
  #
  # if result
  #   Artist.all.uniq
  # else
  #   new_song = self.new(new_array[1])
  #   new_song.artist = Artist.find_or_create_by_name(new_array[0])
  #   new_song
  #
  # end

  Artist.all.each do |artist|
    if artist.name == new_array[1]
      newer_array << new_array[1]
    end
  end

    return newer_array
  new_song = self.new(new_array[1])
  new_song.artist = Artist.find_or_create_by_name(new_array[0])
  new_song
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


end
