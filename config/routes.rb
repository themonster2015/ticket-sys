Rails.application.routes.draw do
  resources :events, only: [:index,:show]
  get '/reserve', to: 'reservations#new'
  post '/reserve', to: 'reservations#create'
  resources :reservations
  post '/pay', to: 'reservations#update'
  root 'events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
