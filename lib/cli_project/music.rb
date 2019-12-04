#add self.all method and addr.
class Music

attr_accessor :album_name, :album_type, :artist_name

@@all = []
 
  # def initialize(album_name, album_type, artist_name)
  def initialize
    @album_name = []
    @album_type = []
    @artist_name = []
    @@all 
    
  end  


  def self.all
    @@all << self
  end
 

end