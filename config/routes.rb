Rails.application.routes.draw do
  get '/', to: 'pages#home'
  get '/cats/new', to: 'pages#new'
  get '/todos/new', to: 'pages#new'
  get '/users/new', to: 'pages#new'

  post '/cats/create', to: 'pages#create'
  post '/todos/create', to: 'pages#create'
  post '/users/create', to: 'pages#create'
end
