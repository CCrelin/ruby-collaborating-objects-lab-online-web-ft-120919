class Song
  attr_accessor :artist, :name
 
  @@all = []
 
  def initialize(name)
    @name = name
    save
  end
 
  def self.new_by_filename(filename)
    song_artist = filename.split(" - ")[0]
    song.artist_name=(song_artist)
    name = filename.split(" - ")[1]
    song = self.new(name)
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end