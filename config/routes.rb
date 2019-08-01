Rails.application.routes.draw do

  get '/show', to: 'secrets#show'
  post '/create', to: 'sessions#create'
  get '/new', to: 'sessions#new'
  get '/home', to: 'sessions#home'
  post '/destroy', to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
