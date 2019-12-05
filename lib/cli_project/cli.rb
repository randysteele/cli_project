class CLI 
  
# def list_songs 
#   @songs = CLI.new
#   @songs.each.with_index(1) do |song, i|
#     puts "#{i}. #{song.name} #{song.album.name} #{song.album.album_type}"
#     end
#     end 
    
  def playlist
    playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
  end
  
  def top_50  
     playlist.tracks.each.with_index(1) do |a, i|
       puts "#{i}. #{a.artists[0].name}, #{a.album.name}, #{a.album.album_type}"
   end
  end
  
  
  def call
  menu
  API.new.playlist
  Music.new
  
   puts "Welcome to the most popular songs!"
    
    playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
      puts "Song number #{i}. Artist name - #{s.artists[0].name}, Album name - #{s.album.name}, Album type - #{s.album.album_type}"
      
    end
  end
    
    def menu
      input = ""
      until input == "exit"
     puts "What number track would you like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
      input = gets.strip.to_i
      
    # print_tracks(input)
     
     print_tracks(top_50)
    
    if input.to_i > 0
      # the_songs = @songs
      # puts "#{the_songs[0].name} - #{the_songs.album.name} - #{the_songs.album.album_type}"
      
      # puts "#{artists[0].name} - #{album.name} - #{album.album.name}"
        playlist.tracks.each.with_index(1) do |a, i|
        puts "#{i}. #{a.artists[0].name}, #{a.album.name}, #{a.album.album_type}"
      
       input = gets.strip.to_i
      end
    elsif  "top 50"  
    top_50
    elsif 
    exit
  else
    puts "I'm not sure what you'd like to do. To list songs type top 50, to view songs details enter the song number!"
# end
# end
 end
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
    
    
  
   def sorted_artists
    playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
    puts "#{i}. #{s.artists[0].name}"
  end
    end
   
 
  def print_tracks(from_number)
    puts ""
    puts "---------- Music #{from_number} - #{from_number} ----------"
    puts ""
    Music.all[from_number-1, 10].each.with_index(from_number) do |track, index|
      puts "#{index}. #{track.artist_name} - #{track.album_name} - #{track.album_type}"
    end
  end

  # album_name, :album_type, :artist_name
 
end