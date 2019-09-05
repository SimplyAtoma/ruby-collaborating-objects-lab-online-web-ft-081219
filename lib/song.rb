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
    Artist.all.each{ |name|
      if name == artist_name
        @artist = name 
      elsif name == Artist.all.last.name
        @artist = Artist.new(artist_name)
      end
    }
  end
end