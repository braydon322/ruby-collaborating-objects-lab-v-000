class Song

  attr_accessor :name, :artist

  def initialize(name = nil)
    @name = name
  end

  def self.new_by_filename(filename)
  end

end
