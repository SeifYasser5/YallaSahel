Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rentals
  #Landingpage route
  root 'rentals#signin'
  #Rooms route
  get '/rentals/:id', to: 'rentals#show'
  #Search route
  get '/rentals', to: 'rentals#index'
end
