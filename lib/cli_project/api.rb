#cli needs to make a api call creating new instances of music with the attributes. anything putsing should be in cli. 
require 'pry'
class API 
  
    def self.playlist
       playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
       playlist.tracks.each.with_index(1) do |a, i|
         
         track_name = a.name 
         album_name = a.album.name
         album_type = a.album.album_type
         artist_name = a.artists[0].name
        # binding.pry
         Music.new(album_name, album_type, artist_name) 
       end
    end
   
    
    # album_name = playlist.tracks[0].album.name
    #   album_type = playlist.tracks[0].album.album_type
    
    # album_name = "#{i}. #{a.album.name}"
    #   album_type = "#{i}. #{a.album.album_type"
 end