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
    return response
  end

  def self.track_search(query)
    p 'Track search ...'
    response = RSpotify::Track.search(query)
    p response.first.albums.first.tracks
    return response
  end

  def self.album_search(query)
    p 'Album search ...'
    response = RSpotify::Album.search(query)
    p response.first.albums.first.tracks
    return response
  end

  def camelot_key
  end
end
