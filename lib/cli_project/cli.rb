class CLI
 
   def playlist
    playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
    # binding.pry
  end
  
  def call
   welcome
   Music.new
   API.new.call
   puts "Welcome to the most popular songs!"
    menu
    playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
       puts "Song number #{i}. Artist name - #{s.artists[0].name}, Album name - #{s.album.name}, Album type - #{s.album.album_type}"
      # binding.pry
    end
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
    def print_songs(number)  
      playlist.tracks[number-1, 50].map.with_index(number) do |song, index|
        puts "#{index}. #{song.name}"
      end
    end  
    
    def menu
      input = " "
      while input != "exit"
      puts "What song would you like more infomation on? 1-50"
    input = gets.strip.to_i
    # # puts "To list all the popular songs, enter 'top 50'."
    puts "To exit, type 'exit'."
    # puts "What song number would you like too see? 1-50"
    # input = gets.strip.to_i
    
    
       playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
       puts "Song number #{i}. Artist name - #{s.artists[0].name}, Album name - #{s.album.name}, Album type - #{s.album.album_type}"
      # binding.pry
      
      input = gets.strip.to_i
      
  
   end 
 end
  
   def sorted_artists
    playlist.tracks.sort{ |a, b| a.name <=> b.name }.map.with_index(1)  do |s, i|
    puts "#{i}. #{s.artists[0].name}"
  end
    end
   
 
  def welcome
    puts "Welcome to today's popular songs!"
  end
  
 
end