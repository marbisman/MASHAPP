class SearchController < ApplicationController

  def index
    if params[:query]
      q = URI.encode(params[:query])
      search_type = URI.encode(params[:choice].first)
      logger.info("Spotify query submitted: " + search_type)
      @results = Spotify.search(search_type, q)
    end
  end

  def create
    #spotify auth for initial login
    spotify_auth
    redirect_to '/search'
  end

  def show
  @results = Spotify.artist_search(params[:search])
  end

  def update
    # make sure they are already logged in
    RSpotify.new(spotify_user)
  end

  def destroy
  end

end
