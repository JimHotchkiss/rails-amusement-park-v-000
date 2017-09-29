Rails.application.routes.draw do
root to: 'home#index'

get '/users/signup', to: 'users#new'
post '/users', to: 'users#create'
get '/users/:id', to: 'users#show', as: 'user' end 
