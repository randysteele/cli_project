require 'pry'
class API 
  # attr_accessor :CLI, :artists, :album, :tracks, :name
  
  RSpotify.authenticate("f2d6e54d3bed499983183cb8c183dd75", "14e98f258cce4f89b5eb48f8342f6f37")
  
  def call
    input = ""
    until input == "exit"
    puts "Welcome to today's 50 most popular songs!"
    puts "To list all the popular songs, enter 'top 50'."
    puts "To list all of the artists in the top 50, enter 'top 50 artists'."
    puts "To list all of the genres in the top 50, enter 'top 50 genres'."
    puts "To exit, type 'exit'."
    puts "What would you like to do?"
    input = gets.chomp
    # input = gets.strip
    
    case input 
     when "top 50"
      top_50
    end
  end
end

   def playlist
     playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
   end
    
    
   def top_50  
     playlist.tracks.map do |song|
     song.name
   end
  end
  
  def singer
    top_50.artists.name
  end
  
 
  
  # def artist_ids
  #   id = %w(4Ga1P7PMIsmqEZqhYZQgDo,7n2wHs1TKAczGzO7Dd2rGr)
    
   singers =  %w('Ga1P7PMIsmqEZqhYZQgDo', '7n2wHs1TKAczGzO7Dd2rGr', '4nDoRrQiYLoBzwC5BhVJzF',
   , '56oDRnqbIiwx4mymNEv7dS', '246dkjvS1zLTtiykXe5h60', '50co4Is1HCEo8bhOyUWKpn', '1sBkRIssrMs1AbVkOJbc7a', '7bXgB6jMjp9ATFy66eO08Z', '7bXgB6jMjp9ATFy66eO08Z', '3TVXtAsR1Inumwj472S9r4', '5UjifI1TYefXWn9GdqDOHl', '66CXWjxzNUsdJxJ2JdwvnR', '5UjifI1TYefXWn9GdqDOHl', '7jVv8c5Fj3E9VhNjxT4snq', '7c0XG5cIJTrrAgEC3ULPiq', '181bsRPaVXVlUKXrxwZfHK', '0hCNtLu0JehylgoiP8L4Gh', '0LyfQWJT6nXafLPZqxe9Of',  '1zNqQNIdeOUZHb8zbZRFMX', '0z6j3MncRCFuW77JhhPx8b', '0z6j3MncRCFuW77JhhPx8b', '4r63FhuTkUYltbVAg5TQnk', '4r63FhuTkUYltbVAg5TQnk', '6l3HvQ5sa6mXTsMTB19rO5', '0Y5tJX1MQlPlqiwlOH1tJY', '50co4Is1HCEo8bhOyUWKpn', '6eUKZXaKkcviH0Ku9w2n3V','4GNC7GD6oZMSxPGyXy4MNB', '41X1TR6hrK8Q2ZCpp2EqCz', '6USMTwO0MNDnKte5a5h0xx', '6qqNVTkY8uBg9cP3Jd7DAH', '6AgTAQt8XS6jRWi4sX7w49', '6jGMq4yGs7aQzuGsMgVgZR', '6LuN9FCkKOj5PcnpouEgny', '3Fl1V19tmjt57oBdxXKAjJ', '6i392l38cR3uBPF0DbNs7S', '5f7VJjfbwm532GiveGC0ZK', '4r63FhuTkUYltbVAg5TQnk', '7jVv8c5Fj3E9VhNjxT4snq', '60rpJ9SgigSd16DOAG7GSa', '6eUKZXaKkcviH0Ku9w2n3V', '6eUKZXaKkcviH0Ku9w2n3V', '4VMYDCV2IEDYJArk749S6m', '1vyhD5VmyZ7KMfW5gqLgo5', '1i8SpTcr7yvPOmcqrbnVXY', '4GvEc3ANtPPjt1ZJllr5Zl', '6l3HvQ5sa6mXTsMTB19rO5', '6l3HvQ5sa6mXTsMTB19rO5','7n2wHs1TKAczGzO7Dd2rGr', '4V8LLVI7PbaPR0K2TGSxFF', '64KEffDW9EtZ1y2vBYgq8T', '3oSJ7TBVCWMDMiYjXNiCKE', '4O15NlyKLIASxsJ0PrXPfz', '4O15NlyKLIASxsJ0PrXPfz', '69GGBxA162lTqCwzJG5jLp', '69GGBxA162lTqCwzJG5jLp', '1cZQSpDsxgKIX2yW5OR9Ot', '7gZfnEnfiaHzxARJ2LeXrf', '0A0FS04o6zMoto8OKPsDwY', '5bWUlnPx9OYKsLiUJrhCA1', '6qqNVTkY8uBg9cP3Jd7DAH', '1uNFoZAHBGtllmzznpCI3s', '1uNFoZAHBGtllmzznpCI3s', '1anyVhU62p31KFi8MEzkbf', '1anyVhU62p31KFi8MEzkbf', '4r63FhuTkUYltbVAg5TQnk', '06HL4z0CvFAxyc27GXpf02', '20sxb77xiYeusSH8cVdatc', '3TVXtAsR1Inumwj472S9r4', '6jJ0s89eD6GaHleKKya26X', '0YinUQ50QDB7ZxSCLyQ40k', '0YinUQ50QDB7ZxSCLyQ40k', '7rkW85dBwwrJtlHRDkJDAC', '31W5EY0aAly4Qieq6OFu6I', '6cK3NBO6uP7hh0oyuVELFl', '0GM7qgcRCORpGnfcN2tCiB', '4q3ewBCX7sLwd24euuV69X', '0GM7qgcRCORpGnfcN2tCiB', '7gOdHgIoIKoe4i9Tta6qdD', '66CXWjxzNUsdJxJ2JdwvnR', '7jVv8c5Fj3E9VhNjxT4snq', '4kYSro6naA4h99UJvo89HB', '6fOMl44jA4Sp5b9PpYCkzz')
  end
  
  def artist_name
    artist_names = playlist.ids.map do |id|
      id.name
   end
  end
 
  def top_50_genres
    #this should list all the genres
  end
  
 end