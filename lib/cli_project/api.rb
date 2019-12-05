#cli needs to make a api call creating new instances of music with the attributes. anything putsing should be in cli. 
require 'pry'
class API 
  
    def playlist
    playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
    playlist.tracks.each.with_index(1) do |a, i|
      #{i}. #{a.artists.name}, #{a.album_name} #{a.album_type} #{a.artist_name}
      album_name = playlist.tracks.album.name
      album_type = playlist.tracks.album.album_type
      artist_name = #{a.artists.name}
      Music.new(album_name, album_type, artist_name)
    end
    end
end    
    
    
    # album_name = playlist.tracks[0].album.name
    #   album_type = playlist.tracks[0].album.album_type
    
    # album_name = "#{i}. #{a.album.name}"
    #   album_type = "#{i}. #{a.album.album_type"
  