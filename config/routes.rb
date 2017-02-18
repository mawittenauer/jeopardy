Rails.application.routes.draw do
  root 'games#new'
  resources :games
end
