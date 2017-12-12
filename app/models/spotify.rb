class Spotify
  def self.search
    
  end

  def self.artist_search(q)
    @artists = RSpotify::Artist.search(params[:artist_name])
  end

  def self.track_search(q)
    @tracks = RSpotify::Track.search(params[:track_name])
  end

  def self.album_search(q)
    @albums = RSpotify::Album.search(params[:album_name])
  end
end
