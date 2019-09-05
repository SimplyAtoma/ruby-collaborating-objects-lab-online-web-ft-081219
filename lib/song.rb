class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    Song.all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.new_by_filename(song_file)
    hold = song_file.split(" - ")
    Song.new(hold[1])
  end
  
  def artist_name=(artist_name)
    
  end
end