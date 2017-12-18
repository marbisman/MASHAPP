module UsersHelper

  def spotify_auth
      @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
      # hash = @spotify_user.to_hash
      # puts hash
      # puts @spotify_user.display_name
      # user = User.create(email:hash['email'], access_token:hash['token'], refresh_token:hash['refresh_token'])
      login_spotify_user(@spotify_user)
    end

end
