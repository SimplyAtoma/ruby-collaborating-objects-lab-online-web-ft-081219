class Artist 
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all 
  end
  
  def songs 
    
  end
  
  def add_song(new_song)
    new_song.artist = self
  end
end