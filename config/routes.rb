Rails.application.routes.draw do
  root to: 'application#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  resources :users, only: [:show, :new, :create]
  resources :attractions, only: [:index, :show]


end
