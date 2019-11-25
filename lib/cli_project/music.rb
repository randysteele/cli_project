class Music
  
attr_accessor :artist, :name

  
  @@all = [] 
  
  def self.all 
    @@all 
  end

  def artist=(artist)
    @artist = artist
  end

  def name=(name)
    @name = name
  end
  
  
  
end