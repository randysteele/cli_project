class CLI
 
  def playlist
    playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
    # binding.pry

  end
  
   def top_50  
    # playlist.tracks.map.with_index(1) do |song, i|
    # puts "#{i}. #{song.name}"
    @playlists = Music.all
    @playlists.each.with_index(1) do |a, i|
      puts "#{i}. #{a.artists.name} #{a.album.name} #{a.album.album.name}"
   end
  end
  
  
  def call
  menu
  API.new.playlist
  Music.new
  
   puts "Welcome to the most popular songs!"
    
    playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
       puts "Song number #{i}. Artist name - #{s.artists[0].name}, Album name - #{s.album.name}, Album type - #{s.album.album_type}"
      # binding.pry
    end
  end
    
    def menu
      input = ""
      until input == "exit"
      puts "What song would you like more infomation on? 1-50! To exit type 'exit' "
      
      # playlist.tracks.each.with_index(1) do |a, i|
      #   puts "#{i}. #{a.artists[0].name} #{a.album.name} #{a.album.album_type}"
      
      input = gets.strip.to_i
    
    if input.to_i > 0
      # the_music = @playlist
      playlist.tracks.each.with_index(1) do |a, i|
        puts "#{i}. #{a.artists[0].name} #{a.album.name} #{a.album.album_type}"
      # puts "#{the_music.artists[0].name} #{the_music.album.name} #{the_music.album.album_type}"
      # playlist.tracks.sort{ |a, b| a.popularity <=> b.popularity }.each.with_index(1)  do |s, i|
      # puts "Song number #{i}. Artist name - #{s.artists[0].name}, Album name - #{s.album.name}, Album type - #{s.album.album_type}"
      # puts "#{artist_name} #{album.name} #{album.album.type}"
      input = gets.strip
    end
    elsif "top 50"  
    top_50

    else
    puts "I'm not sure what you'd like to do. To list songs type top 50, to view songs details enter the song number!"
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
    playlist.tracks.sort{ |a, b| a.name <=> b.name }.map.with_index(1)  do |s, i|
    puts "#{i}. #{s.artists[0].name}"
  end
    end
   
 
  # def welcome
  #   puts "Welcome to today's popular songs!"
  # end
  
 
end