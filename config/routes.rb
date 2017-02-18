Rails.application.routes.draw do
  root 'games#new'
  resources :games
  resources :categories do
    resources :answers, only: [:create]
  end
end
