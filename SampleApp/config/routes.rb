Rails.application.routes.draw do
  root "sessions#new"
  resources :sessions
  get 'sessions/new'
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#userinfo'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
