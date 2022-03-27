Rails.application.routes.draw do
  resources :people
  resources :clinics
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "people#index"
end
