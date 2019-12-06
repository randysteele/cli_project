class CLI 
  
  def playlist
    Music.all 
  end
  
  def call
    puts "Welcome to the top songs!"
   API.playlist
   menu
  end
  
  def menu
   puts "What number album would you like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
    input = gets.strip.to_i
    
    print_track(input)
    
    puts "Which album would you like more info on?"
    input = gets.strip
    
    
    #add method for detailed view
    
   print_tracks(input)
      
    input = gets.strip
    
    
    # print_tracks(playlist)
    # playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
    #   puts "Song number #{i}. Artist name - #{s.artists[0].name}, Album name - #{s.album.name}, Album type - #{s.album.album_type}"
     
    # end
    
    
    puts "Would you like to see more songs? Y or N"
    input = gets.strip
    if input == "y"
      menu
      elsif input == "n"
      puts "Thank you for stopping by, have a great day!"
      exit
    else
      puts "Sorry, I'm not sure what you mean."
      menu
    end
  end

    
      # input = ""
      # until input == "exit"
    # puts "What number track would you like to see? 1-10, 11-20, 21-30, 31-40 or 41-50?"
      # input = gets.strip.to_i
      
      
      
  def top_50  
      playlist.tracks.each.with_index(1) do |a, i|
       puts "#{i}. #{a.artists[0].name}, #{a.album.name}, #{a.album.album_type}"
   end
  end  
     
    
     
    # print_tracks(top_50)
    
    # if input.to_i > 0
      # the_songs = @songs
      # puts "#{the_songs[0].name} - #{the_songs.album.name} - #{the_songs.album.album_type}"
      
      # puts "#{artists[0].name} - #{album.name} - #{album.album.name}"
        # playlist.tracks.each.with_index(1) do |a, i|
        # puts "#{i}. #{a.artists[0].name}, #{a.album.name}, #{a.album.album_type}"
      
#       input = gets.strip.to_i
#       # end
#     elsif  "top 50"  
#     top_50
#     elsif 
#     exit
#   else
#     puts "I'm not sure what you'd like to do. To list songs type top 50, to view songs details enter the song number!"
# # end
# # end
# end
# end  
# end

  def top_50_artists
    playlist.tracks.map.with_index(1) do |art, i|
    puts "#{i}. #{art.artists[0].name}"
  end 
end

    # def print_songs(number)  
    #   playlist.tracks[number-1, 50].map.with_index(number) do |song, index|
    #     puts "#{index}. #{song.name}"
    #   end
    # end  
    
    
  
   def sorted_artists
    playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
    puts "#{i}. #{s.artists[0].name}"
    end
  end
   #check indeting and end alignment
 
  def print_track(from_number)
    puts Music.new  "#{from_number} - #{from_number+9}"
    Music.all[from_number-1, 10].each.with_index(from_number) do |a, index|
    puts "#{index}. #{a.album_name}"
    end
  end
    
    
    #review for when playlist is being passed in. 
    # puts "#{playlist.album_name} -- #{playlist.album_type} -- #{playlist.artist_name}"
    # input = gets.strip.to_i
  end
  
  
  # album_name, :album_type, :artist_name
 
  def print_tracks(from_number)
    puts Music.new  "#{from_number}  #{from_number+9}"
    Music.all[from_number-1, 10].each.with_index(from_number) do |a, index|
      puts "#{index}. #{a.artist_name} #{a.album_name} #{a.album_type}"
    end
  end
 
 
  def album_details(from_number)
      puts Music.new  "#{from_number} - #{from_number+9}"
      Music.all[from_number-1, 10].each.with_index(from_number) do |a, index|
      puts "Song Number: #{index}.  Artist Name: #{a.artist_name}, Album Name: #{a.album_name}, Album Type: #{a.album_type}"
      end
  end
    
