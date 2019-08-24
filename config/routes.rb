Rails.application.routes.draw do
  resources :events
  get '/reserve', to: 'reservations#reserve'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
