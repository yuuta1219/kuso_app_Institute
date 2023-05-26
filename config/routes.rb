Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new'
  get 'users/create'
  root 'chats#index'

  get'prison', to: 'chats#prison'
  get '/path/to/mercy', to: 'chats#mercy'

  resources :chats
  resources :users
end
