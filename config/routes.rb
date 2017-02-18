Rails.application.routes.draw do
  root 'games#new'
  resources :games
  resources :categories do
    resources :answers, only: [:create]
  end
  get '/game_play/:id', to: 'games#game_play', as: :game_play
end
