class CLI
 attr_accessor :API 
  def call
   puts "Hello!"
   list_songs
  end
  
  def list_songs
   puts "Today's top 50 most popular songs:" 
 end
 
 
  def welcome
    puts "Hello, which song number would you like more infromation on?"
  end
end