#add self.all method and addr.
class Music

attr_accessor :album_name, :album_type, :artist_name
 
  def initialize(album_name, album_type, artist_name)
    @album_name = album_name
    @album_type = album_type
    @artist_name = artist_name
    @@all << self
    
  end  


@@all = []



  def self.all
    @@all 
  end
 


end