class MP3Importer

  @@files = []

  def initialize(file_path)
    @path = file_path
  end

  def import
  end

  def files
    @@files
  end

  def path
    @path
  end
end
