Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  #route to create new user and log in
  post '/login', to: 'sessions#create'
  #route for deleting session once user logout
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'users#show'
end
