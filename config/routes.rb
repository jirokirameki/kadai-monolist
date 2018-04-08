Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'rankings/want', to: 'rankings#want'
  
  get 'signup', to: 'users#new'
  # resources :users, only: [:show, :new, :create]  
  resources :users, only: [:show, :create]  

  resources :items, only: [:show, :new]
  resources :ownerships, only: [:create, :destroy]
end
