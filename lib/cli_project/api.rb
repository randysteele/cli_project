require 'pry'
class API 
  
  @@all = []
  
  def call
    input = ""
    until input == "exit"
    puts "To list all the popular songs, enter 'top 50'."
    puts "To exit, type 'exit'."
    
    puts "What song number would you like too see?"
    input = gets.strip.to_i
    
    
    
      
      
    
  # if input == "top 50"
  #     top_50
  #     puts "If you'd like to see the artists for these songs type 'y'?"
  #     elsif input == "y"
  #       top_50_artists
  #       elsif input == "n" 
  #       input == ""
  #   end
    
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
  
  def top_50_artists
    playlist.tracks.map.with_index(1) do |art, i|
    puts "#{i}. #{art.artists[0].name}"
    
    end
  end
end


input = nil

# while input != "exit"
# puts "enter the song number you want info on:"
# input = gets.strip.to_i
# if input > 0
# puts playlist.tracks.map.with_index(1) do |art, i|
# puts "#{i}. #{art.artists.name[0]}"
# end
# elsif input == "top 50"
# top_50
# else puts "idk what you want"
# end
# end
