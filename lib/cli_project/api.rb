class API

  
  RSpotify.authenticate("f2d6e54d3bed499983183cb8c183dd75", "14e98f258cce4f89b5eb48f8342f6f37")
  
  def call
    input = ""
    until input == "exit"
    puts "Welcome to today's 50 most popular songs!"
    puts "To list all the popular songs, enter 'top 50'."
    puts "To list all of the artists in the top 50, enter 'top 50 artists'."
    puts "To list all of the genres in the top 50, enter 'top 50 genres'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
    input = gets.chomp
    end
  end
  
  def top_50
    #this should list all the songs 
  end
  
  def top_50_artists
    #this should list all the artists
  end
  
  def top_50_genres
    #this shoudl list all the genres
  end
  
end  
