class MP3Importer
  attr_reader :path, :files, :artist

  def initialize(file_path)
    @path = file_path
    @files = Dir.entries(file_path).grep(/.*\.mp3/)
  end

  def import
    @files.each {|file| Song.new_by_filename(file)}
  end

end
