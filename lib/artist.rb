class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end 
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def self.find_or_create_by_name(song)
    #take name passed in(song)
    #find artist instance with that name or create one 
    #either way, return value should be instance of artist with name filled out 
  end 
  
  def print_songs
    
  end 
  
end 