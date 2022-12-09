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
  get "show_user", to: "sessions#show_user"
  get "edit_user", to: "sessions#edit_user"
  delete "logout", to: "sessions#destroy"

  get "new_question", to: "question#new"
  post "new_question", to: "question#create"
  get "questions", to: "question#index"

  resources :users
  resources :questions
end
