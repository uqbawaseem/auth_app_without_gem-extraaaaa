Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'items#index'
  # get "items/new", to: "items#new"
  # post "/items", to: "items#create"
  # get "items/:id", to: "items#show", as: 'item'
  # get "item/edit/:id", to: "items#edit", as: 'edit_item'
  # patch "items/:id", to: "items#update"
  # delete "items/:id", to: "items#destroy"
  resources :items


  get '/login' => 'sessions#new' 
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'users/signup' => 'users#new'
  post '/users' => 'users#create'

  
end
