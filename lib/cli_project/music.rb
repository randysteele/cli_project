#add self.all method and addr.
class Music

attr_accessor :album_name, :album_type, :artist_name

@@all = []
 
  # def initialize(album_name, album_type, artist_name)
  def initialize(album_name = nil , album_type = nil , artist_name = nil)
    @album_name = []
    @album_type = []
    @artist_name = []
    @@all << self
    
  end  


  def self.all
    @@all 
  end
 

end