class API 
  
    def self.playlist
       playlist = RSpotify::Playlist.find('jppromotions', '35pMFxG8cjdgqevqCOVPAr')
       playlist.tracks.each.with_index(1) { |a, i|
         track_name = a.name 
         album_name = a.album.name
         album_type = a.album.album_type
         artist_name = a.artists[0].name
         Music.new(album_name, album_type, artist_name) 
       }
    end
end