class MP3Importer 
  #parse directory of files and send file names to song class
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end 
  
  def files 
    
  end
  
  def import(list_of_filenames)
    list_of_filenames.each{ |filename| Song.new_by_filename(filename) }
  end
end 