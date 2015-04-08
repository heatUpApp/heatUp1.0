Rails.application.routes.draw do
  
  resources :user

  devise_for :users
  # basic
  root "pages#home"
  get "/home", to: "pages#home"
  get "/signin", to: "pages#signin"
  get "/signup", to: "pages#signup"
  get "/top", to: "pages#top"
  post "/player", to: "player#organizer"

end
