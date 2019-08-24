Rails.application.routes.draw do
  resources :events
  get '/reserve', to: 'reservations#new'
  post '/reserve', to: 'reservations#create'
  resources :reservations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
