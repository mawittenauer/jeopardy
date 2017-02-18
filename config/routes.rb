Rails.application.routes.draw do
  root 'games#new'
  resource :games
end
