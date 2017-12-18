require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "f30dab27d9a441a2b0b6e230916d3502", "67c38943a807432ba06d1aff8af68eeb", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end
