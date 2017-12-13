class Spotify
  require 'rspotify'

  def self.search(search_type, q)
    options = {
        'track': self.track_search(q),
        'artist': self.artist_search(q),
        'album': self.album_search(q)
    }
    options[search_type]
  end

  def self.artist_search(query)
    p 'Artist search ...'
    response = RSpotify::Artist.search(query)
    p response.first.albums.first.tracks
    response
  end

  def self.track_search(query)
    @track = RSpotify::Track.search(query)
  end

  def self.album_search(query)
    @albums = RSpotify::Album.search(query)
  end
end
