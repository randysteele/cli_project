require 'pry'
class API 
  attr_accessor :CLI, :artists, :album, :tracks, :name
  
  @@all = []
  
  # def initialize(name)
  #     # @collaborative = options['collaborative']
  #     # @description   = options['description']
  #     # @followers     = options['followers']
  #     # @images        = options['images']
  #     # @name          = options['name']
  #     # @public        = options['public']
  #     # @snapshot_id   = options['snapshot_id']
  #     # @total         = options['tracks']['total'] 
  #     @name = name
  # end
 
  def artists
    @artists
  end

  def tracks
    @tracks
  end


  
  RSpotify.authenticate("f2d6e54d3bed499983183cb8c183dd75", "14e98f258cce4f89b5eb48f8342f6f37")
  
  # def self.all
  #   @@all << self
  # end
  
  def call
    input = ""
    until input == "exit"
    puts "Welcome to today's 50 most popular songs!"
    puts "To list all the popular songs, enter 'top 50'."
    puts "To list all of the artists in the top 50, enter 'top 50 artists'."
    puts "To list all of the genres in the top 50, enter 'top 50 genres'."
    puts "To exit, type 'exit'."
    puts "What would you like to do?"
    input = gets.chomp
    # input = gets.strip
    case input 
    
     when "top 50"
      top_50
    end
  end
end

   def playlist
     playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
   end
    # playlist.tracks[0..50].name.each {|song|}
    
   def top_50  
    playlist.tracks[1].name
    playlist.tracks[2].name
    playlist.tracks[3].name
    playlist.tracks[4].name
    playlist.tracks[5].name
    playlist.tracks[6].name
    playlist.tracks[7].name
    playlist.tracks[8].name
    playlist.tracks[9].name
    playlist.tracks[10].name
    playlist.tracks[11].name
    playlist.tracks[12].name
    playlist.tracks[13].name
    playlist.tracks[14].name
    playlist.tracks[15].name
    playlist.tracks[16].name
    playlist.tracks[17].name
    playlist.tracks[18].name
    playlist.tracks[19].name
    playlist.tracks[20].name
    playlist.tracks[21].name
    playlist.tracks[22].name
    playlist.tracks[23].name
    playlist.tracks[24].name
    playlist.tracks[25].name
    playlist.tracks[26].name
    playlist.tracks[27].name
    playlist.tracks[28].name
    playlist.tracks[29].name
    playlist.tracks[30].name
    playlist.tracks[31].name
    playlist.tracks[32].name
    playlist.tracks[33].name
    playlist.tracks[34].name
    playlist.tracks[35].name
    playlist.tracks[36].name
    playlist.tracks[37].name
    playlist.tracks[38].name
    playlist.tracks[39].name
    playlist.tracks[40].name
    playlist.tracks[41].name
    playlist.tracks[42].name
    playlist.tracks[43].name
    playlist.tracks[44].name
    playlist.tracks[45].name
    playlist.tracks[46].name
    playlist.tracks[47].name
    playlist.tracks[48].name
    playlist.tracks[49].name 
  end
   
  
  def top_50_artists
    #this should list all the artists
  end
  
  def top_50_genres
    #this shoudl list all the genres
    
  end
 end