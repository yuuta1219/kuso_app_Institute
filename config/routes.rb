Rails.application.routes.draw do
  root 'chats#index'

  get'prison', to: 'chats#prison'
  get '/path/to/mercy', to: 'chats#mercy'

  resources :chats
end
