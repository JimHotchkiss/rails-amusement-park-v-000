Rails.application.routes.draw do
root to: 'application#home'


  get "/signin", to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"

resources :users, :attractions 

end
