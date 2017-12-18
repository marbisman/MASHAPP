class SearchController < ApplicationController
require('rspotify')

  def index
    @search = {}
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

  def search_harder
    puts "SEARCH HARDER CALLED"
    if params[:query]
      q = URI.encode(params[:query])
      search_type = URI.encode(params[:choice].first)
      logger.info("Spotify query submitted: " + search_type)
        if search_type = 'track'
          @results = RSpotify::Track.search(q)
        elsif search_type = 'artist'
          @results = RSpotify::Artist.search(q)
        elsif search_type = 'artist'
          @results = RSpotify::Album.search(q)
        end
      require('pp')
      pp @results
      puts @results.class
      puts @results[1]
      render 'results'
    else
      render 'index'
      flash[:notice] = "Search incomplete, please try again"
    end
  end

end
