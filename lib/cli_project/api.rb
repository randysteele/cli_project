#cli needs to make a api call creating new instances of music with the attribute(initialize). anything puts should be in cli. 
require 'pry'
class API 
  
  def playlist
    playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
    # binding.pry
  end
    

  # def list_artists
  #   playlist.tracks.sort{ |a, b| a.name <=> b.name }.map.with_index(1)  do |s, i|
  #   puts "#{i}. #{s.artists[0].name}"
  #   end
  # end  
  
  def call
    puts "Welcome to the most popular songs!"
    menu
  end
    
    def menu
      input = 
      puts "What song would you like more infomation on? 1-50"
    # input = gets.strip.to_i
    # # puts "To list all the popular songs, enter 'top 50'."
    # puts "To exit, type 'exit'."
    # puts "What song number would you like too see? 1-50"
    input = gets.strip.to_i
    
    
       playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
    puts "Song number #{i}. Artist name - #{i}#{s.artists[0].name}, Album name - #{i}#{s.album.name}, Album type #{i}#{s.album.album_type}"
    
    
    # playlist.tracks.map do |art|
    # puts "#{art.artists[0].name}"
    input = gets.strip.to_i-1
  end
 
   end
 
  
    # == "top 50"
    # list_songs
    # elsif 
    
  
  
    
    def print_songs(number)  
      playlist.tracks[number-1, 50].map.with_index(number) do |song, index|
        puts "#{index}. #{song.name}"
      end
    end  
    
#   if input == "top 50"
#       top_50
#       puts "If you'd like to see the artists for these songs type 'y'?"
#       elsif input == "y"
#         top_50_artists
#         elsif input == "n" 
#         input == ""
#     end
#   end
# end  
 

 
  
  #  playlist.tracks[0].album.name
  #playlist.tracks[0].album.album_type
  #playlist.tracks[0].artists[0].name
    
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
    
  def sorted_artists
    playlist.tracks.sort{ |a, b| a.name <=> b.name }.map.with_index(1)  do |s, i|
    puts "#{i}. #{s.artists[0].name}"
  end
    end
    
    def list_songs
    playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.map.with_index(1)  do |s, i|
    puts "#{i}. #{s.name}"
    end
  end 
end