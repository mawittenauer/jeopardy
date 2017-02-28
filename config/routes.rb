Rails.application.routes.draw do
  root 'pages#front'
  get 'my_games', to: 'pages#my_games'
  resources :games
  resources :categories do
    resources :answers, only: [:create]
  end
  resources :answers, only: [:destroy]
  get '/game_play/:id', to: 'games#game_play', as: :game_play
  get '/search_games', to: 'games#search'
  
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
