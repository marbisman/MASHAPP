Rails.application.routes.draw do
  root 'users#index'

  get '/auth/spotify/callback', to: 'search#create', as: 'spotfiy_login'
  get '/search', to: 'search#index', as: 'search'
  post '/search', to: 'search#index'

  get 'search'           => 'search#index', as: 'playlists'
  post 'search'          => 'search#new', as: 'new_playlist'
  post 'search/:id/edit' => 'search#edit', as: 'edit_playlist'
  get 'search/:id'       => 'search#show', as: 'playlist'
  post 'search/:id'      => 'search#update'
  put 'search/:id'       => 'search#update'
  delete 'search/:id'    => 'search#destroy'


  get '/spotify/refresh', to: 'search#update', as: 'token_refresh'


  get '/auth/failure', to: 'sessions#failure'
  get '/logout', to: 'sessions#destroy', as: 'logout'

end
