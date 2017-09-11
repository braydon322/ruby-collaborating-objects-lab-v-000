require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_string = filename.split(" - ")
    song_name = song_string[1]
    binding.pry
  end

end
