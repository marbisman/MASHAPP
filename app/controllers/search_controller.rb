class SearchController < ApplicationController
  def index
  end

  def show
  @results = Spotify.query([params])
  end
end
