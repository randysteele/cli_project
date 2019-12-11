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
    puts "To see today's most popular albums press '1' then enter "
    input = gets.strip.to_i
    if input == 1
    print_track
    while input != "exit"
    puts "      **To see more details on a specific album, please enter the album number.**"
    input = gets.strip.to_i
    album_details(input)
    puts "Would you like to see the details for more albums? Enter Y or exit"
     input = gets.strip
    end
    puts "Thank you for visiting, have a great day!"
    end
 end
 
  def print_track
    Music.all.each.with_index(1) do |a, index|
    puts "#{index}. #{a.album_name}"
    end
  end
    
 
 
  def album_details(from_number)
      Music.all[from_number-1, 1].each.with_index(from_number) do |a, index|
      puts "      Album Number: #{index}.  
      Album Name:   #{a.album_name}
      Album Type:   #{a.album_type}
      Artist Name:  #{a.artist_name}" 
      end
  end
end