Rails.application.routes.draw do
  root "landingpage#index"
  # User routes

  # User routes:
  get "users" => "users#index"
  get "users/new" => "users#new", as: :new_user
  post "users" => "users#create"
  get "users/:id" => "users#show", as: :user

  get "users/:id/edit" => "users#edit", as: :edit_user
  put "users/:id" => "users#update"
  patch "users/:id" => "users#update"
  delete"users/:id" => "users#destroy"

  # Session routes
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"


  # Plan Routes
  get "plans/" => "plans#index"
  get "plans/new" => "plans#new", as: :new_plan
  post "plans/" => "plans#create"
  get "plans/:id" => "plans#show", as: :plan
  #post "plans/:id/edit" => "plans#edit", as: :edit_plan
  delete "plans/:id" => "plans#destroy"




  # Events routes:
  get "/events" => "events#index"
  get "/events/:id" => "events#show", as: :event 
  get "/events/new" => "events#new", as: :new_event
  post "/events" => "events#create"
  get "/events/:id/edit" => "events#edit", as: :edit_event

  # Dinner routes:
  get "/dinners" => "dinners#index"
  get "/dinners/:id" => "dinners#show", as: :dinner 
  get "/dinners/new" => "dinners#new", as: :new_dinner
  post "/dinners" => "dinners#create"
  get "/dinners/:id/edit" => "dinners#edit", as: :edit_dinner


end
