Rails.application.routes.draw do
  resources :users
  resources :messages
  resources :conversations, only: [:create]
  
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
