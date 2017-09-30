Rails.application.routes.draw do
root to: 'application#home'
get '/signin', to: 'sessions#new'

resources :users

end
