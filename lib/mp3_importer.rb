class MP3Importer

  attr_reader :path, :files

  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(path).grep(/.*\.mp3/)
  end

  def import
    @@files.each do |file|
      Song.new_by_filename(file)
    Song.new_by_filename(song)
  end
  end

  def files
   Dir.foreach(@file_path) { |x|
     if x.include?(".mp3")
        @@files << x
      end  }
    @@files
  end

  def path
    @path
  end
end
