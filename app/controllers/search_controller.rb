class SearchController < ApplicationController
  def index
  end

  def show
  @results = Spotify.artist_search(params[:searchbox])
  end
end
