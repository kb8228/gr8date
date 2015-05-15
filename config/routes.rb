Rails.application.routes.draw do

  root "plans#new"
  

  #root "plans#new"
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
  get "plans/:id/edit" => "plans#edit", as: :edit_plan
  put "plans/:id" => "plans#update"
  patch "plans/:id" => "plans#update"

  delete "plans/:id" => "plans#destroy"

  # Events routes:
  namespace :api do
    resources :events, only: [:index, :show]
  end

  get "events" => "events#index"
  get "events/new" => "events#new", as: :new_event
  post "events" => "events#create"
  get "events/:id" => "events#show", as: :event 
  get "events/:id/edit" => "events#edit", as: :edit_event
  put "events/:id" => "events#update"
  patch "events/:id" => "events#update"
  delete "events/:id" => "events#destroy"

  # Dinner routes:
  namespace :api do
    resources :dinners, only: [:index, :show]
  end

  get "dinners" => "dinners#index"
  get "dinners/new" => "dinners#new", as: :new_dinner
  post "dinners" => "dinners#create"
  get "dinners/:id" => "dinners#show", as: :dinner 
  get "dinners/:id/edit" => "dinners#edit", as: :edit_dinner
  put "dinners/:id" => "dinners#update"
  patch "dinners/:id" => "dinners#update"
  delete "dinners/:id" => "dinners#destroy"

end