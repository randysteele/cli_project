require 'pry'
class API 
  # attr_accessor :CLI, :artists, :album, :tracks, :name
  
  RSpotify.authenticate("f2d6e54d3bed499983183cb8c183dd75", "14e98f258cce4f89b5eb48f8342f6f37")
  
  def call
    input = ""
    until input == "exit"
    puts "Welcome to today's 50 most popular songs!"
    puts "To list all the popular songs, enter 'top 50'."
    puts "Which song would you like more infomation about? Please enter the song number:"
    
    puts "To exit, type 'exit'."
    puts "What would you like to do?"
    
    input = gets.strip
    
    case input 
     when "top 50"
      top_50
      when "top 50 artists"
        top_50_artists
    end
  end
end

   def playlist
     playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
   end
    
    
   def top_50  
     playlist.tracks.map.with_index(1) do |song, i|
     puts "#{i}. #{song.name}"
   end
  end
  
  # def top_50_artists
  #   playlist.tracks.map.with_index(1) do |art, i|
  #   puts "#{i}. #{art.artists[0].name}"
  # end
  # end
 end
 
  def print_artists(from_number)
    puts "Artists #{from_number} - #{from_number+49}"

    # playlist.tracks[from_number-1, 50].map.with_index(from_number) do |art, i|
    # puts "#{i}. #{art.name}"
   
  end
 

 