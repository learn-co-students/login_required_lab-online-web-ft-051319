Rails.application.routes.draw do
  get 'secrets/new'

  get 'secrets', to: "secrets#show"

  get 'sessions/new'

  post '/sessions', to: "sessions#create"

  delete '/sessions', to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
