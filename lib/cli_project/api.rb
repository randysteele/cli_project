require 'pry'
class API 
  # attr_accessor :CLI, :artists, :album, :tracks, :name
  
  RSpotify.authenticate("f2d6e54d3bed499983183cb8c183dd75", "14e98f258cce4f89b5eb48f8342f6f37")
  
  def call
    input = ""
    until input == "exit"
    puts "Welcome to today's 50 most popular songs!"
    puts "To list all the popular songs, enter 'top 50'."
    puts "Would you like to see the artists for these songs?"
    input = gets.strip.to_i
    
    if input = "y"
      top_50_artists
    end
    
    puts "To exit, type 'exit'."
    puts "What would you like to do?"
    
    input = gets.strip
    
    artist = playlist.tracks.find(input.to_i)
    exiend
    case input 
     when "top 50"
      top_50
      # when #{i}
      #   song_number{i}
    end
  end
end

   def playlist
     playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
   end
    
    
   def top_50  
     playlist.tracks.map.with_index(1) do |song, i|
     "#{i}. #{song.name}"
   end
  end
  
  def top_50_artists
    playlist.tracks.map.with_index(1) do |art, i|
    puts "#{i}. #{art.artists[0].name}"
    
  end
  end
 
 
  def print_artists(from_number)
    puts "Artists #{from_number} - #{from_number+49}"

    playlist.tracks[from_number-1, 50].map.with_index(from_number) do |art, i|
    puts "#{i}. #{art.name}"
   end
   
   def song_number
     playlist.tracks.map.with_index do |song, i|
       puts "#{i}. #{song.name}" 
     end
   end
 end
  end