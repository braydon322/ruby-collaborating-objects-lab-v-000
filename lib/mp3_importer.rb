class MP3Importer

  @@files = []

  def initialize(file_path)
    @path = file_path
  end

  def import

    Song.new_by_filename(song)
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
