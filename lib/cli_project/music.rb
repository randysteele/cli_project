class Music
  
attr_accessor :artist, :name, :tracks

  
  @@all = [] 
  
   def artists
    @artists
   end

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