Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "static_pages#index"
  get "sobre", to: "static_pages#sobre"
  get "contato", to: "static_pages#contato"

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  get "log_in", to: "sessions#new"
  post "log_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  resources :users
  
end
