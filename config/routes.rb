Rails.application.routes.draw do
  root 'chats#index'

  get'prison', to: 'chats#prison'
  get '/path/to/mercy', to: 'chats#mercy'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  get 'logout', to: 'user_sessions#destroy'

  resources :chats
  resources :users
end
